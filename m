X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/5
Message-ID: <0ddf72fd-ff55-44b6-a467-f30a5061f5af@greenbone.net>
Date: Fri, 23 Oct 2026 08:47:48 +0200
From: Christian Fischer <christian.fischer@...enbone.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109618: PHP 8.2–8.5 RCE via OOM corruption
Content-Type: text/plain; charset=utf-8

Only for references on this:

On 10/21/26 4:41 PM, Jakub Zelenka wrote:
> Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before 8.3.36, PHP 8.4
> before 8.4.27, and PHP 8.5 before 8.5.12.
The [1] blog post claims the following affected version range for 
CVE-2026-109618:

 > The specific HashTable ordering behind CVE-2026-109618 was introduced
 > by a performance optimization in October 2017 and first shipped in PHP
 > 7.3.0 (December 2018).

[1] 
https://www.crowdstrike.com/en-us/blog/crowdstrike-protects-customers-from-php-rce-zero-days/

Regards
