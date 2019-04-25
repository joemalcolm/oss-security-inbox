X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/25/8
Message-ID: <CAAqbB_dcE=AL4O8OcqDkfTazWrcz2wpU==J6Qh7ouWV+mGi1nw@mail.gmail.com>
Date: Thu, 25 Apr 2019 14:24:44 -0400
From: Neil Griffin <asfgriff@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-0186] The input fields of the Chat Room demo are vulnerable to Cross-Site Scripting (XSS) attacks
Content-Type: text/plain; charset=utf-8

The input fields of the Apache Pluto "Chat Room" demo portlet are
vulnerable to Cross-Site Scripting (XSS) attacks.

Versions Affected:
3.0.0, 3.0.1

Mitigation:
* Uninstall the ChatRoomDemo war file
- or -
* migrate to version 3.1.0 of the chat-room-demo war file

For more information about Apache Pluto security updates, visit:
https://portals.apache.org/pluto/security.html

