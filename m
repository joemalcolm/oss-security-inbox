X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/28/1
Message-ID: <53a25a93-e8ae-da21-8a5c-ed10fc2a1669@apache.org>
Date: Wed, 28 Sep 2022 14:19:57 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-43980: Apache Tomcat: Information disclosure
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

The simplified implementation of blocking reads and writes introduced in 
Tomcat 10 and back-ported to Tomcat 9.0.47 onwards exposed a long 
standing (but extremely hard to trigger) concurrency bug in Apache 
Tomcat 10.1.0 to 10.1.0-M12, 10.0.0-M1 to 10.0.18, 9.0.0-M1 to 9.0.60 
and 8.5.0 to 8.5.77 that could cause client connections to share an 
Http11Processor instance resulting in responses, or part responses, to 
be received by the wrong client.

Credit:

Thanks to Adam Thomas, Richard Hernandez and Ryan Schmitt for 
discovering the issue and working with the Tomcat security team to 
identify the root cause and appropriate fix.

References:

https://lists.apache.org/thread/3jjqbsp6j88b198x5rmg99b1qr8ht3g3
