X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/20/15
Message-ID: <CAKYehMa_Fdx---OGfL6DK0Jdm1O67Y6VG0jfN1ukPf6zoDLRgg@mail.gmail.com>
Date: Fri, 21 Apr 2023 00:09:07 +0800
From: Huajie Wang <benjobs@...che.org>
To: oss-security@...ts.openwall.com
Cc: dev <dev@...eampark.apache.org>
Subject: CVE-2022-45802: Apache StreamPark (incubating): Upload any file to any directory
Content-Type: text/plain; charset=utf-8

Apache StreamPark (incubating): Upload any file to any directory


Severity: low


Versions Affected:

Apache StreamPark 1.0.0 before 2.0.0


Description:


Streampark allows any users to upload a jar as application, but there
is no mandatory verification of the uploaded file type, causing users
to upload some risky files, and may upload them to any directory,
Users of the affected versions should upgrade to Apache StreamPark
2.0.0 or later


Mitigation:

Users of the affected versions should apply one of the following


- Upgrade to Apache StreamPark 2.0.0 or later

References:
https://streampark.incubator.apache.orghttps://www.cve.org/CVERecord?id=CVE-2022-45802




Best,
Huajie Wang

