X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/02/2
Message-Id: <201002021059.13521.thomas@suse.de>
Date: Tue, 2 Feb 2010 10:59:13 +0100
From: Thomas Biege <thomas@...e.de>
To: oss-security@...ts.openwall.com
Subject: KVM possible security issues fixed
Content-Type: text/plain; charset=utf-8

Hello,
the following was listed in the changelog of kvm
- slirp: fix use-after-free
- usb-linux.c: fix buffer overflow
- fix potential stack corruption saving MSRs (Eduardo Habkost)

Looks like these are security issues. Does someone know more about?
Any details about exploitability etc.

Thanks
Thomas

-- 
 Thomas Biege <thomas@...e.de>, SUSE LINUX, Security Support & Auditing
 SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
--
  Wer aufhoert besser werden zu wollen, hoert auf gut zu sein.
                            -- Marie von Ebner-Eschenbach
