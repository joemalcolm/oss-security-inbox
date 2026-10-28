X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/13
Message-ID: <CAMVt_AxtOxDX_no3MytgfurJrPz--NNsE=sVzj3xAe-XYkw8=Q@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:54:54 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111551: Apache Kafka: Denial of service in Kafka Streams and client deserializers via unbounded memory allocation
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Kafka 0.10.0.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0 through 4.3.1


Description:

Several Kafka deserialization paths read a size or count field from
input data and use it directly to allocate an array, collection, or
byte buffer, with no check against the bytes actually available. A
small crafted input can therefore declare a very large size and force
a multi-gigabyte allocation. The affected paths are, in Kafka Streams,
ProcessorRecordContext (header count), ChangedDeserializer (varint
value length), CombinedKeySchema (foreign-key length, which could also
produce a negative size), ProcessorMetadata (key length), and
AssignmentInfo group-assignment decoding; and, in the clients library,
ListDeserializer (used by ListSerde).


Impact:

An attacker can trigger the oversized allocation and raise an
OutOfMemoryError that crashes the affected consumer or Kafka Streams
thread; the broker and the rest of the cluster are unaffected. The
reachable surface depends on the path: writing a crafted record to a
Streams application's internal changelog or repartition topics, or
committing crafted offset metadata to its consumer group (Streams
internal paths); writing a crafted record to any topic that a consumer
reads with ListSerde (ListDeserializer); or, as a member of a Streams
consumer group, returning crafted assignment data when elected leader
(AssignmentInfo). Because a crafted record remains in its topic, the
error can recur on restart. The record size limit (max.message.bytes)
does not help, because the allocation is driven by a size field rather
than by the input's length.


Mitigation:

Upgrade to Apache Kafka 4.2.2, 4.3.2, or 4.4.0. Where authorization is
enabled, restrict write access to each application's internal topics
and consumer group to its own principal, and restrict who can produce
to topics that are consumed with ListSerde.


Resolution:

>From Apache Kafka 4.2.2, 4.3.2, and 4.4.0: these deserialization paths
validate the declared size against the remaining input before
allocating and reject input that fails the check.

Credit:

Peyton Kennedy <pkennedy@...or.ai> (reporter)
Bartlomiej Dmitruk <bartek@...iga.ai> (reporter)
Mike Read (GitHub: Michael-JRead) (reporter)
Matthias J. Sax <matthias@...fluent.io> (remediation developer)
Lucy Liu <lucliu@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-111551
