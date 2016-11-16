X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/16/5
Message-id:  <CY1PR06MB1753D7850C83CBF197C4F308F7BF0@CY1PR06MB1753.namprd06.prod.outlook.com>
Date: Wed, 16 Nov 2016 14:19:42 +0000
From: Andrew W Petro <andrew.petro@...c.edu>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE Request - Webproxy Portlet - cross-user cache over-hits
Content-Type: text/plain; charset=utf-8

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
