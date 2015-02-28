X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/28/4
Message-ID: <CAM-f9EMfmbRoqY9cg2unwKJ5A6YKuFoaf+=POxiLo=XujGUf6Q@mail.gmail.com>
Date: Sat, 28 Feb 2015 12:38:01 +0000
From: Patrick Coleman <blinken@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: PuTTY fails to clear private key information from memory
Content-Type: text/plain; charset=utf-8

Hi,

PuTTY suite versions 0.51 to 0.63 fail to clear SSH-2 private key
information from memory when loading and saving key files to disk,
leading to potential disclosure. The issue affects keys stored on disk
in encrypted and unencrypted form, and is present in PuTTY, Plink,
PSCP, PSFTP, Pageant and PuTTYgen.

The maintainers have provided details at [1], and have promptly
patched the vulnerability in version 0.64 [2].

Can a CVE please be assigned for this issue?

-Patrick

1. http://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/private-key-not-wiped-2.html
2. http://www.chiark.greenend.org.uk/~sgtatham/putty/changes.html
