X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/13/1
Message-ID: <4DF5A0A2.2030507@redhat.com>
Date: Mon, 13 Jun 2011 13:31:14 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: hfs_find_init() sb->ext_tree NULL pointer dereference
Content-Type: text/plain; charset=utf-8

Reported by Clement LECIGNE. The issue is described here:
https://lkml.org/lkml/2011/6/8/154. No patch atm, but the impact is low.

The relevant bug for this is:
https://bugzilla.redhat.com/show_bug.cgi?id=712774

Thanks, Eugene
