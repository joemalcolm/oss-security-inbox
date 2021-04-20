X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/20/4
Message-ID: <bfe1a38e-f10a-cc67-d0f2-05089977383c@enst-bretagne.fr>
Date: Tue, 20 Apr 2021 22:35:17 +0200
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: DNS rebinding vulnerability in pupnp
Content-Type: text/plain; charset=utf-8

The server-part of pupnp, a library used to implement UPnP clients and
servers, is vulnerable to DNS rebinding attacks.

Impact: A remote web server can exploit this vulnerability to trick the
user browser into triggering actions on the local UPnP services
implemented using this library or exfiltrate resources exposed using the
embedded web server.

This is fixed in v1.14.6

This is CVE-2021-29462.

References:

https://github.com/pupnp/pupnp/security/advisories/GHSA-6hqq-w3jq-9fhg
https://github.com/pupnp/pupnp
