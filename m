X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/03/4
Message-ID: <1103031820280.22221@mjc.redhat.com>
Date: Thu, 3 Mar 2011 18:31:08 +0000 (GMT)
From: Mark J Cox <mjc@...hat.com>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Re: Vendor-sec hosting and future of closed lists
Content-Type: text/plain; charset=utf-8

> Also the usefulness of v-s in general has a bit diminished, especially with
> oss-sec present and more active and more involved upstream projects doing
> their own management. Mark J Cox has some stats for Redhat updates showing this.

We monitor how we first found out about every issue we eventually fix, and 
if we found out before or after the issue was public.

For vendor-sec, during last calendar years

date		# issues in advance		# issues already public
2008		69				32
2009		57				17
2010		29				22

That 29 represents just 4% of the total number of our vulnerabilities 
fixed in 2010.  The median time of embargo for those 29 issues was 15 days 
(average 24)

But I think that trend is what was expected, as upstream projects 
communicate with affected vendors directly, and we use oss-security for 
issues that don't need embargo or co-ordination.

Thanks, Mark
--
Mark J Cox / Red Hat Security Response
