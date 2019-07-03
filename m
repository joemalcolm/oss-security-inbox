X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/03/1
Message-ID: <nycvar.YSQ.7.76.1907031216340.17373@xnncv>
Date: Wed, 3 Jul 2019 12:23:21 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2019-10183 virt-install: unattended option leaks password via command line argument
Content-Type: text/plain; charset=utf-8

   Hello,

Virt-install(1) utility used to provision new virtual machines has introduced 
an option '--unattended' to create VMs without user interaction. This option 
accepts guest VM passwords as command line arguments. Thus leaking them to 
others users on the system via process listing.

   -> https://virt-manager.org/download/

It was introduced recently in the virt-manager v2.2.0 release.

Upstream patch:
---------------
   -> https://www.redhat.com/archives/virt-tools-list/2019-July/msg00014.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
