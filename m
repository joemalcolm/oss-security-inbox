X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/25/3
Message-ID: <CAJmbs8jiQ3sp4b9BEsJsHy2j4eywP_xYZeVD9nOhgs1VwKPSqw@mail.gmail.com>
Date: Fri, 25 Mar 2016 15:56:57 +0600
From: Maxim Solodovnik <solomax@...che.org>
To: Openmeetings user-list <user@...nmeetings.apache.org>, dev <dev@...nmeetings.apache.org>,  security@...nmeetings.apache.org, security@...che.org,  oss-security@...ts.openwall.com, bugtraq@...urityfocus.com
Subject: [CVE-2016-2163] Stored Cross Site Scripting in Event description
Content-Type: text/plain; charset=utf-8

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.9.x - 3.0.7

Description:
When creating an event, it is possible to create clickable URL links in
the event description. These links will be present inside the event details
once a participant enters the room via the event. It is possible to create a
link like "javascript:alert('xss')", which will execute once the link is
clicked. As the link is placed within an <a> tag, the actual link is not
visible to the end user which makes it hard to tell if the link is
legit or not.

All users are recommended to upgrade to Apache OpenMeetings 3.1.1

Credit: This issue was identified by Andreas Lindh


Apache OpenMeetings Team
