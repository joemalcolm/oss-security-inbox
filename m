X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/25/6
Message-Id: <058B9966-6771-4E8D-8FE1-17175D7C625A@netherlabs.nl>
Date: Fri, 25 May 2012 19:59:48 +0200
From: Peter van Dijk <peter.van.dijk@...herlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: powerdns does not clear supplementary groups
Content-Type: text/plain; charset=utf-8

Hello list,

On May 25, 2012, at 19:55 , Kurt Seifried wrote:

> Ok this part I did not know, so this is an obvious trust boundary
> violation (the intention was to drop privileges but it instead ADDS
> root privileges).
> 
> Please use CVE-2012-2653 for this issue.


Just in case this slipped by someone - the example given (that adds root) is not for PowerDNS but for arpwatch!

Kind regards,
-- 
Peter van Dijk
Netherlabs Computer Consulting BV - http://www.netherlabs.nl/

