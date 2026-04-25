X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/25/2
Message-ID: <207ffd7a-8f43-dc1b-e2b5-9b607db021d9@apache.org>
Date: Sat, 25 Apr 2026 16:59:13 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40557: Apache Storm Prometheus Reporter: Disabling TLS verification for Prometheus Reporter also disables it for all other connections 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Prometheus Reporter (org.apache.storm:storm-metrics-prometheus) 2.6.3 before 2.8.7

Description:

Improper Certificate Validation via Global SSL Context Downgrade in Apache Storm Prometheus Reporter


Versions Affected: from 2.6.3 to 2.8.6


Description: 

In production deployments where an administrator enables storm.daemon.metrics.reporter.plugin.prometheus.skip_tls_validation (by default it is disabled) intending to affect only the Prometheus reporter, the undocumented global side effect creates an attack surface across every TLS-protected communication channel in the Storm daemon.


The PrometheusPreparableReporter class implements an INSECURE_TRUST_MANAGER that accepts all SSL certificates without validation, with empty checkClientTrusted and checkServerTrusted methods. Most critically, when the storm.daemon.metrics.reporter.plugin.prometheus.skip_tls_validation configuration option is enabled (default = disabled) for HTTPS Prometheus PushGateway connections, the INSECURE_CONNECTION_FACTORY calls SSLContext.setDefault(sslContext), which globally replaces the JVM's default SSL context rather than applying the insecure context only to the Prometheus connection. This payload flows through storm.yaml configuration → PrometheusPreparableReporter.prepare() → INSECURE_CONNECTION_FACTORY → SSLContext.setDefault(), resulting in a JVM-wide TLS security downgrade. All subsequent HTTPS connections in the process - including ZooKeeper, Thrift, Netty, and UI connections - silently trust all certificates, including self-signed, expired, and attacker-generated ones, enabling man-in-the-middle interception of cluster state, topology submissions, tuple data, and administrative credentials.




Mitigation: 2.x users should upgrade to 2.8.7 if the Prometheus Metrics Reporter is used. Prometheus Metrics Reporter Users who cannot upgrade immediately should remove the storm.daemon.metrics.reporter.plugin.prometheus.skip_tls_validation: true setting from their storm.yaml configuration and instead configure a proper truststore containing the PushGateway's certificate.

Credit:

K (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40557

