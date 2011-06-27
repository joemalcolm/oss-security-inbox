X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/27/7
Message-Id: <201106271110.11382.ludwig.nussel@suse.de>
Date: Mon, 27 Jun 2011 11:10:10 +0200
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Cc: Neil F Brown <nfbrown@...e.de>, Jeff Layton <jlayton@...hat.com>
Subject: CVE Request: nfs-utils
Content-Type: text/plain; charset=utf-8

Hi,

An attacker could gain unauthorized access to an nfs exported
filesystem by creating a DNS record that resolves to the attacker's
IP as well as to a trusted IP:
http://marc.info/?l=linux-nfs&m=130875695821953&w=2
https://bugzilla.novell.com/show_bug.cgi?id=701702

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB 16746 (AG Nürnberg) 
