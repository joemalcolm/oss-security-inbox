X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/01/2
Message-ID: <CAGwucU+gTtXQx6buC4PufhUBK-XNd7r1iz-sz2EDoVDrX4qqUw@mail.gmail.com>
Date: Tue, 1 Sep 2026 14:46:53 +0100
From: Samuel Page <sam@...ar.io>
To: oss-security@...ts.openwall.com
Subject: FreeRDP <= 3.30.0: five server-side vulnerabilities fixed in 3.31.0, pre-auth RCE demonstrated
Content-Type: text/plain; charset=utf-8

FreeRDP 3.31.0 (2026-08-26) fixes 5 vulnerabilities in FreeRDP's server role
that Bynario reported, as well as 17 other security issues. We were able to
demonstrate that 3 of the issues could be chained to achieve pre-auth remote
code execution, however we believe exposure to this specific chain is limited
(more detail below).

Affected projects include those that embed FreeRDP as an RDP server, including
GNOME Remote Desktop and KDE krdp. These are not typically enabled by default,
so affected machines are those that have been configured by an administrator to
use an affected remote desktop / login service. Client-role FreeRDP is not
affected by any of the 5 issues we reported.

Remediation: upgrade to FreeRDP 3.31.0. There is no 3.30.x point release, so
distributions on 3.30.0 or earlier need the 3.31.0 rebase or their own
backports.


The Vulnerabilities
===================

Below are summaries of the reported vulnerabilities. Note 2 through 5 require an
authenticated RDP session. Typically this is post-authentication, however for
remote login modes, 1 can be used to bypass authentication and setup an RDP
connection (used to render the login screen prior to local user auth), making
the other issues reachable.

1. Negotiation failure is not terminal (GHSA-x7v6-xfx3-52j6)

   CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:L/A:N (9.3, Critical)

   A server that rejects the client's protocol offer sends the failure PDU, does
   not close the socket, and then bit-tests the failure code as if it were a
   protocol selection. Every failure code the server can emit collides with a
   protocol bit, so an unauthenticated peer that ignores the rejection is
   dispatched into a security mechanism the server disabled and the client never
   requested. Which one depends on the server's policy: an NLA-only server
   enters RDSTLS, an RDP-enabled server enters NLA, otherwise TLS.

   Impact: pre-authentication security-mechanism selection bypass.

   Affected: 3.0.0-beta1 through 3.30.0.

2. RDPGFX ResetGraphics discloses uninitialised heap (GHSA-r7jx-j9h7-j4xj)

   CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N (6.5, Medium)

   The server serialises a fixed 340-byte PDU but seeks over the trailing
   padding instead of writing it, and sends the whole thing from an
   uninitialised buffer. A one-monitor reset discloses 300 bytes of stale heap
   to the peer.

   Impact: information disclosure. Demonstrated remote leak of heap + module
   pointers.

   Affected: 3.x through 3.30.0.

3. Channel PDU tracker offset desync (GHSA-9jcm-x588-gh26)

   CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H (7.5, High)

   An oversized static-virtual-channel message desynchronises the reassembler's
   offset; a later size calculation underflows and writes eight
   attacker-controlled bytes onto a live function-pointer-bearing object in the
   same allocation, which is then dereferenced immediately.

   Impact: build-dependent. On a default upstream build the process aborts
   before the write occurs, so it is a remote denial of service. The write only
   happens on builds with NDEBUG and WITH_VERBOSE_WINPR_ASSERT=OFF; Debian,
   Ubuntu, Fedora and Arch all ship this config. There it is a controlled 8-byte
   overwrite at a fixed, immediately-used address. Requires a channel opened
   with CHANNEL_OPTION_SHOW_PROTOCOL whose poll loop survives a failed poll; in
   the tree that is device redirection.

   Affected: 3.28.0, 3.29.0 and 3.30.0 only.

4. DRDYNVC parser uses a borrowed channel pointer after free
(GHSA-6mpx-c8rj-whj5)

   CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H (7.5, High)

   The dynamic-virtual-channel lookup returns a pointer from a synchronised
   table but drops the lock before returning and takes no reference, so a
   concurrent close on the channel's own worker thread frees the object under
   the parser.

   Impact: use-after-free. Confirmed under AddressSanitizer; the directly
   demonstrated impact is availability loss.

   Affected: 3.x through 3.30.0.

5. Smartcard ATR lengths are not bounded to their arrays (GHSA-q65v-4w7q-hx3r)

   CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H (6.5, Medium)

   Two server-side smartcard response decoders accept a client-supplied ATR
   length without checking it against the fixed 32- and 36-byte arrays that hold
   it, and pass it to consumers that trust it.

   Impact: out-of-bounds read; potential denial of service. No information
   disclosure.

   Affected: 3.28.0, 3.29.0 and 3.30.0.


Exposure
========

The table below shows which applications using FreeRDP's server role are
affected by which issue (using the indices above). cfg means reachability
depends on a specific config:

                              1     2     3       4     5
    GNOME Remote Desktop      yes   yes   51.beta yes   51.beta
    KDE krdp                  yes   yes   no      no    no
    Weston RDP backend        cfg   no    no      no    no
    freerdp-shadow-cli        cfg   yes   no      yes   no
    freerdp-proxy             cfg   no    no      no    no
    sfreerdp (sample server)  cfg   no    no      yes   no

The chain we demonstrated uses issues 1, 2 and 3. Only GNOME Remote Desktop
(GRD) 51 pre-release is affected by all three. More specifically GRD 51
pre-release introduces the channel required to reach issue 3's out-of-bounds
write. As a result, only distributions shipping pre-release GRD (and affected
FreeRDP) are confirmed to be affected by the full chain. As of writing, this
includes Fedora 45 & rawhide, Arch's gnome-unstable and CentOS Stream 11.

Furthermore, issue 1's impact varies depending on GNOME Remote Desktop's mode:

  - Remote Login: bypass the system-wide authentication used to setup an RDP
    connection (to reach the login screen).
  - Screen Sharing and headless: the same transition, but the authorization
    callback then queries an authentication context that does not exist and the
    daemon dies. Pre-authentication remote denial of service of the logged-in
    user's session daemon.

As a result, the chain we demonstrated using *these* issues is limited to
bleeding-edge releases using GRD's Remote Login mode (I imagine this is a small
pool!). However, it's only the post-authentication steps that have the GRD
pre-release requirements. The authentication bypass, issue 1, which exposes the
rich RDP attack surface has very wide coverage (e.g. Ubuntu 24.04 LTS onwards)
and may be chained with other n-day or 0-day issues to similar effect.


References
==========

  FreeRDP 3.31.0
    https://github.com/FreeRDP/FreeRDP/releases/tag/3.31.0
  Issue 1  https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-x7v6-xfx3-52j6
  Issue 2  https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-r7jx-j9h7-j4xj
  Issue 3  https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-9jcm-x588-gh26
  Issue 4  https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-6mpx-c8rj-whj5
  Issue 5  https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-q65v-4w7q-hx3r

Note: CVE identifiers are still pending assignment.


Credit
======

I would like to shout out @akallabeth for maintaining an awesome project and
handling our security reports extremely fast.

These issues were found and validated by Bynario Atlas, an AI automated
pipeline, while auditing FreeRDP 3.30.0. Reports were reviewed & submitted by
myself (Samuel Page / sam4k).

We'll share technical details on the RCE chain on our blog,
https://bynar.io/blog , after folks have had time to patch up.
