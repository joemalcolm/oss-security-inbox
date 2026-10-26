X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/15
Message-ID: <at6_RlAoIBuESprz@mertle>
Date: Sun, 25 Oct 2026 22:47:38 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Cc: Roman Kuligin <romaka@...ox.lv>
Subject: Re: PHP 5.4.23 (custom 5.4-5.6) backported patch for PHP2Shell OOM vulnerability (CVE-2026-109618)
Content-Type: text/plain; charset=utf-8

On 2026-10-25 10:33:37, Demi Marie Obenour wrote:
> On 10/24/26 15:56, Roman Kuligin wrote:
> > Hello, I have developed a backported .patch for EOL versions of PHP (specifically PHP 5.4, 5.5, and 5.6) to mitigate the critical PHP2Shell Out-of-Memory (OOM) vulnerability (CVE-2026-109618 / CVE-2026-109619). Since these legacy versions are no longer supported by the upstream PHP team, this patch updates the internal memory allocation model to prevent memory exhaustion and crashes during file upload progress tracking. The patch and instructions are publicly available on GitHub: https://github.com/akamor2800/php-5.4-cve-2026-php2shell-patch Best regards.
> 
> In light of the size of the upstream patch, would it be better to handle out of memory by crashing the process instead?

Considering that PHP 5.x has been out of security support for ~8 years
and out of active support for ~10, best of all would be to crash the
process when it starts.

For many of those years, there existed no AI marketing departments to
publicize individual vulnerabilities. No one knows how, but hundreds
of vulnerabilities were nevertheless fixed during that time.

Download attachment "signature.asc" of type "application/pgp-signature" (871 bytes)
