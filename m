X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/24/3
Message-ID:  <MWHPR05MB32146A1E7E26CA44CD71DF95C12E9@MWHPR05MB3214.namprd05.prod.outlook.com>
Date: Mon, 24 Oct 2022 17:11:25 +0000
From: Dan Smith <dasmith@...are.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "dev@...de.apache.org" <dev@...de.apache.org>
Subject: CVE-2022-34870: Apache Geode stored Cross-Site Scripting (XSS) via data injection vulnerability in Pulse web application 
Content-Type: text/plain; charset=utf-8

Apache Geode versions up to 1.15.0 are vulnerable to a Cross-Site Scripting (XSS) via data injection when using Pulse web application to view Region entries.

This issue is being tracked as GEODE-10411
