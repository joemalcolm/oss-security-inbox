X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/11/3
Message-ID: <520790A5.4040608@redhat.com>
Date: Sun, 11 Aug 2013 15:24:53 +0200
From: Florian Weimer <fweimer@...hat.com>
To: Jan Lieskovsky <jlieskov@...hat.com>
CC: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- glibc: Buffer overwrite when using readdir_r on file systems returning file names longer than NAME_MAX characters
Content-Type: text/plain; charset=utf-8

On 08/11/2013 03:05 PM, Jan Lieskovsky wrote:

> This issue was found by Florian Weimer of Red Hat Product Security Team.

I think this is actually folklore by now, it's been floating around for 
a couple of years.

-- 
Florian Weimer / Red Hat Product Security Team
