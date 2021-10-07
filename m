X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/07/5
Message-ID: <55c86d5f-1d0a-fb45-e58e-e44d9667e5ef@apache.org>
Date: Thu, 07 Oct 2021 15:23:08 +0000
From: Dave Fisher <wave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-28129: DEB packaging for Apache OpenOffice 4.1.8 installed with a non-root userid and groupid 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

While working on Apache OpenOffice 4.1.8 a developer discovered that the DEB package did not install using root, but instead used a userid and groupid of 500. This both caused issues with desktop integration and could allow a crafted attack on files owned by that user or group if they exist.

Users who installed the Apache OpenOffice 4.1.8 DEB packaging should upgrade to the latest version of Apache OpenOffice.

Credit:

Arrigo Marchiori

