X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/05/1
Message-ID: <apvAhE91cp8-KQbQ@eldamar.lan>
Date: Sat, 5 Sep 2026 09:11:05 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: [Freeipmi-announce] FreeIPMI 1.6.19 Released
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, Aug 28, 2026 at 01:52:21PM -0400, Chad Dougherty wrote:
> Please take special note that this release includes several fixes for
> potential buffer overflows.
> 
> FreeIPMI 1.6.19 - 08/27/26
> --------------------------
> o Fix minor groff warnings in manpages.
> o Fix portability of building manpages.
> o Fix minor bugs found by code analysis:
>    - bmc-watchdog: Fix bug with --arp-response command line parsing.
>    - ipmi/rmcpping: Fix bug with finding an IPv6 interface.
>    - ipmidetect: fix bug in which hostname configs not used properly
>    - ipmi-oem intelnm: fix parsing of hours/minutes error
>    - ipmi-oem: Correct Dell CMC IPv6 autoconfiguration output.
>    - ipmi-oem: Correct Dell iDRAC web server control output.
>    - libipmidetect: Isolate partial results between fallback servers.
>    - libipmidetect: Honor caller-provided hostnames over configured
> defaults.
>    - common: Preserve stream state when finishing buffered output.
>    - common: Fix buffer-output configuration parse issue.
>    - common: Parse UTC offset configuration as an integer.
>    - ipmiconsole: Monitor both console descriptors.
>    - ipmiconsole: Check valid payload instance range correctly.
>    - ipmi-sel: Honor post-clear after full tail output.
>    - ipmi-fru: Report DIMM capacities in megabytes.
>    - ipmi-chassis: Apply the Power-On Hours scale correctly.
>    - libipmimonitoring: fix mem-leak on SEL iterator
>    - libipmimonitoring: allow cipher suite 0 in configs
>    - libipmimonitoring: report NO_SEL_RECORDS instead of
>      NO_SENSOR_READINGS cut and paste errors in some functions.
> o Fix potential stack overflows found by code analysis in ipmi-oem
>    dell get-system-info command (specifically idrac-info, cmc-info,
>    cmc-ipv6-info subcommands) and ipmi-oem fujitsu get-sel-entry-long-text.
> o Fix potential stack overflow in libfreeipmi also related to Fujitsu
>    long SEL entries.
> 
> https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.19.tar.gz
> <https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.19.tar.gz>

FTR, some of the fixed issues got CVEs assigned, they are:

CVE-2026-85504, CVE-2026-85505, CVE-2026-85506, CVE-2026-85507,
CVE-2026-85508 and CVE-2026-85509.

Regards,
Salvatore
