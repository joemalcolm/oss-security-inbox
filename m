X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/13/8
Message-ID: <CAJmbs8j7_Smbsv8bkm31xzixJADOt+-iQoxCdmux8orm8DcwOw@mail.gmail.com>
Date: Thu, 13 Jul 2017 23:24:17 +0700
From: Maxim Solodovnik <solomax@...che.org>
To: Openmeetings user-list <user@...nmeetings.apache.org>, dev <dev@...nmeetings.apache.org>,  security@...nmeetings.apache.org,  Joe Basirico <jbasirico@...urityinnovation.com>,  Sharath Unni <sunni@...urityinnovation.com>,  Dinesh Shetty <dshetty@...urityinnovation.com>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2017-7673 - Apache OpenMeetings Insufficient check in dialogs with passwords
Content-Type: text/plain; charset=utf-8

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings uses not very strong cryptographic
storage, captcha is not used in registration and forget password
dialogs and auth forms missing brute force protection
CVE-2017-7673

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
