X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/17
Message-ID: <CAMVt_Aykhtq=deu+LztT6h-toCu0BtO12mNY_0fLVqUy0u61OA@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:57:40 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-112375: Apache Kafka: Unauthorized principal can read arbitrary broker files via IncrementalAlterConfigs
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Kafka 3.2.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0 through 4.3.1

Description:

An authenticated Kafka principal with no authorization grants (not
even ALTER_CONFIGS) can make a broker read a file or an environment
variable from the broker host and return its contents. An
IncrementalAlterConfigs (or AlterConfigs) request targeting a BROKER
resource reaches the broker's configuration validation before any
authorization check is applied to that path. Validation resolves
configuration variables such as ${file:/path:key} or ${env:VAR} using
a ConfigProvider named in the request, and this resolution bypasses
the org.apache.kafka.automatic.config.providers allowlist that was
added as the mitigation for CVE-2024-31141. An arbitrary
ConfigProvider (for example FileConfigProvider or
EnvVarConfigProvider) is therefore instantiated and the referenced
file or environment variable is read, and a type-validation error
returns the resolved content to the caller.


Impact:

On a cluster with an authorizer enabled, an authenticated principal
with no authorization grants can read the contents of files accessible
to the broker process, and the broker's environment variables,
exposing credentials, keystores, or other secrets, defeating the
CVE-2024-31141 allowlist. The read is bounded by the broker process's
file permissions. The brokers and the cluster remain available; the
issue is disclosure of file and environment- variable contents.
Clusters with no authorizer configured are not affected in practice,
because every principal already holds ALTER_CONFIGS there.


Mitigation:

Upgrade to Apache Kafka 4.2.2, 4.3.2, or 4.4.0. As defense in depth,
run brokers under a least-privileged operating-system account so that
sensitive files are not readable by the broker process.


Resolution:

>From Apache Kafka 4.2.2, 4.3.2, and 4.4.0: broker configuration
changes are authorized (ALTER_CONFIGS on the cluster) before the
configuration is validated, and configuration- variable resolution
enforces the config-providers allowlist.

Credit:

Arthur Chan <arthur.chan@...logics.com>, Ada Logics and Anthropic
Research (reporter)
OpenAI Codex Security - Amy Burnett and Khai Tran (reporter)
Mickael Maison <mickael.maison@...il.com> (remediation developer)
Manikumar Reddy <manikumar.reddy@...il.com> (remediation developer)
Chia-Ping Tsai <chia7712@...il.com> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-112375
