X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/28/5
Message-ID: <7c6b0e6e-8c75-4910-8a19-89738ee4e566@andrew.cmu.edu>
Date: Fri, 28 Aug 2026 13:52:21 -0400
From: Chad Dougherty <crd@...rew.cmu.edu>
To: oss-security@...ts.openwall.com
Subject: Fwd: [Freeipmi-announce] FreeIPMI 1.6.19 Released
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Freeipmi-announce] FreeIPMI 1.6.19 Released
Date: 	Fri, 28 Aug 2026 17:36:03 +0000
From: 	Chu, Al via Freeipmi-announce <freeipmi-announce@....org>
Reply-To: 	Chu, Al <chu11@...l.gov>
To: 	freeipmi-announce@....org <freeipmi-announce@....org>, 
freeipmi-devel <freeipmi-devel@....org>, Al Chu via Freeipmi-users 
<freeipmi-users@....org>



Please take special note that this release includes several fixes for 
potential buffer overflows.

FreeIPMI 1.6.19 - 08/27/26
--------------------------
o Fix minor groff warnings in manpages.
o Fix portability of building manpages.
o Fix minor bugs found by code analysis:
    - bmc-watchdog: Fix bug with --arp-response command line parsing.
    - ipmi/rmcpping: Fix bug with finding an IPv6 interface.
    - ipmidetect: fix bug in which hostname configs not used properly
    - ipmi-oem intelnm: fix parsing of hours/minutes error
    - ipmi-oem: Correct Dell CMC IPv6 autoconfiguration output.
    - ipmi-oem: Correct Dell iDRAC web server control output.
    - libipmidetect: Isolate partial results between fallback servers.
    - libipmidetect: Honor caller-provided hostnames over configured 
defaults.
    - common: Preserve stream state when finishing buffered output.
    - common: Fix buffer-output configuration parse issue.
    - common: Parse UTC offset configuration as an integer.
    - ipmiconsole: Monitor both console descriptors.
    - ipmiconsole: Check valid payload instance range correctly.
    - ipmi-sel: Honor post-clear after full tail output.
    - ipmi-fru: Report DIMM capacities in megabytes.
    - ipmi-chassis: Apply the Power-On Hours scale correctly.
    - libipmimonitoring: fix mem-leak on SEL iterator
    - libipmimonitoring: allow cipher suite 0 in configs
    - libipmimonitoring: report NO_SEL_RECORDS instead of
      NO_SENSOR_READINGS cut and paste errors in some functions.
o Fix potential stack overflows found by code analysis in ipmi-oem
    dell get-system-info command (specifically idrac-info, cmc-info,
    cmc-ipv6-info subcommands) and ipmi-oem fujitsu get-sel-entry-long-text.
o Fix potential stack overflow in libfreeipmi also related to Fujitsu
    long SEL entries.

https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.19.tar.gz 
<https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.19.tar.gz>



Al

--
Al Chu
Livermore Computing
Lawrence Livermore National Laboratory
