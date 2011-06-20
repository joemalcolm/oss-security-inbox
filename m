X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/20/1
Message-ID: <4DFEA775.2070909@redhat.com>
Date: Mon, 20 Jun 2011 09:50:45 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: inet_diag: fix inet_diag_bc_audit()
Content-Type: text/plain; charset=utf-8

[PATCH] inet_diag: fix inet_diag_bc_audit()

A malicious user or buggy application can inject code and trigger an
infinite loop in inet_diag_bc_audit()

Also make sure each instruction is aligned on 4 bytes boundary, to avoid
unaligned accesses.

Reported-by: Dan Rosenberg <drosenberg@...curity.com>

http://thread.gmane.org/gmane.linux.network/197206/focus=197386
http://patchwork.ozlabs.org/patch/100857/
https://bugzilla.redhat.com/show_bug.cgi?id=714536

Thanks, Eugene
