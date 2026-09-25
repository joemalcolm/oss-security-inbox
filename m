X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/18
Message-ID: <5ff57758-1c82-509d-9c71-aa9bb7029593@apache.org>
Date: Fri, 25 Sep 2026 20:13:00 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82385: Apache Roller: Weblog template include escapes the Velocity sandbox and reads classpath files 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 6.5 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Exposure of Sensitive Information to an Unauthorized Actor in Apache Roller 6.1.5 allows a weblog administrator to read files on the application classpath, including Roller configuration files containing secrets, by authoring a Velocity template that uses an include directive to load a classpath resource outside the theme namespace. Roller treats weblog administrators as untrusted and enables a Velocity sandbox, but the include and parse directives are not confined by it. No non-default configuration is required; this affects any weblog whose administrator can author templates. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which confines includes to the active theme and removes classpath resource loading from weblog rendering.

Credit:

n0mi1k (finder)

References:

https://github.com/apache/roller/pull/172
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82385

