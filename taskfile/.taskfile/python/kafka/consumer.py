import os
from kafka import KafkaConsumer
import logging

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.StreamHandler()  # Output log messages to the console
    ]
)


TOPIC_NAME = "leandro-test"
# Choose an appropriate SASL mechanism, for instance:
SASL_MECHANISM = 'SCRAM-SHA-256'
ENVIRONMENT = os.environ.get("ENVIRONMENT")


consumer = KafkaConsumer(
    TOPIC_NAME,
    auto_offset_reset="earliest",
    bootstrap_servers=f"kafka-proxy-service.aiven:13874",
    client_id = "leandro-test",
    group_id = "my-personal-consumer",
    sasl_mechanism = SASL_MECHANISM,
    sasl_plain_username = os.environ.get("KAFKA_USER"),
    sasl_plain_password = os.environ.get("KAFKA_PASSWORD"),
    security_protocol = "SASL_SSL",
    ssl_cafile = "vault/aiven/kafka/"+ENVIRONMENT+"/ca.pem",
    ssl_check_hostname=False,
    api_version=(1, 10, 1),
)

while True:
    for message in consumer.poll().values():
        print("Got message using SASL: " + message[0].value.decode('utf-8'))