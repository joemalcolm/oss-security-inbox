X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/06/3
Message-ID: <dd0e94aa-e439-9d45-dd8e-233b87287e02@apache.org>
Date: Tue, 06 Dec 2022 17:42:05 +0000
From: Markus Schuch <schuch@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45910: Apache ManifoldCF: LDAP Injection Vulnerability - ActiveDirectory Authorities 
Content-Type: text/plain; charset=utf-8

Description:

Improper neutralization of special elements used in an LDAP query ('LDAP Injection') vulnerability in ActiveDirectory and Sharepoint ActiveDirectory authority connectors of Apache ManifoldCF allows an attacker to manipulate the LDAP search queries (DoS, additional queries, filter manipulation) during user lookup, if the username or the domain string are passed to the UserACLs servlet without validation.

This issue affects Apache ManifoldCF version 2.23 and prior versions.

Credit:

4ra1n of Chaitin Tech (finder)

References:

https://manifoldcf.apache.org/
https://cve.org/CVERecord?id=CVE-2022-45910

