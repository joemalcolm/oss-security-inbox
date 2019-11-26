X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/26/1
Message-ID: <3ed3a6cd-088e-c164-4b1e-53753d79960b@redhat.com>
Date: Tue, 26 Nov 2019 08:53:20 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: grub2-set-bootflag utility causes grubenv corruption rendering the system un-bootable
Content-Type: text/plain; charset=utf-8

Hello All,

Tavis Ormandy reported a flaw in grub2-set-bootflag utility of grub2.

grub-set-bootflag is a command line to set bootflags in GRUB's stored
environment. This is a downstream utility which is shipped with Red Hat
Enterprise Linux 8 and Fedora. A flaw was found in this application
which would could allow a local attacker (someone having a local account
on the system) to cause grub configuration files to be truncated.
Whenever the machine was rebooted, grub would fail to read the
configuration files and the system would be rendered unbootable.

More details and patches available in:
https://bugzilla.redhat.com/show_bug.cgi?id=1764925



-- 
Huzaifa Sidhpurwala / Red Hat Product Security

