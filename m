X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/30
Message-ID: <19b6bc81-a01f-40dc-8412-cc6e10e048ec@oracle.com>
Date: Tue, 29 Sep 2026 10:36:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: groff 1.24.2 released
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: groff 1.24.2 released
Date: Tue, 29 Sep 2026 02:54:35 -0500
From: G. Branden Robinson <g.branden.robinson@...il.com>
To: info-gnu@....org, info-groff@....org
CC: groff@....org, linux-man@...r.kernel.org

We are anxious to announce the availability of groff 1.24.2.  This
release resolves recently discovered security vulnerabilities affecting
all groff releases dating back to 2012, and even farther.

Obtain it from the GNU mirror network,

   https://ftpmirror.gnu.org/groff/groff-1.24.2.tar.gz

or, if the network is for some reason inoperative, directly from GNU.

   https://ftp.gnu.org/gnu/groff/groff-1.24.2.tar.gz

Ensure the integrity of your download by checking this source code
archive's cryptographic signature; see "Obtaining groff" below.


What is groff?
==============

groff (GNU roff) is a typesetting system that reads plain text input
that includes formatting commands to produce output in PostScript,
PDF, HTML, or DVI formats or for display to a terminal.  Formatting
commands can be low-level typesetting primitives, macros from a
supplied package, or user-defined macros.  All three approaches can be
combined.

A reimplementation and extension of troff and other programs from AT&T
Unix, groff is widely available on POSIX and other systems owing to its
long association with Unix manuals, including man pages.  It and its
predecessor have produced several best-selling software engineering
texts.  groff can create typographically sophisticated documents while
consuming minimal system resources.

   https://www.gnu.org/software/groff/


Details
-------

Since groff 1.24.1 was released on 14 March 2026, 2 people have
authored a total of 6 commits on the "1.24.x" stable branch.

      5  G. Branden Robinson
      1  Deri James

This release resolves the following issues in the GNU Savannah ticket
tracker.

bug #68689: [PATCH] [mm] `mmroff` vulnerable to command injection (CWE-78)
bug #68688: [PATCH] [grohtml] `pre-grohtml` vulnerable to command injection (CWE-78)
bug #68687: [PATCH] [pdfmom] vulnerable to command injection (CWE-78)
bug #68152: [gxditview] SEGVs when invoked with no arguments

One way of capturing the amount of revision is as follows.

$ COLUMNS=72 git diff --stat 1.24.1 1.24.2
  ChangeLog                       | 52 +++++++++++++++++++++++++++++++++
  NEWS                            | 21 +++++++++++++
  arch/mingw/grap2graph.cmd       |  2 +-
  contrib/mm/ChangeLog            | 15 ++++++++++
  contrib/mm/mmroff.pl            |  2 +-
  doc/webpage.ms                  |  2 +-
  src/devices/gropdf/pdfmom.pl    | 29 ++++++++++++------
  src/devices/xditview/xditview.c | 24 ++++++++-------
  src/preproc/html/pre-html.cpp   | 11 +++++++
  src/roff/troff/input.cpp        | 14 +++++++++
  10 files changed, 149 insertions(+), 23 deletions(-)


Obtaining groff
===============

Here are the compressed sources and a GPG detached signature[*].
   https://ftp.gnu.org/gnu/groff/groff-1.24.2.tar.gz
   https://ftp.gnu.org/gnu/groff/groff-1.24.2.tar.gz.sig

Use a mirror for higher download bandwidth.
   https://ftpmirror.gnu.org/groff/groff-1.24.2.tar.gz
   https://ftpmirror.gnu.org/groff/groff-1.24.2.tar.gz.sig

Here are the SHA-1 and SHA-256 checksums.

8f43c4d049207689b85af8a211742d87356e64e6  groff-1.24.2.tar.gz
+cHv1b6743/G4QY9t0c86N8ePgvk/w9DzgT85X6cXdk=  groff-1.24.2.tar.gz

The SHA-256 checksum is encoded in Base64 instead of the hexadecimal
form that most checksum tools default to.  The mechanism follows.

sha256sum < groff-1.24.2.tar.gz | cut -f1 -d\  | xxd -r -p | base64

(Because "base64" reads from a pipe, it doesn't know the file name, and
so the file name will not appear in the output.)

[*] Use a .sig file to verify that the corresponding file (without the
     .sig suffix) is intact.  First, be sure to download both the .sig
     file and the corresponding archive.  Then, verify the archive.

       gpg --verify groff-1.24.2.tar.gz{.sig,}

     If that command fails because you don't have the required public
     key, you can import it.

       wget -O 108747.asc \
         'https://savannah.gnu.org/people/viewgpg.php?user_id=108747'
       gpg --import 108747.asc

     Re-run the 'gpg --verify' command above again subsequently.


Caveats
=======

o GNU tools, or otherwise POSIX-conforming ones, are generally required
   to build on Solaris 10 or 11.  See the "PROBLEMS" file in the
   distribution archive.

o Solaris 10 has known problems with automated tests; see the "PROBLEMS"
   file in the distribution archive.


News
====

This release corrects command injection security vulnerabilities
(CWE-78) in the mmroff, pdfmom, and pre-grohtml programs.  The last of
these is a preprocessor that is run when groff or troff is run with the
`-T html` or `-T xhtml` options.  The vulnerabilities are variously
14-26 years old.  Malicious input can escape groff's default "safer"
mode, running commands embedded in that input at the user's privilege
level.  The groff development team recommends this release to any users
who employ the named tools or GNU troff output formats with untrusted
inputs.

Man page rendering is not vulnerable unless rendering (X)HTML.

This release also resolves a command-line argument processing defect in
the gxditview program.  It is not known to have any security impact.

There are no new features.


Acknowledgements
================

We'd like to thank the following people for helping ensure the quality
of this release.

Deri James
Ingo Schwarze
Pavol Sloboda

