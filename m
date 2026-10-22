X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/8
Message-ID: <549e871c-8240-4526-a6e2-ef9400c80d25@oracle.com>
Date: Thu, 22 Oct 2026 11:45:44 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Antoine du Hamel <duhamelantoine1995@...il.com>
Subject: Re: Upcoming Node.js security release 2026/10/21
Content-Type: text/plain; charset=utf-8

On 10/14/26 09:36, Antoine du Hamel wrote:
> Security release pre-alert:
> 
> We will release new versions of Node.js 22, 24, and 26 release lines on or shortly
> after 2026-10-21 in order to address security vulnerabilities, the highest being HIGH.
> 
> https://nodejs.org/en/blog/vulnerability/october-2026-security-releases

I didn't see a followup, but these releases are out now, and the above URL lists:
> Security releases available
> 
> Updates are now available for the 26.x, 24.x, 22.x Node.js release lines
> for the following issues.
> 
> This security release includes the following dependency updates to address
> public vulnerabilities:
> 
>     c-ares on 26.x, 24.x, 22.x
>     ca-cert (eMudhra Intermediate CA Compromise) on 26.x, 24.x, 22.x
>     OpenSSL on 24.x, 22.x
>     SQLite on 22.x
>     Undici on 26.x, 24.x, 22.x
> 
> dns.resolve truncates names containing NUL char (CVE-2026-105482) - (high)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to hasanfleyah for reporting this vulnerability and thank
> you jasnell for fixing it.
> 
> 
> TLS certificate hostname bypass when the IP is written fullwidth digits
> (CVE-2026-105483) - (high)
> 
> This vulnerability affects Node.js 26.x and 24.x.
> 
> Thank you, to hasanfleyah for reporting this vulnerability and thank
> you jasnell for fixing it.
> 
> 
> TLS certificate hostname bypass when the host loosely resolves to an IP
> address (CVE-2026-106069) - (high)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to anagnorisis2peripeteia for reporting this vulnerability
> and thank you mcollina for fixing it.
> 
> 
> Node.js Brotli decoder out-of-bounds write permits remote code execution
> (CVE-2026-111497) - (high)
> 
> A flaw in Node.js can cause Node.js Brotli decoder out-of-bounds write
> permits remote code execution.
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to mcollina for reporting this vulnerability and thank you
> aduh95 for fixing it.
> 
> 
> Keep-alive socket process a response that was written before the request
> was sent (CVE-2026-105481) - (medium)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to hasanfleyah for reporting this vulnerability and thank you
> jasnell for fixing it.
> 
> 
> Improper certificate validation for non-canonical IPv4 hostnames allows
> DNS SANs to authenticate IP endpoints (CVE-2026-106072) - (medium)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to br41ny for reporting this vulnerability and thank you
> mcollina for fixing it.
> 
> 
> crypto.randomUUID() and randomInt() entropy caches are saved into user-land
> startup snapshots and SEAs, so every process repeats the same values
> (CVE-2026-106074) - (medium)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to gesposito for reporting this vulnerability and
> thank you panva for fixing it.
> 
> 
> Node.js ZipFile returns attacker-controlled prefix bytes after failed ZIP
> header validation (CVE-2026-106070) - (low)
> 
> This vulnerability affects Node.js 26.x.
> 
> Thank you, to startimeash for reporting this vulnerability and
> thank you mcollina for fixing it.
> 
> 
> Permission Model filesystem over-grant via wildcard radix lookup
> (CVE-2026-106071) - (low)
> 
> This vulnerability affects Node.js 26.x.
> 
> Thank you, to malikhamzaiqbal for reporting this vulnerability and
> thank you jasnell for fixing it.
> 
> 
> Permission Model bypass with fs.realpathSync (CVE-2026-106073) - (low)
> 
> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> Thank you, to 0xoroot for reporting this vulnerability and thank you
> RafaelGSS for fixing it.


-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
