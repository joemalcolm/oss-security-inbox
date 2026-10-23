X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/4
Message-ID: <424128ff-58f2-4128-8645-2f69f7935599@greenbone.net>
Date: Fri, 23 Oct 2026 08:45:56 +0200
From: Christian Fischer <christian.fischer@...enbone.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8

Just as an follow-up to an earlier mail on this:

On 10/21/26 4:44 PM, Jakub Zelenka wrote:
> Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before 8.3.36, PHP 8.4
> before 8.4.27, and PHP 8.5 before 8.5.12.

The [1] blog post claims the following affected version ranges:

 > The serialization and session paths behind CVE-2026-109619 date back
 > further, to PHP 7.1 and PHP 5.4, respectively.

[1] 
https://www.crowdstrike.com/en-us/blog/crowdstrike-protects-customers-from-php-rce-zero-days/

Regards
