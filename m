X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/11
Message-ID: <CAMVt_AxpGumKGrj3cSCRHKXGMmRCjSp0Vv_K3_t9fr5-fny2ww@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:50:28 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111073: Apache Kafka: PushTelemetry (KIP-714) metrics payloads are decompressed without a size limit, allowing a broker out-of-memory denial of service
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Kafka 3.7.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0

Description:

The broker-side PushTelemetry API (KIP-714) validates only the
compressed size of a client's metrics payload against
telemetry.max.bytes (default 1 MB) before decompressing it.
ClientTelemetryUtils.decompress() then decompresses the payload with
no limit on the decompressed output size, growing a heap buffer until
the compressed input is exhausted. A small, highly compressible
payload (for example gzip-compressed zeros) can therefore expand to
hundreds of megabytes of broker heap.


Impact:

An authenticated client can send a PushTelemetry request with a small
compressed payload that decompresses to a very large size, consuming
broker heap out of proportion to the request size. Repeated or
concurrent requests can exhaust the broker heap and cause an
OutOfMemoryError, degrading or crashing the broker; a client that
targets multiple brokers can affect cluster availability.
PushTelemetry is available to any authenticated client and is not
gated by an ACL.


Mitigation:

Upgrade to Apache Kafka 4.2.2, 4.3.1, or 4.4.0. On affected versions
there is no configuration that fully prevents the amplification,
because telemetry.max.bytes bounds only the compressed size; lowering
telemetry.max.bytes reduces the worst-case decompressed size
proportionally and is a partial mitigation.


Resolution:

>From Apache Kafka 4.2.2, 4.3.1, and 4.4.0:
ClientTelemetryUtils.decompress() enforces a maximum decompressed size
equal to telemetry.max.bytes (default 1 MB). Decompression reads in
bounded chunks and aborts with a TelemetryTooLargeException once the
decompressed total exceeds the limit, so an over-large or highly
compressible payload is rejected instead of being fully expanded in
heap. The decompressed size is therefore bounded by default.

Credit:

Dawit Jeong <dev.d4v1d@...il.com> (reporter)
Apoorv Mittal <apoorvmittal10@...il.com> (remediation developer)
Andrew Schofield <aschofield@...fluent.io> (remediation reviewer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-111073
