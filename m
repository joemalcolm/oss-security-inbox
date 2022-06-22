X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/22/2
Message-ID: <abc9b527-a027-ca04-9f9e-9469589fb4c9@apache.org>
Date: Wed, 22 Jun 2022 07:15:42 +0000
From: Robert Munteanu <rombert@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-32549: Apache Sling: log injection in Sling logging 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Apache Sling Commons Log <= 5.4.0 and Apache Sling API <= 2.25.0 are vulnerable to log injection. The ability to forge logs may allow an attacker to cover tracks by injecting fake logs and potentially corrupt log files.

Credit:

Apache Sling would like to thank Alex Collignon for reporting this issue.

