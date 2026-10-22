X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/2
Message-ID: <661f2a3a-9a70-4323-bea7-0bcec1299c94@greenbone.net>
Date: Thu, 22 Oct 2026 08:45:47 +0200
From: Christian Fischer <christian.fischer@...enbone.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8

Hello,

 > On 21.10.2026 16:44 CEST Jakub Zelenka <bukka@....net> wrote:
 >
 > Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before 8.3.36, 
PHP 8.4
 > before 8.4.27, and PHP 8.5 before 8.5.12.

it might worth to mention that the subject as well as the text here 
could imply / be interpreted that only PHP 8.2-8.5 are affected (and 
older versions not).

But at least https://www.php.net/archive/2026.php#2026-10-21-5 mentions 
the availability for backports down to PHP 7.4 which implies that at 
least versions down to 7.4 are affected as well:

 > Given the severity of these vulnerabilities, the PHP security team
 > provided minimal source-backports for PHP 7.4, PHP 8.0, and PHP 8.1 to
 > help people building from source or without access to an LTS vendor.

Regards
