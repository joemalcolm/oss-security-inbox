Received: (qmail 28374 invoked by uid 550); 14 Mar 2026 19:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27730 invoked from network); 14 Mar 2026 19:49:32 -0000
Date: Sat, 14 Mar 2026 20:49:19 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260314194919.GA4600@openwall.com>
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

On Thu, Mar 12, 2026 at 02:03:23PM -0400, Marc Deslauriers wrote:
> Jeremy Brown discovered a security issue in the GSSAPI Key Exchange patch a 
> lot of distros carry on top of the OpenSSH package.

I'm Bcc'ing Jeremy on this.  Thank you for discovering and reporting
the issue, Jeremy!

> Unfortunately, there seems to be quite a few different versions of this 
> patch being used, but a lot of them share the same core issue. Different 
> compiler options also result in different outcomes, so the severity of this 
> issue varies.
> 
> We have assigned CVE-2026-3497 to this issue.
> 
> Attached is the full pdf from the reporter, along with the patch we used in 
> Ubuntu. I suggest reading the full pdf, but I have extracted some of the 
> most important excerpts from it:
> 
> "The patch contains a code defect where sshpkt_disconnect() (a 
> non-terminating function that queues a disconnect message and returns) is 
> used where ssh_packet_disconnect()(which terminates the process) was 
> intended. This causes the default: error-handling case in the GSSAPI KEX 
> server loop to fall through into code that reads an uninitialized stack 
> variable (recv_tok), sends its contents to the privileged monitor process 
> via IPC, and then passes it to gss_release_buffer() which may call free() 
> on a garbage pointer."
> 
> "Bug: Non-terminating error handler (sshpkt_disconnect) in GSSAPI KEX server
> code allows fallthrough to uninitialized variable use
> 
> - Impact: Pre-auth uninitialized pointer dereference (CWE-824, CWE-908); 
> confirmed heap corruption via free() on uninitialized pointer (SIGABRT on 
> x86_64); privsep boundary violation (up to 127KB of heap data to root 
> monitor via IPC); SIGSEGV (signal 11) and SIGABRT (signal 6) on x86_64 with 
> 90-second SSH lockout; 100% reliable child process crash
> 
> - Trigger: Single crafted SSH packet (~300 bytes), no authentication or 
> credentials needed
> 
> - Potentially Affected: Ubuntu/Debian OpenSSH servers with GSSAPIKeyExchange
> yes

Red Hat has now acknowledged that RHEL 8, 9, 10 are also affected (but 6
and 7 are not):

https://access.redhat.com/security/cve/cve-2026-3497

They suggest setting "GSSAPIAuthentication no" to mitigate this, which I
find puzzling.  Per the brief discussion we had on the distros list
pre-disclosure, it appeared that GSSAPIKeyExchange is the option, and
moreover it was said that GSSAPIKeyExchange could conceivably be used
without GSSAPIAuthentication.  So which of these two options is/are
actually responsible for exposing the vulnerability?  Does it maybe vary
by patch revision (Debian vs. Red Hat) or (more likely?) is this just an
error in the current Red Hat statement?

Also, the statement is worded such that it's implied the default
configuration is affected and the mitigation needs to be applied, but
prior understanding was that these features are disabled by default.

> - Potential Fix: Replace sshpkt_disconnect() with ssh_packet_disconnect() 
> at the 3 server-side call sites in kexgsss.c"
> 
> "The uninitialized recv_tok contains different stack residue depending on 
> compiler, optimization level, and flags."
> 
> "Different compilers produce fundamentally different residue. Clang -O0 
> leaves 0xfffbe600 with length 4. GCC -O2 -fno-stack-protector leaves a 
> valid heap address with length 127344. The 8-build matrix shows that 
> recv_tok.value ranges from NULL to stack addresses to heap addresses to 
> unmapped addresses."

Thank you for bringing this to oss-security, Marc!

Alexander
