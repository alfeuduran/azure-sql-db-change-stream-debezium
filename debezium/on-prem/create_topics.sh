# configs
kafka-topics.sh --bootstrap-server debealfeu.servicebus.windows.net:9093 --command-config /home/alfeu/kafka_2.12-3.0.0/consumer.config --create --topic debezium_configs cleanup.policy=compact --partitions 1 --replication-factor 1

# offsets
kafka-topics.sh --bootstrap-server debealfeu.servicebus.windows.net:9093 --command-config /home/alfeu/kafka_2.12-3.0.0/consumer.config --create --topic debezium_offsets --config cleanup.policy=compact --partitions 25 --replication-factor 1

# status
kafka-topics.sh --bootstrap-server debealfeu.servicebus.windows.net:9093 --command-config /home/alfeu/kafka_2.12-3.0.0/consumer.config --create --topic debezium_statuses --config cleanup.policy=compact --partitions 5 --replication-factor 1

# topic for table # present on kafka connect json file
kafka-topics.sh --bootstrap-server debealfeu.servicebus.windows.net:9093 --command-config /home/alfeu/kafka_2.12-3.0.0/consumer.config --create --topic wwi --config cleanup.policy=compact --partitions 5 --replication-factor 1