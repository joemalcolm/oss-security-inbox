X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/06/7
Message-id:  <CY1PR06MB17530CDA04DA7EA56D163D03F7820@CY1PR06MB1753.namprd06.prod.outlook.com>
Date: Tue, 06 Dec 2016 16:02:29 +0000
From: Andrew W Petro <andrew.petro@...c.edu>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: CVE Request - Webproxy Portlet - cross-user cache over-hits
Content-Type: text/plain; charset=utf-8

May I please have a CVE ID for this issue?

________________________________
From: Andrew W Petro
Sent: Wednesday, November 16, 2016 8:19 AM
To: oss-security@...ts.openwall.com
Subject: CVE Request - Webproxy Portlet - cross-user cache over-hits

Hi,

Apereo (previously, Jasig) Webproxy Portlet v2 prior to v2.2.2 is bugged such that it uses too little information in computing cache keys. In some circumstances this results in users seeing cached content intended for and personalized to other users. Apereo tracks this issue as WPP-101 .

Adopters should immediately upgrade to v2.2.2, which simply removes the inappropriate caching behavior while otherwise remaining backwards-compatible.

Please assign a CVE-ID to this issue.

More information:

+ https://apereo.github.io/2016/11/14/web-proxy-overcaching/
+ https://issues.jasig.org/browse/WPP-101
+ https://groups.google.com/a/apereo.org/d/topic/uportal-dev/0XpSvhjmgDo/discussion
+ https://groups.google.com/a/apereo.org/d/topic/uportal-user/uGvdHC97AS0/discussion

Kind regards,

Andrew

