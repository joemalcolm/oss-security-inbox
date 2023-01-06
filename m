X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/06/2
Message-ID: <8b2cec3e-824b-4cba-6c4e-87bf6862fa5b@apache.org>
Date: Fri, 06 Jan 2023 07:32:32 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45935: Apache James server: Temporary File Information Disclosure 
Content-Type: text/plain; charset=utf-8

Description:

Usage of temporary files with insecure permissions by the Apache James server allows an attacker with local access to access private user data in transit. 

Vulnerable components includes the SMTP stack and IMAP APPEND command.

This issue affects Apache James server version 3.7.2 and prior versions.

Credit:

Benoit Tellier (reporter)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-45935

