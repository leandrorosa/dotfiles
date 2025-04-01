import os
import time
from kafka import KafkaProducer
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

producer = KafkaProducer(
    bootstrap_servers=f"kafka-proxy-service.aiven:13874",
    sasl_mechanism = SASL_MECHANISM,
    sasl_plain_username = os.environ.get("KAFKA_USER"),
    sasl_plain_password = os.environ.get("KAFKA_PASSWORD"),
    security_protocol="SASL_SSL",
    ssl_cafile = "vault/aiven/kafka/"+ENVIRONMENT+"/ca.pem",
    ssl_check_hostname=False,
    api_version=(1, 10, 1),
)


for i in range(100):
    message = f"Hello from Python using SASL {i + 1}!"
    producer.send(TOPIC_NAME, message.encode('utf-8'))
    print(f"Message sent: {message}")
    time.sleep(1)

producer.close()