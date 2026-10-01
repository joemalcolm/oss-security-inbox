X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/14
Message-ID: <98632972-daf8-edf6-52d0-55412ef456fc@apache.org>
Date: Thu, 01 Oct 2026 18:03:21 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47360: Apache HTTP Server: mod_session: Session cookie not removed during internal redirect 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache HTTP Server's mod_session_cookie module.



   
When SessionCookieRemove changes across internal redirects, the session cookie may still be passed to a backend server.





This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

lokerxx (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-47360

Timeline:

2026-05-15: reported
2026-10-01: fixed in 2.4.x by r1938656
2026-10-01: 2.4.69 released

