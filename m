X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/2
Message-ID: <20260824050107.GA12848@openwall.com>
Date: Mon, 24 Aug 2026 07:01:07 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Anmol Bakshi <anmolbakshi24@...il.com>
Subject: BusyBox dpkg applet: OS command injection
Content-Type: text/plain; charset=utf-8

Hi,

Anmol Bakshi brought the below with original Subject line saying
"BusyBox dpkg applet: OS command injection -> root RCE (CWE-78)" to
linux-distros on July 13.  We quickly determined that no privilege
boundary is crossed, so the coordinated disclosure request was
withdrawn.  However, we cannot just withdraw something sent to
linux-distros (as long as it wasn't completely off-topic) without also
bringing it to oss-security.  In this case, we overlooked that until I
started processing the linux-distros list statistics for July.

I include the linux-distros messages quoted below, sans the originally
attached PDF file (which I didn't even look at).

Alexander

On Mon, Jul 13, 2026 at 08:44:40AM +0530, Anmol Bakshi wrote:
> Proposed coordinated public disclosure: 2026-07-27.
> 
> Summary
> -------
> 
> OS command injection in BusyBox's dpkg applet gives arbitrary command execution as
> the user running dpkg (root in typical use). Present through current BusyBox;
> confirmed on 1.36.1 and 1.37.0.git HEAD.
> 
> Vulnerability
> -------------
> 
> archival/dpkg.c (~line 1271):
>   script_path = xasprintf("/var/lib/dpkg/info/%s.%s", package_name, script_type);
>   result = access(script_path, F_OK) ? EXIT_SUCCESS : system(script_path);
> 
> The Package field from the .deb control file is passed unvalidated into the path handed
> to system() (/bin/sh -c). Shell metacharacters in the package name execute as command
> separators. The forward-slash filename restriction is bypassed with a base64-encoded
> payload the shell decodes at runtime, making injection unrestricted.
> 
> Impact
> ------
> 
> Arbitrary command execution as uid=0. Demonstrated: /etc/shadow exfiltration and an
> outbound network callback from a crafted .deb.
> CVSS 4.0: 9.3 (AV:L/AC:L/AT:N/PR:N/UI:P/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H). CWE-78.
> 
> Affected scope
> --------------
> 
> Any build with CONFIG_DPKG enabled that processes an attacker-supplied .deb. The applet
> is enabled in some distro builds (for example Debian's busybox deb config enables a
> minimal dpkg). Please assess your own configuration.
> 
> Suggested fix
> -------------
> 
> 1. Replace system(script_path) with fork()/execl(script_path, script_path, (char*)NULL)
>    so no shell is invoked.
> 2. Validate package names against ^[a-z0-9][a-z0-9.+-]+$ to match GNU dpkg.
> 
> Coordination
> ------------
> 
> This is a coordinated disclosure. I am separately notifying Alpine Linux, OpenWrt, the
> Yocto Project, and Buildroot (none of which are on this list), all toward the same
> public date of 2026-07-27. BusyBox upstream has no working private security channel:
> the Bugzilla instance is offline and the security contact bounces. I sent a private
> report on 2026-04-21 with no response in ~3 months, so there is no upstream fix to
> coordinate. I have an open MITRE request from 2026-04-21 that has not been actioned; I
> would prefer a CVE ID be assigned via a CNA on this list. Full report and a
> self-contained reproduction script are attached.
> Please confirm receipt.
> 
> 
> Regards,
> Anmol Bakshi
> https://anmolbakshi.com

On Mon, Jul 13, 2026 at 08:32:59AM +0200, Solar Designer wrote:
> Hello Anmol,
> 
> Thank you for notifying linux-distros.
> 
> On Mon, Jul 13, 2026 at 08:44:40AM +0530, Anmol Bakshi wrote:
> > Proposed coordinated public disclosure: 2026-07-27.
> 
> I ack that this is a valid public disclosure date per this list's
> policy, but I note it's the latest possible - so please note that no
> extension beyond this date will be possible.
> 
> Please make sure you post specifically to the public oss-security list
> when making the issue public.
> 
> > Full report and a self-contained reproduction script are attached.
> 
> Unfortunately, you sent these pre-encrypted to the list key, whereas the
> list only re-encrypts non-pre-encrypted attachments of full PGP/MIME
> messages as commonly produced by MUAs with PGP support.  In fact, I
> think these attachments ended up double-encrypted when you sent the
> message, and only the outer layer got processed by the list software.
> So they arrived to list subscribers still encrypted to the list key as
> you prepared them, rather than re-encrypted to their keys, and thus are
> unreadable to them.
> 
> I suggest that you selectively send these to list members who ask, or
> you may resend the reproduction script as a simple attachment (don't
> pre-encrypt, but let the MIME message be encrypted) or in message body.
> 
> I doubt the PDF is worth resending, but I don't know what's in it.  For
> oss-security, the message size limit (including MIME overhead) is 1 MB,
> so this large PDF wouldn't be suitable for posting to there anyway.
> 
> > Please confirm receipt.
> 
> Confirmed as above.
> 
> > OS command injection in BusyBox's dpkg applet gives arbitrary command execution as
> > the user running dpkg (root in typical use).
> 
> I guess package installation via dpkg would invoke scripts found in the
> package as part of intended functionality, so there would be no
> additional risk from your finding - but perhaps there are query-only
> uses where your finding matters?  You could want to elaborate on that.
> 
> I am not familiar with BusyBox's dpkg.
> 
> Replying in plaintext as I didn't bother searching for your public key,
> but I limited the quoting.  (And this gets encrypted to list subscribers
> anyway.)
> 
> Alexander

On Mon, Jul 13, 2026 at 12:57:10PM +0530, Anmol Bakshi wrote:
> Hi Alexander,
> 
> Thanks again for the detailed feedback - you're right, and I'm withdrawing
> this.
> 
> To close the loop on the impact question: run_package_script_or_die() is
> only
> reached during install / unpack / configure / remove, i.e. exactly the
> operations
> where a package's maintainer scripts are expected to run as root. BusyBox
> dpkg's
> only read-only operation (-l) doesn't touch that path. So the injected
> command runs
> with the same privilege a normal postinst already would; the unvalidated
> package
> name doesn't cross a boundary that an ordinary malicious maintainer script
> wouldn't.
> 
> I also considered the "trojan a real package, keep the same name to slip
> past
> review" angle, but it doesn't change that: dpkg -i on a local file does no
> signature
> or integrity check, so there's no verification for the name injection to
> bypass, and
> the operator has already chosen to run untrusted code as root regardless of
> what the
> scripts contain. No privilege boundary is crossed there either.
> 
> So I'm standing down the coordinated-disclosure request and won't pursue a
> CVE on
> this basis - no need for anyone on the list to hold anything for
> 2026-07-27. The one
> thing I still think is worthwhile is a hardening change to BusyBox
> (validate the
> package name as GNU dpkg does, and don't pass the path to a shell); I'll
> take that to
> BusyBox directly as a patch, outside this list.
> 
> Thanks for the time, and sorry for the noise.
> 
> 
> *Regards,*
> *सादर,*
> Anmol Bakshi

On Sat, Aug 22, 2026 at 09:46:57PM +0200, Solar Designer wrote:
> Hi Anmol,
> 
> I'm sorry everyone seems to have dropped the ball on this after your
> last message.  I understand you may have thought you could simply
> withdraw a report, but others on linux-distros should have realized
> that's not the case.
> 
> On Mon, Jul 13, 2026 at 12:57:10PM +0530, Anmol Bakshi wrote:
> > Thanks again for the detailed feedback - you're right, and I'm withdrawing
> > this.
> 
> Thanks, but currently you cannot just withdraw a report to linux-distros
> without bringing it to oss-security - all while acknowledging it was
> determined to be a non-security issue.  We need this for transparency.
> If the ratio of non-security reports becomes much larger, we'll have to
> reconsider this approach - and announce that publicly - but for now
> that's the approach we use and the oss-security community may expect.
> 
> Are you going to bring this to oss-security ASAP?  If not, I will.
> 
> Alexander
