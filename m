X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/8
Message-ID: <970d2d31-fd5a-b089-03b9-d6685722ab14@apache.org>
Date: Thu, 18 Nov 2021 23:07:46 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41532: Apache Ozone: Unauthenticated access to Ozone Recon HTTP endpoints 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Recon HTTP endpoints provide access to OM, SCM and Datanode metadata. Due to a bug, any unauthenticated user can access the data from these endpoints.

This issue is being tracked as HDDS-5691

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Ethan Rose for reporting this issue.

