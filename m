X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/31
Message-ID: <69052b21-cfe4-4392-8043-77af89815894@oracle.com>
Date: Tue, 10 Nov 2026 14:31:28 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-115559] imaplib STARTTLS serves plaintext bytes buffered before the handshake as if they came over TLS
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-115559] imaplib STARTTLS serves plaintext 
bytes buffered before the handshake as if they came over TLS
Date: 	Tue, 10 Nov 2026 09:41:54 -0800
From: 	Jelle Zijlstra via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Jelle Zijlstra <jelle.zijlstra@...il.com>

There is a medium severity vulnerability affecting the imaplib library
in CPython.

IMAP4.starttls() wraps the socket in TLS but leaves self._readbuf,
imaplib's own read-ahead buffer, untouched. Any plaintext bytes that
arrived in the same recv() as the tagged OK to STARTTLS are returned
by readline() after the handshake, so the client treats them as the
first responses on the protected channel. A network attacker who
cannot break TLS can append forged lines after the server's OK, let
the handshake complete with the real server and a valid certificate,
and have the client accept the forged CAPABILITY and the forged tagged
completion of the next command. This is the STARTTLS command/response
injection class of CVE-2011-0411.

First affected release: 3.14.0. The regression comes from the IMAP4
IDLE support in gh-55454 (commit 0fef47e), which replaced
self._file.readline() with the custom _readbuf buffering. Before that,
starttls() replaced the file object and so discarded buffered
plaintext; 3.13.13 is not affected.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-115559
* https://github.com/python/cpython/pull/160370

Thanks to @digit50 for reporting this issue.
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


