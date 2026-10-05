X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/17
Message-ID: <c17baee1-cdb0-4fda-a780-f9e2ca017f0e@andrew.cmu.edu>
Date: Mon, 5 Oct 2026 17:41:59 -0400
From: Chad Dougherty <crd@...rew.cmu.edu>
To: oss-security@...ts.openwall.com
Subject: Fwd: [Freeipmi-announce] FreeIPMI 1.6.20 Released
Content-Type: text/plain; charset=utf-8



-------- Forwarded Message --------
Subject: 	[Freeipmi-announce] FreeIPMI 1.6.20 Released
Date: 	Mon, 5 Oct 2026 20:56:51 +0000
From: 	Chu, Al via Freeipmi-announce <freeipmi-announce@....org>
Reply-To: 	Chu, Al <chu11@...l.gov>
To: 	freeipmi-devel <freeipmi-devel@....org>, Al Chu via Freeipmi-users 
<freeipmi-users@....org>, freeipmi-announce@....org 
<freeipmi-announce@....org>



Please note that this release has fixes for two buffer overflows.

https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.20.tar.gz 
<https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.20.tar.gz>

FreeIPMI 1.6.20 - 10/05/26
--------------------------
o The format specifier %h was used for two different format fields.
    Use %H as target host specifier.
o Fix minor output errors in Intel Node Manager DIMMs and Windmill
    device IDs.
o Fix ipmi-oem command line parsing bugs.
o In ipmi-oem, fix error in with wistron get/set-ipv6-trap-settings.
o In ipmi-oem, fix output error in dell get-system-info cmc-info.
o In libipmidetect fix potential hostname sscanf bound overflow.
o In ipmi-oem fujitsu get-sel-entry-long-text, fix potential memory
    buffer overflow.
o Fix ipmiconsole workaround flag parsing issues.
o Fix minor libfreeipmi corner cases (e.g. parameter input corner cases).
o Fix minor SEL output corner cases in several OEM vendors.
o Fix libfreeipmi macro inconsistencies / errors.
o Minor documentation fixes.

Al

--
Al Chu
Livermore Computing
Lawrence Livermore National Laboratory
