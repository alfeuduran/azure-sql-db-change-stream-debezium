FROM debezium/connect:1.6

ENV EH_NAME=labalfeu
ENV EH_CONNECTION_STRING=Endpoint=sb://labalfeu.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=XXXX
ENV ConnectionString = "$ConnectionString"


ENV BOOTSTRAP_SERVERS=${EH_NAME}.servicebus.windows.net:9093
ENV GROUP_ID=1
ENV CONFIG_STORAGE_TOPIC=debezium_config
ENV OFFSET_STORAGE_TOPIC=debezium_offsets
ENV STATUS_STORAGE_TOPIC=debezium_statuses
ENV CONNECT_KEY_CONVERTER_SCHEMAS_ENABLE=false
ENV CONNECT_VALUE_CONVERTER_SCHEMAS_ENABLE=true
ENV CONNECT_REQUEST_TIMEOUT_MS=60000
ENV CONNECT_SECURITY_PROTOCOL=SASL_SSL
ENV CONNECT_SASL_MECHANISM=PLAIN
ENV CONNECT_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username='\$ConnectionString' password='${EH_CONNECTION_STRING}';"
ENV CONNECT_PRODUCER_SECURITY_PROTOCOL=SASL_SSL
ENV CONNECT_PRODUCER_SASL_MECHANISM=PLAIN
ENV CONNECT_PRODUCER_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username='\$ConnectionString' password='${EH_CONNECTION_STRING}';"
ENV CONNECT_CONSUMER_SECURITY_PROTOCOL=SASL_SSL
ENV CONNECT_CONSUMER_SASL_MECHANISM=PLAIN
ENV CONNECT_CONSUMER_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username='\$ConnectionString' password='${EH_CONNECTION_STRING}';"

# ENTRYPOINT echo $CONNECT_SASL_JAAS_CONFIG
EXPOSE 8083
