X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/20/10
Message-ID: <fd13634f-8b54-c0f2-295d-f77a9dff65fd@apache.org>
Date: Thu, 20 Apr 2023 14:50:32 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-25601: Apache DolphinScheduler 3.0.0 to 3.1.1 python gateway has improper authentication 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

On version 3.0.0 through 3.1.1, Apache DolphinScheduler's python gateway suffered from improper authentication: an attacker could use a socket bytes attack without authentication. This issue has been fixed from version 3.1.2 onwards. For users who use version 3.0.0 to 3.1.1, you can turn off the python-gateway function by changing the value `python-gateway.enabled=false` in configuration file `application.yaml`. If you are using the python gateway, please upgrade to version 3.1.2 or above.

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-25601

