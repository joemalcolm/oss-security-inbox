X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/08/1
Message-ID: <CAEWfVJmF52fMY8wYZ-35ic7=T1dnmSArDZuC3oydUJBqSugsGA@mail.gmail.com>
Date: Mon, 8 Jan 2018 15:04:28 +0100
From: Bertrand Delacretaz <bdelacretaz@...che.org>
To: dev <dev@...ng.apache.org>
Cc: users <users@...ng.apache.org>,  "security@...ng.apache.org" <security@...ng.apache.org>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2012-3353: Apache Sling Content Loading Vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Sling  JCR ContentLoader 2.1.4

Description:
The Apache Sling JCR ContentLoader 2.1.4 XmlReader
used in the Sling JCR content loader module makes it
possible to import arbitrary files in the content repository,
including local files, causing potential information leaks.

Mitigation:
Users should upgrade to version 2.1.6 of the JCR ContentLoader
