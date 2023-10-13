X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/13/1
Message-ID: <fc7f78ee-8322-4d6b-b07b-923954016c05@treenet.co.nz>
Date: Fri, 13 Oct 2023 14:54:02 +1300
From: Amos Jeffries <squid3@...enet.co.nz>
To: oss-security@...ts.openwall.com, Joshua Rogers <megamansec@...il.com>
Subject: Re: Squid Caching Proxy Security Audit: 55 Vulnerabilities, 35 0days.
Content-Type: text/plain; charset=utf-8

Some reference updates.


On 11/10/23 20:55, Joshua Rogers wrote:
> 
> The issues are listed below. Due to the sheer size of issues discovered,
> technical details are not included in this email. However, breakdowns of
> the code and proof-of-concepts can be found on GitHub:
> https://megamansec.github.io/Squid-Security-Audit/
> 

> Cache Poisoning by Large Stored Response Headers (With Bonus XSS)

  ... GHSA-543m-w2m2-g255

> Gopher Assertion Crash

  ... GHSA-f5cp-6rh3-284w

> Assertion in Gopher Response Handling

  ... CVE-2021-46784 / GHSA-f5cp-6rh3-284w



AYJ
