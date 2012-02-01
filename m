X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/01/10
Message-ID: <4F29B266.1030206@redhat.com>
Date: Wed, 01 Feb 2012 14:45:10 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Henri Salo <henri@...v.fi>, filippo.cavallarin@...seq.it
Subject: Re: Mibew messenger multiple XSS
Content-Type: text/plain; charset=utf-8

On 01/31/2012 08:22 AM, Henri Salo wrote:
> This seems to need 2012 CVE-identifier.
> 
> Advisory: http://seclists.org/bugtraq/2012/Jan/177
> Codseq own advisory: http://www.codseq.it/advisories/mibew_messenger_multiple_xss
> OSVDB: http://osvdb.org/show/osvdb/78663
> Secunia: http://secunia.com/advisories/47787/
> 
> At the moment http://mibew.org/ does not work for me.
> 
> - Henri Salo

Please use CVE-2012-0829 for this issue.

P.S. for some reason OSVDB lists this as a CSRF issue (?) which is
mentioned in the advisory but not really shown.

-- 
Kurt Seifried Red Hat Security Response Team (SRT)
