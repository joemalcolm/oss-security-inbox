X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/03/1
Message-ID: <4A9F3BBF.7090608@kernel.sg>
Date: Thu, 03 Sep 2009 11:45:03 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: tc: uninitialised kernel memory leak
Content-Type: text/plain; charset=utf-8

Three bytes of uninitialised kernel memory are currently leaked to user.

http://patchwork.ozlabs.org/patch/32830/
https://bugzilla.redhat.com/show_bug.cgi?id=520990

Thanks, Eugene
