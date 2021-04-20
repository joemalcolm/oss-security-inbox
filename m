X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/20/2
Message-ID: <729765b4-00fc-bf19-d0b0-0f3923f685b9@enst-bretagne.fr>
Date: Tue, 20 Apr 2021 09:54:56 +0200
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: DNS rebinding vulnerability in npupnp
Content-Type: text/plain; charset=utf-8

The server-part of npupnp, a library used to implement UUPnP clients and
servers, is vulnerable to DNS rebinding attacks.

Impact: A remote web server can exploit this vulnerability to trick the
user browser into triggering actions on the local UPnP services
implemented using this library.

This is fixed in v4.1.4.

https://framagit.org/medoc92/npupnp
https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/libnpupnp.html

A CVE as been requested.
