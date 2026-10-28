X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/16
Message-ID: <CAMVt_Ax9wf36vhOcsV88tuxDEtPDezQzAZxJJtHgHmbMec=9Kg@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:56:38 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116593: Apache Kafka: Kafka Connect configuration provider values exposed via validation REST API endpoint
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Kafka 2.4.0 before 4.2.2
- Apache Kafka 4.3.0 before 4.3.2

Description:

Apache Kafka Connect has the
/connector-plugins/{connector-type}/config/validate endpoint on its
REST API to validate connector configurations.
Apache Kafka Connect also support Configuration Providers which enable
to hide the values of sensitive configuration and only resolve them at
runtime.

An attacker with access to the validate endpoint can use it to resolve
and return plaintext values via any of the configuration providers
installed on a Connect worker.

Users are recommended to upgrade to version 4.2.2, 4.3.2, 4.4.0 or
above, which fix this issue.

Credit:

Hyunwoo Kim <imv4bel@...il.com> (reporter)
Sudhanshu Chauhan <sudhanshu@...huntlabs.com>, RedHunt Labs (reporter)
Bartłomiej Dmitruk <bartek@...iga.ai>, Striga (reporter)
Andrew MacPherson <andrew@...rewmohawk.com> (reporter)
Mickael Maison <mickael.maison@...il.com> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-116593
