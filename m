X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/1
Message-ID: <bdb0066d-471b-4689-bb85-bfcb08774706@oracle.com>
Date: Thu, 29 Oct 2026 17:21:41 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: Protecting against CVE-2026-98432 when using Go programs
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[security] Protecting against CVE-2026-98432
Date: 	Thu, 29 Oct 2026 16:34:28 -0700 (PDT)
From: 	Neal Patel <neal@...ang.org>
To: 	golang-announce <golang-announce@...glegroups.com>

Hi Gophers,

The recent disclosure of CVE-2026-98432 
<https://nvd.nist.gov/vuln/detail/cve-2026-98432> describes a use-after-free 
issue which impacts IPv4 TCP connection handling in the Linux kernel. In an 
exploit described by Anthropic 
<https://www.anthropic.com/research/discovering-vulnerabilities-with-claude>, a 
server using Multipath TCP <https://en.wikipedia.org/wiki/Multipath_TCP> (MPTCP) 
listeners is shown to be vulnerable to Remote Code Execution (RCE).

*The best fix for this vulnerability is to upgrade to a patched kernel version.*

While the demonstrated exploit requires the target system to expose an MPTCP 
listener, the underlying bug is not specific to MPTCP. It is possible that 
systems with no MPTCP listeners are vulnerable to similar attacks.

As of Go 1.24 <https://go.dev/doc/godebug#go-124>, Go programs enable MPTCP by 
default for listen sockets on Linux. This default may be changed by setting the 
"multipathtcp" GODEBUG:

   * Setting "GODEBUG=multipathtcp=0" in a program's environment will disable
     MPTCP by default at runtime.
   * Placing "godebug multipathtcp=0" in the main module's go.mod file will
     disable MPTCP by default at build time.


Programs may also explicitly enable or disable MPTCP on a per-socket basis, 
using net.Dialer.SetMultipathTCP <https://pkg.go.dev/net#Dialer.SetMultipathTCP> 
and net.ListenConfig.SetMultipathTCP 
<https://pkg.go.dev/net#ListenConfig.SetMultipathTCP>. These functions override 
the GODEBUG setting.

Note that disabling MPTCP on a program-by-program basis is a fragile mitigation. 
Accidentally leaving a single MPTCP listener exposed will still leave a system 
vulnerable. Further, it assumes that all viable exploits for this bug depend on 
MPTCP. Again, we strongly recommend upgrading to a patched kernel version.

At this time, we believe it is premature to consider making any changes to Go 
(such as changing the default MPTCP behavior) in reaction to this issue. Further 
discussion of the issue and how we might respond to it will happen on 
https://go.dev/issue/82717 <https://go.dev/issue/82717>.

- Go Security Team

-- 
To view this discussion visit 
https://groups.google.com/d/msgid/golang-announce/0c2926bc-e90f-4cdb-97c3-300fff6d8885n%40googlegroups.com
