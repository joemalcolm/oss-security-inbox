X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/04/3
Message-ID: <4B8F777E.1060705@kernel.sg>
Date: Thu, 04 Mar 2010 17:03:58 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Subject: kernel: hvc_console: Fix race between hvc_close and hvc_remove
Content-Type: text/plain; charset=utf-8

Heads-up. You might want to backport this if your kernel is affected. We 
are not requesting a CVE name for this as it does not affect any of our 
Red Hat supported kernels.

More info here:
http://patchwork.kernel.org/patch/83353/
https://bugzilla.redhat.com/show_bug.cgi?id=568621

Thanks, Eugene
