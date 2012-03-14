X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/14/6
Message-ID: <4F60DD4D.8000704@redhat.com>
Date: Wed, 14 Mar 2012 12:02:53 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Vincent Danen <vdanen@...hat.com>
Subject: Re: CVE request: gnash integer overflow
Content-Type: text/plain; charset=utf-8

On 03/14/2012 11:54 AM, Vincent Danen wrote:
> An integer overflow leading to a heap-based buffer overflow was found
> and fixed in Gnash.  Could a CVE be assigned to this flaw?
> 
> References:
> 
> http://git.savannah.gnu.org/cgit/gnash.git/commit/?id=bb4dc77eecb6ed1b967e3ecbce3dac6c5e6f1527
> 
> http://secunia.com/advisories/47183
> https://bugzilla.redhat.com/show_bug.cgi?id=803443
> 

Please use CVE-2012-1175 for this issue.

-- 
Kurt Seifried Red Hat Security Response Team (SRT)
