X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/5
Message-ID: <aq0ZE_yVYZMWcaOO@donburi.himad.notcom.org>
Date: Fri, 18 Sep 2026 14:10:30 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

Credit where it's due: this is an excellent announcement (except for the bugs of course):

  * List of fix commits.
  * List of stable versions containing the fix.
  * Detailed pre-requisites for exploitation.
  * Concrete list of affected subsystems/modules to apply mitigations.
  * Clear list of vulnerable versions.
  * No Markdown, no extraneous LLM product placement, just the relevant bits in clear
  plaintext.

With LPEs coming out every few weeks having this level of informative posts is a
great help.

 -valtteri

On Fri, Sep 18, 2026 at 06:15:07AM +0000, manizada wrote:
> Hi folks,
> 
> Emailing here now that the embargo agreed upon with linux-distros@ has
> expired.
> 
> Flagging four local root vulnerabilities in the Linux kernel, originally
> reported to security@...nel.org and the relevant maintainers in
> mid-July:
> 
>   DirtyAH6 (CVE-2026-80844), TUNderflow (CVE-2026-81000), PPPoEject
>   (CVE-2026-68121), and DiagSpill (CVE-2026-74469).
[...]
