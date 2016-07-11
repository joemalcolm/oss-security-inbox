X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/11/2
Message-ID: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
Date: Mon, 11 Jul 2016 12:11:43 +0200
From: Cedric Buissart <cbuissar@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS
Content-Type: text/plain; charset=utf-8

Hi,

This is to disclose the following CVE:

CVE-2016-5011: util-linux: Extended partition loop in MBR partition table
leads to DoS

Description :
The util-linux libblkid is vulnerable to a Denial of Service attack during
MSDOS partition table parsing, in the extended partition boot record (EBR).
If the next EBR starts at relative offset 0, parse_dos_extended() will loop
until running out of memory. An attacker could install a specially crafted
MSDOS partition table in a storage device and trick a user into using it.
This library is used, among others, by systemd-udevd daemon.

Upstream patch:
libblkid: ignore extended partition at zero offset
https://git.kernel.org/cgit/utils/util-linux/util-linux.git/commit/?id=7164a1c3

Impact: Low
CVSS3 scoring : AV:P/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H/E:H/RL:U/RC:C

Reported by: Christian Moch & Michael Gruhn

Best Regards,

-- 
Cedric Buissart,
Product Security

