package main

import (
	"github.com/oauth2-proxy/oauth2-proxy/pkg/logger"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"

	"context"
	"crypto/tls"
	"crypto/x509"
	"fmt"
	"io/ioutil"

	"os"
	"time"

	"github.com/segmentio/kafka-go"
	"github.com/segmentio/kafka-go/sasl/scram"
)

func main() {
	zlog := log.Output(zerolog.ConsoleWriter{Out: os.Stdout, TimeFormat: time.RFC822}).With().Caller().Logger()
	newLogger := logger.New(
		&zlog, // IO.writer
		logger.Config{
			SlowThreshold:             time.Second, // Slow SQL threshold
			LogLevel:                  logger.Info, // Log level
			IgnoreRecordNotFoundError: true,        // Ignore ErrRecordNotFound error for logger
			Colorful:                  false,       // Disable color
		},
	)

	topicName := "leandro-test"
	environment := os.Getenv("ENVIRONMENT")
	caFile := "vault/aiven/kafka/" + environment + "/ca.pem"
	user := os.Getenv("KAFKA_USER")
	password := os.Getenv("KAFKA_PASSWORD")

	caCert, err := ioutil.ReadFile(caFile)
	if err != nil {
		log.Fatal().Msgf("Failed to read CA certificate file: %s", err)
	}

	caCertPool := x509.NewCertPool()
	ok := caCertPool.AppendCertsFromPEM(caCert)
	if !ok {
		log.Fatal().Msgf("Failed to parse CA certificate file: %s", err)
	}

	tlsConfig := &tls.Config{
		RootCAs:            caCertPool,
		InsecureSkipVerify: true,
	}
	scram, err := scram.Mechanism(scram.SHA512, user, password)
	if err != nil {
		log.Fatal().Msgf("Failed to create scram mechanism: %s", err)
	}

	dialer := &kafka.Dialer{
		Timeout:       10 * time.Second,
		DualStack:     true,
		TLS:           tlsConfig,
		SASLMechanism: scram,
	}

	producer := kafka.NewWriter(kafka.WriterConfig{
		Brokers:  []string{"kafka-proxy-service.aiven:13874"},
		Topic:    topicName,
		Balancer: &kafka.Hash{},
		Dialer:   dialer,
		Logger:   log.Logger,
	})

	// produce 100 messages
	for i := 0; i < 100; i++ {
		message := fmt.Sprint("Hello from Go using SASL ", i+1, "!")
		err := producer.WriteMessages(context.Background(), kafka.Message{Value: []byte(message)})
		if err != nil {
			log.Fatal().Msgf("Error sending message to Kafka: %s", err)
		}
		log.Printf("Message sent: " + message)
		time.Sleep(time.Second)
	}

	producer.Close()
}
