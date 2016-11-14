X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/14/13
Message-ID: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
Date: Mon, 14 Nov 2016 20:45:51 +0000
From: Hector Marco <hmarco@...rco.org>
To: fulldisclosure@...lists.org, oss security list <oss-security@...ts.openwall.com>, bugtraq@...urityfocus.com
Subject: CVE-2016-4484: - Cryptsetup Initrd root Shell
Content-Type: text/plain; charset=utf-8

Hello All,


Affected package
----------------
Cryptsetup <= 2:1


CVE-ID
------
CVE-2016-4484


Description
-----------
A vulnerability in Cryptsetup, concretely in the scripts that unlock the
system partition when the partition is ciphered using LUKS (Linux
Unified Key Setup).

This vulnerability allows to obtain a root initramfs shell on affected
systems. The vulnerability is very reliable because it doesn't depend on
specific systems or configurations. Attackers can copy, modify or
destroy the hard disc as well as set up the network to exflitrate data.

In cloud environments it is also possible to remotely exploit this
vulnerability without having "physical access."


Full description:
-----------------
http://hmarco.org/bugs/CVE-2016-4484/CVE-2016-4484_cryptsetup_initrd_shell.html


Regards,
Hector Marco & Ismael Ripoll.



Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
