# AUTHOR: Matt Schmoyer
# DESCRIPTION: Metabase container with ClickHouse driver
# SOURCE: https://github.com/mschmo/metabase-clickhouse

FROM metabase/metabase:v0.43.0

ARG CLICKHOUSE_DRIVER_VERSION=0.8.1

ADD https://github.com/enqueue/metabase-clickhouse-driver/releases/download/${CLICKHOUSE_DRIVER_VERSION}/clickhouse.metabase-driver.jar /plugins/
RUN chmod 744 /plugins/clickhouse.metabase-driver.jar
