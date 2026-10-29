X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/2
Message-ID: <01ce0946-1c6c-47f4-abc8-6f43bed23738@inliniac.net>
Date: Thu, 29 Oct 2026 22:38:47 +0100
From: Victor Julien <lists@...iniac.net>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Suricata before 8.0.8
Content-Type: text/plain; charset=utf-8

Suricata 8.0.8 was released addressing a number of vulnerabilities.

- HIGH: tftp: unbounded transaction retention can cause CPU exhaustion
   (Issue #9085)

- HIGH: sip: quadratic complexity in TCP header processing (Issue #9101)

- HIGH: http2: brotli decoders across many streams can exhaust memory
   (Issue #9104)

- HIGH: doh2: xbits track-tx type confusion can crash Suricata (Issue
   #9133)

- HIGH: http2: header inspection buffer can exhaust memory (Issue #9185)

- HIGH: ftp: retained preliminary replies can exhaust memory (Issue #9211)

- MODERATE: tcp: generic detection bypass using TCP urgent support (Issue
   #8978)

- MODERATE: stream: desynchronization and detection bypass due to invalid
   TCP timestamp handling (Issue #8991)

- MODERATE: tcp: overlap check can miss non-adjacent segment, leading to
   detection bypass (Issue #9099)

- MODERATE: tcp: window scale above 14 treated as 0, leading to detection
   bypass (Issue #9144)

- MODERATE: doh2: incomplete fix for DNS inspection type confusion (Issue
   #9182)

- MODERATE: detect: flowbits prefilter can cause an out-of-bounds write
   (Issue #9210)

No CVE ID's assigned yet. In fact the requests for our previous release 
didn't even come through yet. We're considering applying to become our 
own CNA.

I've left out our LOW severity issues, please let me know if it would be 
useful to add those as well.

-- 
----------------------------------------------
Victor Julien
https://www.inliniac.net/
PGP: https://www.inliniac.net/victorjulien.asc
----------------------------------------------


