X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/04/2
Message-ID: <CAFqjAi0Zjfy1h1VZa3s-OKm2=oZPkD2jULV6Rpm_k=uBXCnwMg@mail.gmail.com>
Date: Thu, 4 Jan 2018 14:19:59 +0300
From: Taher Alkhateeb <slidingfilaments@...il.com>
To: OFBIZ Development Mailing List <dev@...iz.apache.org>, user@...iz.apache.org, announce@...che.org,  oss-security@...ts.openwall.com, Niels Heinen <heinenn@...gle.com>
Subject: "[SECURITY] CVE-2017-15714 Apache OFBiz BIRT code vulnerability"
Content-Type: text/plain; charset=utf-8

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.03

Description:
The BIRT plugin in Apache OFBiz does not escape user input property passed.
This allows for code injection by passing that code through the URL. For
example by appending this code "__format=%27;alert(%27xss%27)" to the URL
an alert window would execute.

Mitigation:
Upgrade to 16.11.04

Credit:
Niels Heinen

References:
http://ofbiz.apache.org/download.html#vulnerabilities

This is a security announcement on behalf of the Apache OFBiz security
team. All affected users are advised to upgrade OFBiz as per the below
mitigation strategy. Apology for the repetition to some mailing lists
because I'm resending to _all_ relevant emails.
