X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/06/10
Message-ID: <CAA8xKjW3i-jA6c-UtkvECzmYDMs9NL=i62poTgz6cfi_Z=xgPQ@mail.gmail.com>
Date: Tue, 6 Oct 2020 14:38:23 +0200
From: Mauro Matteo Cascella <mcascell@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Frediano Ziglio <fziglio@...hat.com>
Subject: CVE-2020-14355 spice: multiple buffer overflow vulnerabilities in QUIC decoding code
Content-Type: text/plain; charset=utf-8

Hello,

Multiple buffer overflow vulnerabilities were found in the QUIC image
decoding process of the SPICE remote display system. More
specifically, these flaws reside in the spice-common shared code
between the client and server of SPICE. In other words, both the
client (spice-gtk) and server are affected by these flaws. A malicious
client or server could send specially crafted messages which could
result in a process crash or potential code execution scenario.

CVE-2020-14355 has been assigned for this flaw by Red Hat Inc.

Upstream commits:
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/762e0aba
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/404d7478
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/ef1b6ff7
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/b24fe6b6

Credit: Frediano Ziglio (Red Hat)

Thank you,

-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

