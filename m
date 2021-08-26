X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/26/5
Message-ID: <CAOGQQ2-5630=HhmZbaxWr2bB3vHdzd=FE1hZ2jgCn71hxPZ2WA@mail.gmail.com>
Date: Thu, 26 Aug 2021 11:58:35 -0300
From: Marco Benatto <mbenatto@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libssh: Possible heap-buffer overflow when rekeying (CVE-2021-3634)
Content-Type: text/plain; charset=utf-8

Hello all,

a new vulnerability was made public today for libssh. It involves a
possible heap-buffer overflow when rekeying and had CVE-2021-3634
assigned to it.

Vulnerability summary:

"A malicious attacker can request rekey with key exchange algorithm
with digest of different size, causing libssh reading or writing
behind the buffer limits."

CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:L/ (5.3)

You can find more detailed information regarding this issue on
libssh's security advisory:
https://www.libssh.org/security/advisories/CVE-2021-3634.txt
https://www.libssh.org/2021/08/26/libssh-0-9-6-security-release/

Thanks,

Marco Benatto
Red Hat Product Security
secalert@...hat.com for urgent response

