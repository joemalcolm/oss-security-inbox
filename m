X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/14
Message-ID: <CAMVt_AzcfjnKJrqGKG0cTaDLxiXZ3em9E2SN4s-YCiYFaSBH4A@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:53:49 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111496: Apache Kafka: Kafka Streams StreamThread hang from integer overflow in stream-time punctuation
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Kafka 1.1.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0 through 4.3.1

Description:

Kafka Streams derives its stream-time clock from record timestamps.
PunctuationSchedule.next() computed the next punctuation time as
timestamp + (intervalsMissed + 1) * interval with no overflow check. A
record with a timestamp at or near Long.MAX_VALUE advances stream time
to that value, so the next stream-time punctuation overflows to a
negative time. PunctuationQueue then re-queues that time and loops on
it indefinitely while holding a lock, stalling the StreamThread.


Impact:

A single record is enough. The affected StreamThread stops processing,
and because the record stays in the topic the hang returns on restart;
an application whose partitions are all affected becomes unresponsive.
Only the Streams application is affected, not the brokers or the
cluster. Triggering it needs write access to a source topic whose
topology uses stream-time punctuation, and a broker that stores the
record: brokers from Apache Kafka 4.0.0 reject such a timestamp by
default (log.message.timestamp.after.max.ms, one hour), so it is
reachable only on older brokers or where that bound has been relaxed.


Mitigation:

Upgrade Kafka Streams to 4.2.2, 4.3.2, or 4.4.0. As defense in depth,
keep log.message.timestamp.after.max.ms bounded on source topics and
restrict write access to them.


Resolution:

>From Apache Kafka 4.2.2, 4.3.2, and 4.4.0: the next punctuation time
is computed with overflow-checked arithmetic (clamped to
Long.MAX_VALUE), and a rescheduled punctuation is re-queued only when
its time moves forward.

Credit:

Mike Read (GitHub: Michael-JRead) (reporter)
Matthias J. Sax <matthias@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-111496
