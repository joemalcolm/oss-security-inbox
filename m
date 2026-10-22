X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/19
Message-ID: <c524d78724be32d8a7ddd05754673bc3dd4b593a.camel@runout.at>
Date: Thu, 22 Oct 2026 14:33:22 +0200
From: Markus Gschwendt <office+osssecurity@...out.at>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8

On Thu, 2026-10-22 at 08:45 +0200, Christian Fischer wrote:
> Hello,
> 
>  > On 21.10.2026 16:44 CEST Jakub Zelenka <bukka@....net> wrote:
>  >
>  > Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before
> 8.3.36, 
> PHP 8.4
>  > before 8.4.27, and PHP 8.5 before 8.5.12.
> 
> it might worth to mention that the subject as well as the text here 
> could imply / be interpreted that only PHP 8.2-8.5 are affected (and 
> older versions not).
> 
...

I'm wondering about the specific versions as well. Because following is
written at https://www.wiz.io/blog/php2shell-php-rce#overview-2

"Nearly every PHP version is affected by at least one of these issues,
including releases dating back to PHP 5.4. The vulnerabilities can
allow unauthenticated attackers to execute code on affected servers or
read sensitive process memory. That memory may contain passwords,
authentication tokens, API keys and certificates belonging to other
requests or the server itself."


Markus
