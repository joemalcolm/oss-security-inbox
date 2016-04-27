X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/27/10
Message-ID: <CAKkdKCBWncYOSs+QeD0xR4qs=Mfyto=136MyxO1Zb_1CQiNvRg@mail.gmail.com>
Date: Wed, 27 Apr 2016 15:36:31 -0400
From: Tony Homer <tony--@...che.org>
To: dev@...dova.apache.org, private@...dova.apache.org,  "JPCERT/CC" <vuls@...ert.or.jp>, security@...che.org, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS
Content-Type: text/plain; charset=utf-8

CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
cordova-ios 3.9.1 and below

Description:
Apache Cordova iOS contains 2 methods to bypass the URL access
restrictions provided by the whitelist. An attacker can use any of the
2 methods to load malicious resources in an app that uses a whitelist
to only load trusted resources.

Upgrade path:
Developers who are concerned about this issue should install version
4.0.0 or higher of the cordova-ios platform.

Credit:
This issue was discovered by Muneaki Nishimura (nishimunea) of Recruit
Technologies Co.,Ltd.
