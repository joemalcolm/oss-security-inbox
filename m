X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/20/1
Message-ID: <a1429adf-2639-f01f-1978-ca7d0f733df7@apache.org>
Date: Mon, 19 Sep 2022 23:13:25 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28220: STARTTLS command injection in Apache JAMES 
Content-Type: text/plain; charset=utf-8

Severity: This can result in Man-in -the-middle command injection attacks, leading potentially to leakage of sensible information like user credentials. Exploit in IMAP requires a local account but SMTP exploit does not. Data integrity could be compromised in POP3.

Description:

Apache James prior to release 3.6.3 and 3.7.1 is vulnerable to a buffering attack relying on the use of the STARTTLS command. 

Fix of CVE-2021-38542, which solved similar problem fron Apache James 3.6.1, is subject to a parser differential and do not take into account concurrent requests.



This issue is being tracked as JAMES-1862

Mitigation:

Upgrade to Apache James 3.7.1 or Apache James 3.6.3.

Credit:

Apache James PMC would like to thanks Benoit TELLIER for this report, and Fabian Ising for his support.

References:

https://james.apache.org/james/update/2022/08/26/james-3.7.1.html

