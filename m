X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/3
Message-ID: <CAK3hNHZoSuZkESDJoLRSeZa9SCQG=yKyGnGu-CtbhA7XpLRkEw@mail.gmail.com>
Date: Fri, 11 Sep 2026 00:16:36 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82583, CVE-2026-78224, CVE-2026-82578: NextGen Mirth Connect SQL injection and XXE
Content-Type: text/plain; charset=utf-8

CISA has published ICSMA-26-253-01 for three vulnerabilities in NextGen
Mirth Connect, a healthcare integration engine. Mirth Connect 4.7.1 and
earlier are affected; 4.7.2 or later fixes all three.

Mirth Connect was open source through 4.5.2; releases since 4.6 are closed
source. The former public source and release history remain at
https://github.com/nextgenhealthcare/connect, and all testing here was
against 4.5.2.

Findings
--------

1. CVE-2026-82583 - authenticated SQL injection in POST
/api/connectors/jdbc/_getTables. The selectLimit parameter is executed as
arbitrary SQL. Against the bundled Derby database this exports live
database content - administrator password hashes, and channel configuration
containing plaintext connector credentials - to a web path retrievable
without authentication. It can also freeze database-backed operations until
the server is restarted.
CVSS v3.1: 8.3 High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:H)

2. CVE-2026-78224 - unauthenticated XXE in the XSLT Transformer Step. Where
a reachable channel runs inbound XML through an affected XSLT step, a
crafted message exfiltrates a server-local file through an
attacker-controlled callback. A slow external entity also blocks that
channel; the control channel and administrative API stayed available in
testing.
CVSS v3.1: 8.2 High (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:L)

3. CVE-2026-82578 - unauthenticated XXE in the XML Batch Adaptor. Where XML
batch processing is enabled with an XPath-backed split mode, a crafted
batch body exfiltrates a server-local file through an attacker-controlled
callback, including when the listener returns HTTP 500.
CVSS v3.1: 7.5 High (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N)

Proof of concept
----------------

Full end-to-end exploits for all three findings are available at:
https://github.com/abhinavagarwal07/mirth-connect-security-poc

Each harness launches the official 4.5.2 container image, attacks it from a
separate container, and fails unless the claimed disclosure or availability
effect is observed.

Coordination timeline
---------------------

2026-07-10 Reported all three findings to NextGen, set a 45-day disclosure
date of August 24, and offered PoCs and logs privately.
2026-07-12 NextGen acknowledged the report; finding 2 was already fixed in
4.7.1, and findings 1 and 3 were scheduled for fixes.
2026-08-05 NextGen confirmed findings 1 and 3 fixed in 4.7.2 and finding 2
fixed in 4.7.1.
2026-08-14 CISA received the report and opened VU#656351.
2026-08-17 to 2026-08-18 NextGen requested September 24; I extended
disclosure to September 7 for CVE assignment and validation, which NextGen
accepted before moving coordination to CISA.
2026-09-10 CISA published ICSMA-26-253-01; the full PoCs and technical
write-up were published.

References
----------

https://abhinavagarwal07.github.io/posts/nextgen-mirth-connect-sqli-xxe/?src=oss
https://www.cisa.gov/news-events/ics-medical-advisories/icsma-26-253-01

Findings 1 and 3 were reported by Abhinav Agarwal. Finding 2 was
independently discovered by Abhinav Agarwal and first reported to NextGen
by Youngdu.

--
Abhinav Agarwal

