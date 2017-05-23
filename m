X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/23/17
Message-ID: <A483915E-DBDD-496E-8CD2-313DEA16B033@apache.org>
Date: Tue, 23 May 2017 15:16:46 -0700
From: Madhan Neethiraj <madhan@...che.org>
To: <dev@...as.incubator.apache.org>, <private@...as.incubator.apache.org>, <user@...as.incubator.apache.org>, <security@...che.org>, <oss-security@...ts.openwall.com>, <bugtraq@...urityfocus.com>
Subject: CVE updates: fixes in Apache Atlas 0.8-incubating
Content-Type: text/plain; charset=utf-8

All,

 

Please see below the details of CVE updates for Apache Atlas 0.8-incubating release. My apologies

for the delay in sending this update.

 

Thanks,

Madhan

 

-------------------------------------------------------------------------------------------------------

CVE-2016-8752: Atlas web server allows user to browse webapp directory

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 or 0.7.1 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas users can access the webapp directory contents by pointing to URIs like /js, /img

Fix detail: Atlas was updated to prevent browsing of webapp directory contents

Mitigation: Users should upgrade to Apache Atlas 0.8-incubating or later version

-------------------------------------------------------------------------------------------------------

 


