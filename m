X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/17/2
Message-ID: <CAM-f9EOVTwjFgMF84VCG2KVBQUfEOtv3wZbGFgRmZhBD1=5BTw@mail.gmail.com>
Date: Tue, 17 Feb 2015 10:15:57 +0000
From: Patrick Coleman <blinken@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: vulnerabilities in libcsoap
Content-Type: text/plain; charset=utf-8

Hi,

A number of vulnerabilities exist in nanohttp, a lightweight webserver library
included with libcsoap (http://csoap.sourceforge.net). Patches are
provided below against
1.1.0-17.2.

* Remote buffer overflow
If the server is misconfigured, a remote user can trigger a buffer
overflow by requesting a resource of a certain length.
http://patrick.ld.net.au/libcsoap/nanohttp-buffer-1.patch

* Remote null pointer dereference
A remote user can cause a null pointer dereference by sending a
malformed Authorization: header.
http://patrick.ld.net.au/libcsoap/nanohttp-nullp-1.patch

Please let me know if you req

Cheers,

Patrick
