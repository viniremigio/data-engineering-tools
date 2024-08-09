# Grafana

This project comprehends:

- Prometheus: server that process collected events
- Node-exporter: in this case, the agent collect metrics from the local machine
- Grafana: UI for monitoring
- Alloy: Implements OpenTelemetry to collect metrics, traces, and logs, forwarding them to other tools
- Tempo: Process and renders Tracing
- Loki: Process Logs
- Promtail: Collect logs for Loki

If this docker-compose, there is no need to setup Prometheus as a new data source

Based on [Observability with Grafana course](https://www.udemy.com/course/grafana-graphite-and-statsd-visualize-metrics)