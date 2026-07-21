X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/1
Message-ID: <b7eiu6dsm5t7qbhcabv742vxhr5tgjkxa6sb2cljs5yzui6ly6@zdb3mj3ldyxj>
Date: Tue, 21 Jul 2026 16:22:14 +0200
From: Eduardo Barretto <eduardo.barretto@...onical.com>
To: oss-security@...ts.openwall.com
Cc: qsa@...lys.com
Subject: LPE in snapd and other vulnerabilities
Content-Type: text/plain; charset=utf-8

Hi everyone,

Qualys discovered another Local Privilege Escalation (LPE) in snapd snap-confine,
via Capabilities misconfiguration. Qualys will send an email on top of this one
with their report, but in the meantime, for this vulnerability we assigned
CVE-2026-8933, with CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H 7.8 HIGH

The upstream version of snapd containing the fix will be 2.76.1.

Also in this version we are fixing/disclosing other two vulnerabilities
- CVE-2024-5300
  AppArmor Base Profile Misconfiguration in snapd Permits Confined Snaps
  Unauthorized Access to Hashed Passwords via systemd-userdbd
  CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N 5.6 MEDIUM
  Credits: James Henstridge

- CVE-2026-15226
  snapd snap-confine Sandbox Confinement Bypass via Omission of setuid
  Restriction in Seccomp Templates
  CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:N 8.4 HIGH
  Credits: Zygmunt Krynicki

In Ubuntu those fixes will land in:

Xenial (16.04): snapd - 2.61.4ubuntu0.16.04.1+esm4
Bionic (18.04): snapd - 2.61.4ubuntu0.18.04.1+esm4
Focal (20.04): snapd - 2.67.1+20.04ubuntu1~esm3
Jammy (22.04): snapd - 2.76+ubuntu22.04.1
Noble (24.04): snapd - 2.76+ubuntu24.04.1
Resolute (26.04): snapd - 2.76+ubuntu26.04.3

And we will soon be publishing an advisory:
https://ubuntu.com/security/notices/USN-8579-1

We want to thanks again Qualys, Zygmunt and James for their work and patience!

Thanks,
Eduardo

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
