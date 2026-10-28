X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/10
Message-ID: <CAMVt_Aycy3KsqVW2MkYmoZEp4kXO72cUfNE4EfhP+0mcbvDmXw@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:51:19 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111108: Apache Kafka: Broker OutOfMemoryError via array allocation amplification in code-generated protocol readers
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Kafka 3.3.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0 through 4.3.1

Description:

Apache Kafka's code-generated protocol readers pre-size an array's
collection from the element count declared by the sender. That count
is checked only against the bytes remaining in the request buffer,
which assumes about one byte per element; because most elements need
several bytes, a request can declare far more elements than the buffer
holds and still pass. For a keyed array the reader then allocates an
ImplicitLinkedHashCollection of capacity (2 * count +1), so a request
of a few tens of megabytes can force a heap allocation several times
larger before any element is read. The pattern is emitted into every
generated reader, so it affects all Kafka API types with an array
field.


Impact:

Request parsing happens before any authorization check. On a listener
that does not require authentication (for example PLAINTEXT), an
unauthenticated attacker can send a few concurrent requests that each
declare a very large=

array length and allocate many times their wire size in broker heap,
crashing the broker with an OutOfMemoryError. The reporter
demonstrated three concurrent ~90 MB ProduceRequest (v3) connections
exhausting a 1 GB heap (~8x amplification). On listeners that require
authentication, the attacker needs valid credentials but no specific
ACL, since parsing precedes authorization..


Mitigation:

Upgrade to Apache Kafka 4.2.2, 4.3.2, or 4.4.0. Until then, lowering
socket.request.max.bytes and restricting network access to broker
listeners reduces, but does not remove, exposure.


Resolution:

>From Apache Kafka 4.2.2, 4.3.2, and 4.4.0: generated readers cap the
initial array pre-allocation at
MessageUtil.MAX_PREALLOCATED_ARRAY_CAPACITY (1000) and grow it on
demand, and reject a declared array length above
MessageUtil.MAX_ARRAY_LENGTH (1,000,000).

Credit:

Mike Read (GitHub: Michael-JRead) (reporter)
Izzy Harker <iharker@...fluent.io> (remediation developer)
Alyssa Huang <ahuang@...fluent.io> (remediation developer)
Truc Nguyen  <trnguyen@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-111108
