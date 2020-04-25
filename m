X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/25/1
Message-ID: <CACmp6kpW7T64bucUe4oi50j=L-qQp9fEWG8iPGzOoZLmJeptQQ@mail.gmail.com>
Date: Sat, 25 Apr 2020 11:44:29 -0500
From: Matt Sicker <mattsicker@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-9488] Improper validation of certificate with host mismatch in Apache Log4j SMTP appender
Content-Type: text/plain; charset=utf-8

Summary: Improper validation of certificate with host mismatch in
Log4j2 SMTP appender. This could allow an SMTPS connection to be
intercepted by a man-in-the-middle attack which could leak any log
messages sent through that appender.

Mitigation: Users should upgrade to Apache Log4j 2.13.2 which fixed
this issue in LOG4J2-2819 by making SSL settings configurable for
SMTPS mail sessions. As a workaround for previous releases, users can
set the `mail.smtp.ssl.checkserveridentity` system property to `true`
to enable SMTPS hostname verification for all SMTPS mail sessions.

https://issues.apache.org/jira/browse/LOG4J2-2819

CVE Details:
CWE: 297
CVSS: 3.7 (Low) CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N
Affects: Apache Log4j <= 2.13.1
Fixed: Log4j 2.13.2
Reported by: Peter Stöckli <peter.stockli@...habot.com>


-- 
Matt Sicker
Secretary, Apache Software Foundation
VP Logging Services, ASF
