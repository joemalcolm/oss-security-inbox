X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/05/1
Message-ID: <28fa9c5e0901042215s29e79e65o84180cf432ce58f1@mail.gmail.com>
Date: Mon, 5 Jan 2009 14:15:56 +0800
From: "Eugene Teo" <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: sctp: memory overflow when FWD-TSN chunk is received with bad stream ID
Content-Type: text/plain; charset=utf-8

This was fixed in upstream kernel recently. Can you please assign a CVE name?

"If FWD-TSN chunk is received with bad stream ID, the sctp will not do
the validity check, this may cause memory overflow when overwrite the
TSN of the stream ID."

Analysis:
https://bugzilla.redhat.com/show_bug.cgi?id=478800#c3

References:
http://patchwork.ozlabs.org/patch/15024/
https://bugzilla.redhat.com/show_bug.cgi?id=478800

Upstream commit:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=9fcb95a105758b81ef0131cd18e2db5149f13e95

Thanks, Eugene
