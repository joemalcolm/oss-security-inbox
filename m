X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/31/2
Message-ID: <AANLkTimnAX6T=kZFSME-tw7Vn7TvE5iubLFSdGPHZwpp@mail.gmail.com>
Date: Fri, 31 Dec 2010 00:28:22 -0500
From: Anthon Pang <anthon.pang@...il.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: OpenWebAnalytics < 1.2.4 - remote/local file inclusion vulnerability
Content-Type: text/plain; charset=utf-8

I was searching OSVDB, and I see this one wasn't reported (and
presumably, not assigned a CVE).

Versions of OpenWebAnalytics prior to 1.2.4 are vulnerable to a
remote/local file inclusion attack.

OWA 1.2.4 was released March, 28, 2010

Vendor release announcement:  http://www.openwebanalytics.com/?p=87

Commits:
- http://trac.openwebanalytics.com/changeset/847/trunk/owa_coreAPI.php
- http://trac.openwebanalytics.com/changeset/847/trunk/owa_lib.php
- http://trac.openwebanalytics.com/changeset/847/trunk/owa_requestContainer.php
