X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/26/11
Message-ID: <CAO5O-EJzHLMaKCHSnqzGeNMY_t8w9V=OwMF-a9QNcrAVqVo9wg@mail.gmail.com>
Date: Mon, 26 Jun 2017 23:31:44 +0200
From: Guido Vranken <guidovranken@...il.com>
To: oss-security@...ts.openwall.com
Subject: OpenVPN fuzzers released
Content-Type: text/plain; charset=utf-8

I've published the fuzzers that I used to find the recent set of
vulnerabilities in OpenVPN:
https://github.com/guidovranken/openvpn/tree/fuzzing

Not all of OpenVPN's code is covered by this set of fuzzers. It is
entirely conceivable that more vulnerabilities exist, but more fuzzers
have to be written in order to find them. The helper functions and IO
abstractions I've written should simplify this effort. So here is your
opportunity to find more juicy stuff.

Guido
