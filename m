X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/16/3
Message-ID: <3a481763-0461-fca6-72d3-15c3bbe1120f@redhat.com>
Date: Thu, 15 Jun 2017 21:35:29 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Do I have to inform someone about CVE?
Content-Type: text/plain; charset=utf-8

When you have a CVE the simple rule is:

If you got it publicly the CNA (CVE Numbering Authority) you got it from
should have published it to their upstream (e.g. MITRE).

If you got it embargoed and it's now public you should tell the CNA you
got it from that it is public, and ideally also tell MITRE
(https://cveform.mitre.org/).

Rule of thumb is: when it goes public, tell the issuer, and/or MITRE so
they can publish it.


On 2017-06-15 6:02 PM, Qhdwns123 wrote:
> Hi.
>
> I received a CVE.
>
> Do I have to inform someone about CVE?
>
> Thanks.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@...hat.com

