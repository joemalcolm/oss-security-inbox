X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/13/13
Message-ID: <CAJmbs8jKczMSw5RZ2NkSx3z-9+cTRg50w-VO9nneRyhMOFLSKQ@mail.gmail.com>
Date: Thu, 13 Jul 2017 23:27:43 +0700
From: Maxim Solodovnik <solomax@...che.org>
To: Openmeetings user-list <user@...nmeetings.apache.org>, dev <dev@...nmeetings.apache.org>,  security@...nmeetings.apache.org,  Joe Basirico <jbasirico@...urityinnovation.com>,  Sharath Unni <sunni@...urityinnovation.com>,  Dinesh Shetty <dshetty@...urityinnovation.com>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2017-7684 - Apache OpenMeetings - Insecure File Upload
Content-Type: text/plain; charset=utf-8

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings doesn't check contents of files being
uploaded. An attacker can cause a denial of service by uploading
multiple large files to the server
CVE-2017-7684

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
