X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/06/10
Message-ID: <20141006090834.GD24136@zoho.com>
Date: Mon, 6 Oct 2014 09:08:34 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request(s): Getmail 4
Content-Type: text/plain; charset=utf-8

Hello.

Getmail 4.0.0 introduced support for secure mail retrieval
(IMAP4-over-SSL and POP3-over-SSL). However, it lacked certificate
verification which rendered SSL/TLS transport entirely vulnerable to
MITM attacks. [*]

Getmail 4.44.0 added IMAP4-over-SSL certificate verification against
trusted root stores and/or SHA-256 digests. However, it lacked
certificate hostname validation such that adversaries in possesion of
arbitrary certificates signed by trusted root certificates could still
level MITM attacks. POP3-over-SSL remained vulnerable to MITM attacks.
[*]

Getmail 4.45.0 added IMAP4-over-SSL certificate hostname validation.
POP3-over-SSL remained vulnerable to MITM attacks. [*]

Getmail 4.46.0 added POP3-over-SSL certificate verification against
trusted root stores and/or SHA-256 digests as well as certificate
hostname validation. [*]

Please allocate CVE ID(s) for the above issues, as needed.

Thanks.

--mancha

[*] http://pyropus.ca/software/getmail/CHANGELOG

Content of type "application/pgp-signature" skipped
