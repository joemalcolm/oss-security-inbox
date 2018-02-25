X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/25/1
Message-ID: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
Date: Sun, 25 Feb 2018 18:50:34 +0700
From: Maxim Solodovnik <solomax@...che.org>
To: Openmeetings user-list <user@...nmeetings.apache.org>, dev <dev@...nmeetings.apache.org>,  user-russian@...nmeetings.apache.org, Sahil <sdhar@...urityinnovation.com>,  security@...nmeetings.apache.org, oss-security@...ts.openwall.com
Subject: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls
Content-Type: text/plain; charset=utf-8

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.0.0

Description: CRUD operations on privileged users are not password
protected allowing an authenticated attacker to deny service for
privileged users.


The issue was fixed in 4.0.2
All users are recommended to upgrade to Apache OpenMeetings 4.0.2

Credit: This issue was identified by Sahil Dhar of Security Innovation Inc
