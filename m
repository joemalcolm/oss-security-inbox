X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/31/2
Message-ID: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>
Date: Fri, 31 Mar 2017 14:03:09 +0200
From: Andrey Konovalov <andreyknvl@...gle.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring
Content-Type: text/plain; charset=utf-8

Hi,

CVE-2017-7308 [1] was assigned to the following issue:

The packet_set_ring function in net/packet/af_packet.c in the Linux
kernel through 4.10.6 does not properly validate certain block-size
data, which allows local users to cause a denial of service (overflow)
or possibly have unspecified other impact via crafted system calls.

The fix is sent upstream [2].

[1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308

[2] https://patchwork.ozlabs.org/patch/744811/
