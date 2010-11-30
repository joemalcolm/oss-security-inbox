X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/30/5
Message-ID: <4CF487D2.8040008@redhat.com>
Date: Tue, 30 Nov 2010 13:12:50 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>, Marcus Meissner <meissner@...e.de>
Subject: CVE request: xen: x86-64: don't crash Xen upon direct pv guest access
Content-Type: text/plain; charset=utf-8

handle_gdt_ldt_mapping_fault() is intended to deal with indirect 
accesses (i.e. those caused by descriptor loads) to the GDT/LDT mapping 
area only. While for 32-bit segment limits indeed prevent the function 
being entered for direct accesses (i.e. a #GP fault will be raised even 
before the address translation gets done, on 64-bit even user mode 
accesses would lead to control reaching the BUG_ON() at the beginning of 
that function.

http://lists.xensource.com/archives/html/xen-devel/2010-11/msg01650.html
https://bugzilla.redhat.com/show_bug.cgi?id=658155

Thanks, Eugene
