X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/10/6
Message-ID: <54D9F59F.80501@redhat.com>
Date: Tue, 10 Feb 2015 13:12:15 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
CC: cve-assign@...re.org
Subject: Re: CVE-Request -- Linux kernel - panic on nftables rule flush
Content-Type: text/plain; charset=utf-8

On 02/10/2015 07:42 AM, Wade Mealing wrote:
> Gday,
> 
> I'd like to request a CVE for a denial of service attack found here here https://bugzilla.kernel.org/show_bug.cgi?id=91441.
> 
> A remote attacker with the NET_CAP_ADMIN capability could use this to panic (denial of service) a system if they were able to flush a chain with a jump target.
> 
> More info: https://bugzilla.redhat.com/show_bug.cgi?id=1190966

This should “A local attacker with the CAP_NET_ADMIN capability".

-- 
Florian Weimer / Red Hat Product Security
