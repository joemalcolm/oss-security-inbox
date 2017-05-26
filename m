X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/26/1
Message-ID: <CACRbFyjtT7QQGHUzTRdbJoySbJb7tt4BDk5-r-VRn0GB0Kgvag@mail.gmail.com>
Date: Fri, 26 May 2017 14:26:44 -0400
From: larry mccay <lmccay@...che.org>
To: user@...x.apache.org, dev@...x.apache.org, security <security@...che.org>,  "<security@...oop.apache.org>" <security@...oop.apache.org>, announce@...che.org, private@...x.apache.org
Cc: oss-security@...ts.openwall.com, bugtraq@...urityfocus.com
Subject: [ANNOUNCE] CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS
Content-Type: text/plain; charset=utf-8

CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
    All versions of Apache Knox prior to 0.12.0

An authenticated user may use a specially crafted URL to impersonate another
user while accessing WebHDFS through Apache Knox. This may result in
escalated
privileges and unauthorized data access. While this activity is audit logged
and can be easily associated with the authenticated user, this is still a
serious security issue.

Mitigation:
  All users are recommended to upgrade to Apache Knox 0.12.0,
  where validation, scrubbing and logging of such attempts has been added.

The Apache Knox 0.12.0 release can be downloaded from:
Source: http://www.apache.org/dyn/closer.cgi/knox/0.12.0/knox-0.12.0-src.zip
Binary: http://www.apache.org/dyn/closer.cgi/knox/0.12.0/knox-0.12.0.zip

