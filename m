X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/11
Message-ID: <akV9V0rGX7uxq04M@mertle>
Date: Wed, 1 Jul 2026 16:49:27 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: check_icmp (Monitoring Plugins): host-count overflow leads to heap buffer overflow in setuid-root binary
Content-Type: text/plain; charset=utf-8

On 2026-07-01 15:36:00, Holger Weiß wrote:
> We released Monitoring Plugins 3.0.1, which fixes a security issue in 
> the check_icmp plugin.
>
> ...
>
> A local user can trigger a heap buffer overflow in check_icmp by 
> supplying more than 65535 target hosts, which overflows an internal 
> counter. This happens before check_icmp drops its privileges, so the 
> corruption occurs while still running as root on setuid-root 
> installations.

If anyone was wondering, nagios-plugins has the same problem.

Fix: https://github.com/nagios-plugins/nagios-plugins/pull/833
