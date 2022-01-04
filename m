X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/04/1
Message-ID: <be74be76-1448-e1c7-2e72-4c5d7699df38@apache.org>
Date: Tue, 04 Jan 2022 05:55:21 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-38542: Apache James vulnerable to STARTTLS command injection (IMAP and POP3) 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Apache James prior to release 3.6.1 is vulnerable to a buffering attack relying on the use of the STARTTLS command. This can result in Man-in -the-middle command injection attacks, leading potentially to leakage of sensible information.


This issue is being tracked as JAMES-1862

Mitigation:

We recommend to upgrade to Apache James 3.6.1, which fixes this vulnerability.

Furthermore, we recommend, if possible to dis-activate STARTTLS and rely solely on explicit TLS for mail protocols, including SMTP, IMAP and POP3.

Credit:

We thanks Benoit Tellier, Raphael Ouazana for reporting this vulnerability as well as Damian Poddebniak, Fabian Ising, Hanno Böck, and Sebastian Schinzel Münster University of Applied Science for their research and tools regarding STARTTLS security.

