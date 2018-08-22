X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/22/1
Message-ID: <DB5PR08MB10623BF00ACDCA92BF685C63AF300@DB5PR08MB1062.eurprd08.prod.outlook.com>
Date: Wed, 22 Aug 2018 07:37:24 +0000
From: Yasser Zamani <yasserzamani@...che.org>
To: Struts User <user@...uts.apache.org>, Struts Dev <dev@...uts.apache.org>, Struts Announcements <announcements@...uts.apache.org>, Apache Announce <announce@...che.org>, "security-reports@...mle.com" <security-reports@...mle.com>, Struts Security <security@...uts.apache.org>, oss-security <oss-security@...ts.openwall.com>, full-disclosure <full-disclosure@...ts.grok.org.uk>, bugtraq <bugtraq@...urityfocus.com>
Subject: [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2018-11776
[PRODUCT]:Apache Struts
[VERSION]:Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16
[PROBLEMTYPE]:Remote Code Execution
[REFERENCES]:https://cwiki.apache.org/confluence/display/WW/S2-057
[DESCRIPTION]:Man Yue Mo from the Semmle Security Research team was
noticed that Apache Struts versions 2.3 to 2.3.34 and 2.5 to 2.5.16
suffer from possible Remote Code Execution when using results with no
namespace and in same time, its upper action(s) have no or wildcard
namespace. Same possibility when using url tag which doesn’t have value
and action set and in same time, its upper action(s) have no or wildcard
namespace.
