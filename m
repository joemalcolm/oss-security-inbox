X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/11/11
Message-ID: <1323460769.162381286827597847.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 11 Oct 2010 16:06:37 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: TYPO3-SA-2010-020
Content-Type: text/plain; charset=utf-8


----- "Moritz Muehlenhoff" <jmm@...ian.org> wrote:

> Hi,
> Please assign CVE IDs for the following issues:
> http://typo3.org/teams/security/security-bulletins/typo3-sa-2010-020/
> 

I'm going to give this four. We can split the XSS and remote file
disclosure later if it's found they affect different versions.

CVE-2010-3714 typo3-sa-2010-20 Multiple Remote File Disclosure
CVE-2010-3715 typo3-sa-2010-20 Multiple XSS
CVE-2010-3716 typo3-sa-2010-20 Privilege Escalation
CVE-2010-3717 typo3-sa-2010-20 DoS

Thanks.

-- 
    JB
