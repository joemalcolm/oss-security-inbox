X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/25/6
Message-ID: <CAC1dCwW1WG339h=fqMzjG4p0VdeoOe3q5qKM=Q7KUQPuLzS1RA@mail.gmail.com>
Date: Wed, 25 Apr 2018 13:01:30 -0400
From: Tim Allison <tallison@...che.org>
To: announce@...che.org, dev@...a.apache.org, user@...a.apache.org,  oss-security@...ts.openwall.com
Subject: [CVE-2018-1338] DoS (Infinite Loop) Vulnerability in Apache Tika’s BPGParser
Content-Type: text/plain; charset=utf-8

CVE-2018-1338 – DoS (Infinite Loop) Vulnerability in Apache Tika’s BPGParser


Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: <1.18

Description: A carefully crafted (or fuzzed) file can trigger an infinite
loop in Apache Tika's BPGParser.

Mitigation: Turn off the BPGParser or upgrade to Apache Tika >=1.18.

Credit: Tobias Ospelt of modzero AG discovered this issue by fuzzing with
Kelinci (https://github.com/isstac/kelinci).

