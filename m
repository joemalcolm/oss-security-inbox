X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/12
Message-ID: <CAMVt_Aw2O6c-gZLX8Q8Nj5S8g4FwwWT+VwRoNx8Rmi4-WA4uRg@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:53:12 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111115: Apache Kafka: Broker OutOfMemoryError via tagged-field allocation amplification in flexible protocol request parsing
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Kafka 2.4.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0 through 4.3.1

Description:

Apache Kafka's code-generated readers for flexible protocol versions
read a tagged-field count declared by the sender and retain a
RawTaggedField object for each unknown field. That count was bounded
only by the outer request frame size (socket.request.max.bytes); it
was not checked against the remaining buffer bytes or capped. Because
each entry can be encoded in as little as two bytes (unknown tag 0,
size 0), a modest request can declare tens of millions of tagged
fields and force one object allocation per declared field. Flexible
request headers (header version 2, used by flexible APIs such as
ApiVersions v3) are parsed this way, so the amplification applies to
the request header itself.


Impact:
The flexible request header is parsed on the network thread before
authorization, request dispatch, and request-time quota accounting. A
client can send a request of a few tens of megabytes whose header
declares about 20 million tagged fields, forcing roughly that many
RawTaggedField allocations and exhausting broker heap or inducing
process-wide GC stalls, denying broker service. Because the header is
parsed for pre-authentication APIs such as ApiVersions (v3), the
allocation can occur before authentication; no Kafka resource ACL or
quota is required.

Mitigation:
Upgrade to Apache Kafka 4.2.2, 4.3.2, or 4.4.0. Until then, lowering
socket.request.max.bytes and restricting network access to broker
listeners reduces, but does not remove, exposure.

Resolution:
>From Apache Kafka 4.2.2, 4.3.2, and 4.4.0: generated readers
bounds-check the tagged-field count for flexible-versioned messages,
rejecting a negative count, a count exceeding the remaining buffer
bytes, or a count exceeding a fixed maximum (10,000), before any
per-field allocation.

Credit:

Mufeed VH  <mufeed@...func.com> (finder)
Vivek R <vivek@...func.com> (finder)
Shay Elkin <selkin@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-111115
