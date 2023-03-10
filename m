X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/10/1
Message-ID: <dc3c70ed-a152-e598-e353-7ba03abde474@apache.org>
Date: Fri, 10 Mar 2023 13:37:22 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-26464: Apache Log4j 1.x (EOL) allows DoS in Chainsaw and SocketAppender 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

** UNSUPPORTED WHEN ASSIGNED **

When using the Chainsaw or SocketAppender components with Log4j 1.x on JRE less than 1.7, an attacker that manages to cause a logging entry involving a specially-crafted (ie, deeply nested) 
hashmap or hashtable (depending on which logging component is in use) to be processed could exhaust the available memory in the virtual machine and achieve Denial of Service when the object is deserialized.

This issue affects Apache Log4j before 2. Affected users are recommended to update to Log4j 2.x.

NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Garrett Tucker of Red Hat (reporter)

References:

https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-26464

