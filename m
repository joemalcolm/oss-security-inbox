X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/20/14
Message-ID: <m1ipguakg2.fsf@fess.ebiederm.org>
Date: Fri, 20 Apr 2012 01:14:53 -0700
From: ebiederm@...ssion.com (Eric W. Biederman)
To: Pavel Emelyanov <xemul@...allels.com>
Cc: Eugene Teo <eugeneteo@...nel.sg>,  Marcus Meissner <meissner@...e.de>,  OSS Security List <oss-security@...ts.openwall.com>,  "security\@kernel.org" <security@...nel.org>,  Sukadev Bhattiprolu <sukadev@...ibm.com>,  Serge Hallyn <serge.hallyn@...onical.com>
Subject: Re: CVE request: pid namespace leak in kernel 3.0 and 3.1
Content-Type: text/plain; charset=utf-8

Pavel Emelyanov <xemul@...allels.com> writes:

> I'm talking about the call to pid_ns_prepare_proc which does kern_mount
> thus bringing the proc sb in memory and pinning the init's pid on it.

My apologies I hadn't realized what you were thinking about.

Eric
