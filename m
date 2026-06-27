X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/8
Message-ID: <aj_WI9fk0uauFBtt@ryzen.an3e.de>
Date: Sat, 27 Jun 2026 15:54:43 +0200
From: Matthias Andree <matthias.andree@....de>
To: oss-security@...ts.openwall.com
Subject: fetchmail's NTLM authentication vulnerable to stack buffer overflow up to release 6.6.6 (FW: The 6.6.7.rc1 release candidate is available (security fix for NTLM protocol, possible RCE))
Content-Type: text/plain; charset=utf-8

fetchmail release candidate 6.6.7.rc1 fixes a potential
remote code execution (stack smashing) in the NTLM authentication code.  
It is already discouraged due to weak crypto and disabled by default,
but binary packages may enable NTLM on fetchmail for compatibility.

I have requested a CVE from MITRE.

This is to inform distributors that they either need to
update fetchmail to 6.6.7.rc1, or disable NTLM in their builds.

-----------------------------------------------------------------

The 6.6.7.rc1 release candidate of fetchmail tightens code
around a security vulnerability in the NTLM code.
It is now available at the usual locations, including 
<https://downloads.sourceforge.net/project/fetchmail/branch_6.6/>.

Depending on compilation options around --enable-NTLM and protective 
features such as stack smashing protection, fortification and other 
means, around 52 bytes might be overwritten on the stack, and we
cannot rule out that remote code execution be mounted.

Fetchmail builds that did not enable NTLM at compile time are 
unaffected.  fetchmail -V | head -1 will show "+NTLM" if NTLM was 
enabled, for instance (note the presence of +NTLM):

This is fetchmail release 6.6.2+GSS+RPA+NTLM+SDPS+TLS+NLS+KRB5.

A version in French locale that is not vulnerable to this NTLM
bug might reporto (note the absense of +NTLM):
Ceci est fetchmail, version 6.6.7.rc1+TLS+NLS.


The security announcement will be provided at a later date, it is
important to get the fix out; inaccuracies in the report might hint
at AI being used in the generation of the report, so holding back 
anything whilst a simple fix is available is a disservice to users.

Workaround: use the --auth PARAM option, where PARAM is another
mechanism (not NTLM) supported by fetchmail and by the IMAP or POP3 
server.  This may not be viable on shared multi-user systems.

Workaround for distributors and system operators:
Recompile fetchmail with --disable-NTLM option and reinstall it.
To confirm, look at the fetchmail -V | head -1 output, it should NOT 
mention +NTLM.

The immediate minimal fix can be cherry-picked from
https://gitlab.com/fetchmail/fetchmail/-/commit/cb5be5c38471eec19e519ace0bc569176317ea92
with a compiler warning fix in
https://gitlab.com/fetchmail/fetchmail/-/commit/ddf19ffab973bf6a424f878faa8ff6753ddf6246

Note though that 6.6.7.rc1's NTLM authentication fixed other bugs that 
are believed to not be exploitable beyond slowing down fetchmail while 
waiting for server I/O, which usually would not be a high risk.
Fetchmail usually applies timeouts to network reads.

The .pot file has been provided to the translation project, we have 
a few new messages that need translation.

Please report any regressions to the fetchmail-user mailing list,
or if security-sensitive observations are made, directly to me.


Note on AI assisted bugfinding and -fixing:
* Tell your AI to reply tersely and any assurances that are not
verifiably proven and that you have not proved to be true.
Some AIs guess and then are very assertive, like a lying child,
that it really is what it is, but does not provide the proof.
I am not interested in reading such AI slop. That time is
wasted and not available for other development work.
* Provide a proof of concept, or a unit test or similar, as code,
and prove that it practically compiles on a recent release version of 
Fedora Linux, FreeBSD, OpenBSD or Debian Linux.  I won't follow manual 
instructions.  It must compile out of the box within the folder of the
latest release package of fetchmail or build directory.
* Be careful with what AIs believe to be root causes or suggest as 
fixes.  Before providing an AI fix suggestion, prove that it fixes
not only one particular situation, but apply experience-based testing
or fuzzing to prove similar situations are also implied in the fix.


The source archive is available at:
<https://downloads.sourceforge.net/project/fetchmail/branch_6.6/fetchmail-6.6.7.rc1.tar.xz/download>

The detached GnuPG signature is available at:
<https://downloads.sourceforge.net/project/fetchmail/branch_6.6/fetchmail-6.6.7.rc1.tar.xz.asc/download>

The SHA256 hashes for the tarballs are:
SHA2-256(fetchmail-6.6.7.rc1.tar.xz)= d03b9abee39c64333703dc1d2512f0259698a5e130d344c375e1b42d1d2056e4


Here are the release notes:
--------------------------------------------------------------------------------
fetchmail-6.6.7 (not yet released):

## SECURITY BUGFIX FOR --enable-NTLM builds:
* Safeguard internal NTLM buffer handling to avoid overrun if server
  sends extremely long fields in the challenge, to avoid stack corruption.
  Reported by "Tristan".

  The code will report the buffer sizing issue and abort the NTLM authentication
  flow properly so that it's clear that message sizes are the issue.
  Fetchmail 6.6.7 currently supports 1 kByte of NTLM payload for each of the
  three messages, plus header.

  NOTE: NTLM is based on obsolete cryptographic mechanisms
  and should not be used without TLS or SSL security for the transport.

  NOTE: fetchmail 7 will remove support for NTLM and MSN authentication.
  Microsoft (who own the specification) generally advises that applications
  should not use NTLM, and is replacing with with Kerberos, see
  [MS-NLMP]: NT LAN Manager (NTLM) Authentication Protocol,
  https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-nlmp/
  See Introduction and Security Considerations for Implements
  (In Version 37.0 of the spec, sections 1 and 5.1 on page 84)

## BUGFIXES:
* The IMAP protocol exchange was made stricter, (1) it will validate tagged
  responses that we received the right response to make sure fetchmail
  and the IMAP server are still in synch, (2) it will no longer accept
  the response words OK, NO, BAD, BYE if there is trailing garbage,
  such as OKAY or NONE.
* For NTLM: Made protocol exchange more robust and make it track errors
  and SASL cancellation better to avoid hangs if NTLM does not work but other
  authentication schemes do or NTLM gets rejected by the server.

-------------------------------------------------------------------------------
fetchmail-6.6.6 (released 2026-06-24, 32443 LoC):

## CRITICAL BUGFIX FOR IMAP:
* The IMAP client, which has always used message indexes for the selected
  mailbox, did not abort when receiving an EXPUNGE response - which changes
  message numbers inside the mailbox.  Unlike UIDs, the message numbers are
  not stable and fetchmail does not have internal interfaces to track which
  messages are deleted, and adding those to a 6.6.X release would be too
  risky, and switching to UID is also too big a change, so we have no
  choice but to abort the session when seeing an EXPUNGE response without
  our own EXPUNGE request, to avoid marking the wrong message as seen/deleted
  or skip the wrong one, or assume the wrong message size.
  Earl Chew reported this versus Yahoo Mail via Gitlab Work Item #91, which
  automatically expunges messages that are marked with the \Deleted flag.

  This has one new message for which we do not have translations yet,
  it is urgent to get the fix in the field.

-------------------------------------------------------------------------------

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
