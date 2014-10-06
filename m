X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/06/16
Message-ID: <543294EF.4070107@enovance.com>
Date: Mon, 06 Oct 2014 09:11:11 -0400
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: oss-security@...ts.openwall.com
CC: cve-assign@...re.org
Subject: Re: Re: CVE request for vulnerability in OpenStack Cinder, Nova and Trove
Content-Type: text/plain; charset=utf-8

On 29/09/14 10:39 PM, cve-assign@...re.org wrote:
> Is this a remaining vulnerability in Cinder 2013.2.4 and
> possibly other products? If so, then we will assign another CVE ID.

The ssh_execute method is indeed prone to password leak if:
- passwords are used on the command line
- execution fail
- calling code catch and log the exception

So far investigations shows that ssh_execute usage does not contain any
passwords but we can't guarantee Cinder and Nova 2013.2.4 releases are
not affected as the vulnerable code is still there so it may be safer to
considered these releases affected.

Apologizes for the confusion,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
