X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/18/1
Message-ID: <20260818051930.GA6573@openwall.com>
Date: Tue, 18 Aug 2026 07:19:30 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: trexnegr0 <mendozayt13@...il.com>, Marco Benatto <mbenatto@...hat.com>, Peter Jones <pjones@...hat.com>
Subject: AI slop "Combined chain advisory — fallback.efi/SBAT/memdisk bypass"
Content-Type: text/plain; charset=utf-8

Hi,

trexnegr0 (Jeremy Erazo) and/or his AI assistant brought this to the
distros list, to Red Hat security team, and to some others on June 21.
There was some discussion (see excerpts below) and it appeared that
there's no security relevance here.  However, trexnegr0 ought to have
brought this to oss-security on July 1st as promised anyway (even if
just to meet the distros list policy and provide transparency, but also
to let others judge possible security relevance or lack thereof).
Unfortunately, it seems everyone dropped the ball on it, so I am
bringing it in here belatedly.

If this were for real, then such usage of the distros list would have
been (even more) inappropriate because unfortunately this sort of issues
currently take longer to remediate than distros list maximum embargo
duration of 14 days.  It could possibly be reasonable to contact the
distros list once almost all other steps have been completed and a firm
public disclosure date within 14 days is set.

Alexander

On Sun, Jun 21, 2026 at 01:42:06PM +0000, trexnegr0 wrote:
> (This is a re-send to the openwall distros list with the [vs] anti-spam
> tag, after the original 2026-06-21 send bounced for missing it. The
> same advisory was already delivered to:
>   secalert@...hat.com, pjones@...hat.com,
>   mlewando@...hat.com, lsandova@...hat.com,
>   alexander.burmashev@...cle.com, phcoder@...il.com,
>   daniel.kiper@...cle.com
> Message-ID of the original: <178204921647.1738411.14419689064404810211@...il.com>)
> 
> Hello distros team,
> 
> This is a COORDINATED advisory for a multi-component bypass chain that
> crosses shim and GRUB2. Filing here for cross-distro embargo
> coordination.
> 
> == Components ==
> 
> (1) F-1 ??? shim fallback.efi BOOT.CSV path traversal
>     fallback.c:618-622, make_full_path() fallback.c:98-120
> (2) F-9 ??? fallback.efi has no signature / SBAT / MOK consultation
>     fallback.c contains zero verify_* calls
> (3) S-SBAT-UINT16 ??? UINT16 truncation in SBAT generation check
>     sbat.c:134-158
> (4) GRUB-F01 ??? verifier short-circuit for memdisk / procfs
>     grub-core/kern/verifiers.c:95-98
> 
> == The chain ==
> 
> Pre-conditions (Class A: brief physical access, or Class B: root):
>   - Attacker has ESP write.
>   - Microsoft 3rd-party UEFI CA signs the shim/grub vendor cert chain
>     that the target firmware trusts.
> 
> Step 1 ??? F-1 + F-9 (drop a Boot#### that bypasses shim):
> 
>   Attacker drops:
>     \EFI\01_attacker\BOOT.CSV
>        contains: "..\boothole\grubx64.efi,Recovery,,"
>     \EFI\boothole\grubx64.efi
>        any still-Microsoft-signed but SBAT-revoked grub binary
> 
>   On next boot, fallback.efi runs. populate_stanza() (fallback.c:618)
>   takes the filename column verbatim. make_full_path() concatenates
>   without filtering `\`, `/`, `..`. The Boot#### entry it writes
>   points at \EFI\boothole\grubx64.efi, outside the vendor dir.
> 
>   fallback.c has no verify calls (grep confirms 0 matches for
>   verify_image|verify_buffer|sbat). The Boot#### entry is launched
>   by firmware directly via BS->LoadImage on subsequent boots ???
>   bypassing shim's SBAT verification altogether.
> 
> Step 2 ??? S-SBAT-UINT16 (extend the trust horizon down):
> 
>   Once the attacker-controlled binary has BS-context exec, it
>   writes SbatLevel with a wrap-y generation value, e.g. "65538".
>   shim's verify_single_entry() at sbat.c:147 uses UINT16 storage:
> 
>       UINT16 sbat_gen, sbat_var_gen;
>       sbat_gen     = atoi(entry->component_generation);
>       sbat_var_gen = atoi(sbat_var_entry->component_generation);
>       if (sbat_gen < sbat_var_gen) return EFI_SECURITY_VIOLATION;
> 
>   atoi("65538") = 65538; UINT16 truncates to 2. Now ANY binary
>   with grub,2 (BootHole-era) satisfies 2 < 2 = false and passes
>   SBAT.
> 
> Step 3 ??? GRUB-F01 (load anything via memdisk):
> 
>   If the malicious grub from step 1 wraps its payload kernel in
>   a memdisk, kern/verifiers.c:95-98 short-circuits the verifier
>   chain. The kernel is loaded without any SBAT or shim-lock
>   verification.
> 
>       if (io->device->disk &&
>           (io->device->disk->dev->id == GRUB_DISK_DEVICE_MEMDISK_ID
>            || io->device->disk->dev->id == GRUB_DISK_DEVICE_PROCFS_ID))
>         return io;
> 
> == Severity ==
> 
> CVSS:3.1/AV:P/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H  ???  7.4 HIGH
> (Class A, evil maid; AV:P)
> 
> CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H  ???  6.4 MEDIUM
> (Class B, post-compromise root)
> 
> == Embargo ==
> 
> Standard 90-day embargo requested. shim and GRUB upstream security
> teams have already received the full advisory (see Message-ID
> header above). I'm willing to extend the embargo if you need extra
> coordination time for SBAT revocation rollout.
> 
> == Source tips audited ==
> 
> - shim-rhboot: c17fdb2 (2026-03-25)
> - grub-mainline: b07cc37 (2026-03-13)
> 
> Full patches for each component are in the original advisory; happy
> to re-paste here if you don't have access to the upstream thread.
> 
> Best,
> trexnegr0 (Jeremy Erazo)
> mendozayt13@...il.com

On Sun, Jun 21, 2026 at 05:25:39PM +0200, Solar Designer wrote:
> Hi trexnegr0 (Jeremy),
> 
> Thank you for sharing this with distros, but now we have a problem:
> 
> On Sun, Jun 21, 2026 at 01:42:06PM +0000, trexnegr0 wrote:
> > Standard 90-day embargo requested.
> 
> It's 14 days maximum on distros, as you should have found out from our
> policy on the same page that gives the [vs] tag:
> 
> https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters
> 
> "The maximum acceptable embargo period for issues disclosed to these
> lists is 14 days. Please do not ask for a longer embargo. In fact,
> embargo periods shorter than 7 days are preferable."
> 
> (with some of this in bold)
> 
> So the latest public disclosure date there can be is Sunday, July 5th.
> Since (near) a weekend is not ideal for this, how about July 1st, which
> is a Wednesday?
> 
> What do other distros suggest?  Please speak up.
> 
> > shim and GRUB upstream security
> > teams have already received the full advisory (see Message-ID
> > header above). I'm willing to extend the embargo if you need extra
> > coordination time for SBAT revocation rollout.
> > 
> > == Source tips audited ==
> > 
> > - shim-rhboot: c17fdb2 (2026-03-25)
> > - grub-mainline: b07cc37 (2026-03-13)
> > 
> > Full patches for each component are in the original advisory; happy
> > to re-paste here if you don't have access to the upstream thread.
> 
> What steps do you suggest distros take in response to your findings?
> 
> Also, why did you choose to include non-Linux distros?  On the full
> distros list, we also have FreeBSD, NetBSD, OmniOS, and Solaris - do you
> suggest any of these are affected?
> 
> Alexander

On Sun, Jun 21, 2026 at 03:46:12PM +0000, trexnegr0 wrote:
> Hi Solar (Alexander),
> 
> Thanks for the quick read and for the policy pointer — I missed the
> 14-day maximum.  Three responses, in the order you asked them.
> 
> == 1. Embargo length ==
> 
> I accept the 14-day cap.  **Wednesday, July 1st, 2026** as the public
> disclosure date works for me.  If any individual distro on the list
> needs the full 14 days for SBAT coordination please say so on-thread
> and I will defer to the group.
> 
> == 2. What I'd like distros to do ==
> 
> For each of the four components in the advisory:
> 
> (F-1 — fallback.efi BOOT.CSV path traversal)
>   * Apply a filter rejecting `\`, `/`, `..`, and control bytes in the
>     filename column of populate_stanza() (patch in the upstream thread
>     sent to secalert@...hat.com + the rhboot security team).
>   * Distros shipping fallback.efi from shim re-spin signed binaries
>     once the upstream merges.
> 
> (F-9 — fallback.efi calls no verify_*)
>   * In try_start_first_option(), call shim's verify protocol on the
>     target binary's bytes before BS->LoadImage is invoked.  Refuse to
>     install a Boot#### that fails SBAT/MOK/Authenticode.
>   * Same re-sign cycle as F-1.
> 
> (S-SBAT-UINT16 — shim sbat.c UINT16 truncation)
>   * One-line widen from UINT16 → UINT32 in verify_single_entry()
>     (sbat.c:136).  Same shim respin.
>   * On the SBAT side: this is the bug class that lets a Class-A
>     attacker re-arm a downgrade; I'd recommend Microsoft UEFI CA
>     consider a dbx update covering the BootHole-era binaries this
>     chain enables, but I leave that to your judgment.
> 
> (GRUB-F01 — kern/verifiers.c memdisk/procfs short-circuit)
>   * Refuse the short-circuit for `GRUB_FILE_TYPE_LINUX_KERNEL`,
>     `LINUX_INITRD`, `CHAIN_LOADER`, `MULTIBOOT_KERNEL`,
>     `BSD_KERNEL` — keep the SBAT/shim-lock verifier on for those
>     types even when source disk is memdisk/procfs.  Patch sketch
>     in the upstream thread.
>   * grub2 re-spin → SBAT generation bump candidate.
> 
> Cross-distro coordination on the SBAT generation bump for grub is
> the only item I think actually needs the embargo window — the per-
> component patches are individually small and clean.
> 
> == 3. Why I included non-Linux distros — honest answer ==
> 
> I included the full distros@ list by default rather than by
> analysis.  I do NOT have evidence that FreeBSD, NetBSD, OmniOS,
> or Solaris are affected by this chain.  The chain is Linux-specific:
> it requires the shim-from-rhboot binary signed under the Microsoft
> 3rd-party UEFI CA, GRUB2 with the SBAT-and-fallback support, and the
> Microsoft-CA-rooted vendor cert that those distros do not ship.
> 
> FreeBSD's amd64 EFI boot path uses loader.efi (not shim), as far as
> I'm aware; NetBSD and the illumos derivatives (OmniOS, Solaris)
> similarly do not use the shim+SBAT pipeline.
> 
> So: the BSD/illumos members of distros@ can treat this thread as
> informational only.  The mistake was on my side for not narrowing
> the recipient list before send — I apologise for the noise, and I
> will be more careful with scoping on future filings.
> 
> If anyone on those teams disagrees and believes their stack IS
> affected, please correct me on-thread.
> 
> == Other ==
> 
> I'll watch this thread daily through the embargo window.  Reach me
> off-list at this address if you need anything that shouldn't go on
> distros@.
> 
> Thanks again,
> trexnegr0 (Jeremy Erazo)
> mendozayt13@...il.com

On Sun, Jun 21, 2026 at 06:07:04PM +0200, Solar Designer wrote:
> Moving this to the linux-distros sub-list.
> 
> On Sun, Jun 21, 2026 at 03:46:12PM +0000, trexnegr0 wrote:
> > I accept the 14-day cap.  **Wednesday, July 1st, 2026** as the public
> > disclosure date works for me.  If any individual distro on the list
> > needs the full 14 days for SBAT coordination please say so on-thread
> > and I will defer to the group.
> 
> Thanks.  Please also confirm you will post about these issues to the
> public oss-security list on the public disclosure date.
> 
> > == 2. What I'd like distros to do ==
> 
> Thanks.  I'll let someone more familiar with this area comment on these
> steps.  A comment I have is that a shim respin will take a while,
> because each distro's updated shim will need to be signed by Microsoft.
> 
> > I'll watch this thread daily through the embargo window.  Reach me
> > off-list at this address if you need anything that shouldn't go on
> > distros@.
> 
> Thank you!
> 
> Please also disclose your use of AI, preferably with specifics, here and
> in the upcoming oss-security posting.
> 
> Alexander

On Sun, Jun 21, 2026 at 04:29:02PM +0000, trexnegr0 wrote:
> Hi Solar,
> 
> Thanks for moving the thread to linux-distros — that's the right scope.
> 
> Three responses, in order.
> 
> == 1. Public disclosure on oss-security ==
> 
> Confirmed.  I will post the advisory to oss-security@...ts.openwall.com
> on the disclosure date (Wednesday, July 1st, 2026) including the
> file:line references, severity assessment, the runtime ASAN reproducer
> output, and the patches as posted upstream.
> 
> == 2. shim re-spin timeline ==
> 
> Understood that Microsoft UEFI CA re-signing of each distro's updated
> shim adds wall-clock time on top of the source-fix turnaround.  If a
> distro on the list needs the embargo to extend beyond the standard
> 14-day cap for SBAT respin coordination, please speak up on-thread and
> I will defer to the group.  I'm happy to extend if it serves the
> ecosystem rollout.
> 
> == 3. AI use disclosure ==
> 
> I used AI (Claude, Anthropic) as an assistant at several points across
> the disclosure cycle: drafting writeups, generating initial patch
> suggestions, and helping organise the per-finding documentation.
> 
> Two things I want to be explicit about, because I think they're the
> load-bearing parts of these reports:
> 
> * Source-level verification of each finding was done by me, by reading
>   the upstream source at the cited file:line.  The line numbers in the
>   advisory match the current tip (re-fetched before send: shim-rhboot
>   c17fdb2, grub-mainline b07cc37).
> 
> * Runtime confirmation was done by me on my own host.  Each finding
>   has a standalone C harness compiled with `-fsanitize=address` (or
>   `-fsanitize=undefined` for logical bypasses) that traps the bug.  The
>   ASAN output quoted in the upstream advisories is from those runs;
>   the harnesses are reproducible by anyone with a recent gcc.  I'm
>   happy to share the harness sources off-list with any distro that
>   wants to validate independently.
> 
> I'd rather be early and transparent about this than have the question
> asked after the fact.  If oss-security has a preferred format for AI
> disclosure on the public post on July 1st, please tell me and I'll use
> it.
> 
> Best,
> trexnegr0 (Jeremy Erazo)
> mendozayt13@...il.com

On Mon, Jun 22, 2026 at 09:24:20AM -0700, Alan Coopersmith wrote:
> On 6/21/26 08:46, trexnegr0 wrote:
> >
> >FreeBSD's amd64 EFI boot path uses loader.efi (not shim), as far as
> >I'm aware; NetBSD and the illumos derivatives (OmniOS, Solaris)
> >similarly do not use the shim+SBAT pipeline.
> 
> Solaris is *not* an illumos derivative - both Solaris 11 & illumos are
> derived from the OpenSolaris sources, but forked in 2010.
> 
> Solaris 11.4 *does* use shim + grub, but obviously not the parts of this
> chain that extend into the Linux kernel.  We currently ship shim 15.8
> and grub 2.12.
> 
> -- 
>         -Alan Coopersmith-                 alan.coopersmith@...cle.com
>          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

On Mon, Jun 22, 2026 at 05:41:23PM -0300, Marco Benatto wrote:
> Thanks for your reply Peter.
> 
> I agree with Peter. If you have a valid signed binary or possess
> sufficient privileges to enroll the malicious binary hash or your own
> key using MOK, you don't need to exploit any flaw; you can directly
> load any malicious code you want. Thus I don't believe that's a CVE
> for shim nor grub.
> Please let us know if we may have missed anything.
> 
> On a side note, in case there's something we need to handle something
> under embargo that requires revocations (and specially signing) the
> default 14 days from this list wouldn't be enough to go through all of
> that.
> Given that, Alexander although initial analysis suggests we are having
> second thoughts about assigning a CVE to this report, if we find
> something valid, I might request an exception for this embargo.
> I have been handling secure boot related vulnerabilities with upstream
> since BootHole and this is probably the first time a report was sent
> to the distros list before (or at the same time as) it was sent
> upstream. The process of handling
> Fixing certain classes of vulnerabilities in a secure boot environment
> is slower than in other software because it often requires
> coordinating with several different parties and necessitates many shim
> builds to be reviewed and signed to properly address the flaws
> without rendering user's systems unbootable.
> 
> Thanks,
> 
> Marco Benatto
> Red Hat Product Security
> secalert@...hat.com for urgent response
> 
> On Mon, Jun 22, 2026 at 11:56???AM Peter Jones <pjones@...hat.com> wrote:
> >
> > On Sun, Jun 21, 2026 at 01:40:16PM +0000, trexnegr0 wrote:
> > > Hello shim and GRUB security teams,
> > >
> > > This is a COORDINATED advisory for a multi-component bypass chain
> > > that crosses shim and GRUB2. None of the four findings below is a
> > > clean stand-alone CVE ??? each one alone has a "you already had X"
> > > maintainer-pushback risk. Together they compose a credible
> > > Class A (evil-maid) or Class B (post-compromise root) SBAT bypass.
> > >
> > > I'm filing them as a single advisory so the response can be
> > > coordinated; please tell me if you'd rather see them split.
> > >
> > > == Components ==
> > >
> > > (1) F-1 ??? shim fallback.efi BOOT.CSV path traversal
> > >     fallback.c:618-622, make_full_path() fallback.c:98-120
> > > (2) F-9 ??? fallback.efi has no signature / SBAT / MOK consultation
> > >     fallback.c contains zero verify_* calls
> > > (3) S-SBAT-UINT16 ??? UINT16 truncation in SBAT generation check
> > >     sbat.c:134-158
> > > (4) GRUB-F01 ??? verifier short-circuit for memdisk / procfs
> > >     grub-core/kern/verifiers.c:95-98
> > >
> > > == The chain ==
> > >
> > > Pre-conditions (Class A: brief physical access, or Class B: root):
> > >   - Attacker has ESP write.
> > >   - Microsoft 3rd-party UEFI CA signs the shim/grub vendor cert chain
> > >     that the target firmware trusts.
> > >
> > > Step 1 ??? F-1 + F-9 (drop a Boot#### that bypasses shim):
> > >
> > >   Attacker drops:
> > >     \EFI\01_attacker\BOOT.CSV
> > >        contains: "..\boothole\grubx64.efi,Recovery,,"
> > >     \EFI\boothole\grubx64.efi
> > >        any still-Microsoft-signed but SBAT-revoked grub binary
> >
> > I don't understand this - Microsoft doesn't sign grub, there's no such
> > binary.
> >
> > >   On next boot, fallback.efi runs. populate_stanza() (fallback.c:618)
> > >   takes the filename column verbatim. make_full_path() concatenates
> > >   without filtering `\`, `/`, `..`. The Boot#### entry it writes
> > >   points at \EFI\boothole\grubx64.efi, outside the vendor dir.
> >
> > Why go to all this trouble?  If you can write to the ESP you can just
> > set the Boot#### variable.
> >
> > >   fallback.c has no verify calls (grep confirms 0 matches for
> > >   verify_image|verify_buffer|sbat).
> >
> > It calls BS->LoadImage(); either that's the firmware, in which case
> > it'll load shim, which does a self-test, or it'll reject grub, because
> > it's not signed by an enrolled certificate.
> >
> > >   The Boot#### entry is launched by firmware directly via
> > >   BS->LoadImage on subsequent boots ??? bypassing shim's SBAT
> > >   verification altogether.
> >
> > If you've enrolled a cert that trusts grub or a hash of grub, that's a
> > local issue and not a CVE.
> >
> > > Step 2 ??? S-SBAT-UINT16 (extend the trust horizon down):
> > >
> > >   Once the attacker-controlled binary has BS-context exec,
> >
> > Why would you do anything past here if you've got executing code?
> >
> > >   it writes SbatLevel with a wrap-y generation value, e.g. "65538".
> > >   shim's verify_single_entry() at sbat.c:147 uses UINT16 storage:
> > >
> > >       UINT16 sbat_gen, sbat_var_gen;
> > >       sbat_gen     = atoi(entry->component_generation);
> > >       sbat_var_gen = atoi(sbat_var_entry->component_generation);
> > >       if (sbat_gen < sbat_var_gen) return EFI_SECURITY_VIOLATION;
> > >
> > >   atoi("65538") = 65538; UINT16 truncates to 2. Now ANY binary
> > >   with grub,2 (BootHole-era) satisfies 2 < 2 = false and passes
> > >   SBAT.
> > >
> > >   This is the "BS-context attacker can rewrite policy" half of
> > >   the chain.
> >
> > Of course a BS-context attacker can overwrite policy, they've already
> > breached the security mechanism.
> >
> > > Step 3 ??? GRUB-F01 (load anything via memdisk):
> > >
> > >   If the malicious grub from step 1 wraps its payload kernel in
> > >   a memdisk, kern/verifiers.c:95-98 short-circuits the verifier
> > >   chain. The kernel is loaded without any SBAT or shim-lock
> > >   verification.
> >
> > Again, not seeing how you've gotten a malicious grub running.  But if
> > you did, you could already load anything you wanted.
> >
> > --
> >         Peter
