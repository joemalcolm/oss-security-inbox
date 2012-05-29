X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/29/11
Message-ID: <1338319222.16666.294.camel@new-desktop>
Date: Tue, 29 May 2012 21:20:22 +0200
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: XXE vulnerability in Restlet
Content-Type: text/plain; charset=utf-8


> Please use CVE-2012-2656 for this issue.

Thanks !

> Also is there a specific source file/etc that contains the fix?

The changelog refers to this change:
https://github.com/restlet/restlet-framework-java/commit/115c17c1f9aab4bd431ae44a36741b86be4c5f53

However, this one (safer default values for options like
"secureProcessing" and "expandingEntityRefs") seems much more relevant:
https://github.com/restlet/restlet-framework-java/commit/ec692bd3b5e386261413210191b179fec22b6cd2

By the way, credits are wrong (I'm the original reporter) and should be
fixed soon.

Nicolas

