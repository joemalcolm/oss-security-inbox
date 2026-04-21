Received: (qmail 30203 invoked by uid 550); 21 Apr 2026 11:08:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29979 invoked from network); 21 Apr 2026 11:08:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:
	References; bh=qS+wd5xVfylkvAAxqt+KvV+IdX7z0AwoLUKVOfIxKc8=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1776769705;
	x=1777417705; b=jbMHzKfmiS2s+xwVURwXfgRgT5SATaAHooxzJ2zygWk+OS7PXfSxR8CwCviNc
	vzion+cWxMz4ILtjbwdfSOLK26YQd4ohxLkT4smLtKkW3amDQMaruj+cnWaohMpF9RfFpUqUAcUdx
	r3AfA0lBxxMKoxWaDqabblkzy95zbFT4WsGMU7XWyb5FY38ZMo7lWebAjna29TVVefDYm63mJvIyN
	upE8RC28vSVVrshbbOzs+zNTOQbqWZHazKH0N41SOC/rfq+knrB+bA8xtKgQAs+ZMYBl4mZ8CQ3nN
	c5tnrXy0BMR6KNqgb1BuOYEPtA1SzObJfGPekRkE6UfzbE/7bQ==;
Date: Tue, 21 Apr 2026 14:08:08 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <aedYDeJs499s-v-7@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] Libgcrypt security releases 1.12.2, 1.11.3, 1.10.x

The following announcement regarding libcrypt security releases was posted to
gnupg-announce and related lists today. The forward is unedited except
for trimming some footers inserted by mailing list software and the
PGP/MIME signature.

----- Forwarded message from Werner Koch via Gnupg-devel <gnupg-devel@gnupg.org> -----

Date: Tue, 21 Apr 2026 12:28:09 +0200
From: Werner Koch via Gnupg-devel <gnupg-devel@gnupg.org>
To: gnupg-announce@gnupg.org
Cc: Werner Koch <wk@gnupg.org>, info-gnu@gnu.org
Subject: [Announce] [Security fixes] Libgcrypt 1.12.2, 1.11.3, 1.10.x released

Hello!

We are pleased to announce the availability of couple of new Libgcrypt
versions: 1.12.2, 1.11.3, and 1.10.4 .  It is suggested to use 1.12.2
which is fully compatible with all earlier versions.

This version fixes a security bug [T8211] which can be used used to
mount a DoS using ECDH encryption (with NIST, Brainpool, X448, or X25519
curves).  Note that GnuPG versions since 2.5.7 are not affected by this
bug due to the use of a different encryption API.

Another security bug [T8208] was fixed in the Dilithium signing
algorithm which is available since version 1.12.0.


Noteworthy changes in version 1.12.2 (2026-04-15)
====================================

 * Bug fixes:

   - Fix possible ECDH buffer overwrite with zeroes.  [T8211]

   - Add a missing bounds check to the Dilithium context handling.
     Reported by Calif.io in collaboration with Claude and Anthropic
     Research.  [T8208]

   - Add point validation when using the new KEM interface.  [T8212]

 * Other:

   - Fix the dead-code of stronger_key_check for RSA.  [T8171]

 For a list of links to commits and bug numbers see the release info at
 https://dev.gnupg.org/T8114 .  However, due to an ongoing AI scraper
 DDoS the site might not be reachable at all times or from all IPs.


Noteworthy changes in version 1.11.3 (2026-04-21)
====================================

 * Bug fixes:

   - Fix possible ECDH buffer overwrite with zeroes.  [T8211]

   - Add point validation when using the new KEM interface.  [T8212]

   - Fix compiler error on NetBSD.  [T7633]

   - mceliece6688128f: Fix stack overflow crash on win64/wine
     [rCb17ed8d1af]

   - Apply a Kyber patch from upstream.  [rC5ba143d51f]

   - Use CSIDL_COMMON_APPDATA instead of /etc on Windows.  [rC995b870fd2]

   - Use secure MPI in _gcry_mpi_assign_limb_space.  [rC520c699c82]

   - Fix a regression with disabled public-key algo for FIPS.
     [T7338,rCc6e0658004]

 * Other:

   - Handle HAVE_BROKEN_MLOCK for the case of building with ASAN.
     [T7889]

   - Add stack burning for PQC algorithms.  [rC289c0a596f]

 Release-info: https://dev.gnupg.org/T8232


Noteworthy changes in version 1.10.4 (2026-04-21)
====================================

 NOTE: The 1.10 series reaches end-of-life in 6 weeks.

 * Bug fixes:

   - Fix possible ECDH buffer overwrite with zeroes.  [T8211]

   - Fix AESWRAP padding length check.  [T7130]

 * Other:

   - Handle HAVE_BROKEN_MLOCK for the case of building with ASAN.
     [T7889]

 Release-info: https://dev.gnupg.org/T8233



Download
========

Source code is hosted at the GnuPG FTP server and its mirrors as listed
at https://gnupg.org/download/mirrors.html.  On the primary server
the source tarball and its digital signature are:

 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2.sig
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.11.3.tar.bz2
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.11.3.tar.bz2.sig
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.4.tar.bz2
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.4.tar.bz2.sig

or gzip compressed:

 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.gz
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.gz.sig
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.11.3.tar.gz
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.11.3.tar.gz.sig
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.4.tar.gz
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.4.tar.gz.sig

In order to check that the version of Libgcrypt you downloaded is an
original and unmodified file please follow the instructions found at
https://gnupg.org/download/integrity_check.html.  In short, you may
use one of the following methods:

 - Check the supplied OpenPGP signature.  For example to check the
   signature of the file libgcrypt-1.12.2.tar.bz2 you would use this
   command:

     gpg --verify libgcrypt-1.12.2.tar.bz2.sig libgcrypt-1.12.2.tar.bz2

   This checks whether the signature file matches the source file.
   You should see a message indicating that the signature is good and
   made by one or more of the release signing keys.  Make sure that
   this is a valid key, either by matching the shown fingerprint
   against a trustworthy list of valid release signing keys or by
   checking that the key has been signed by trustworthy other keys.
   See the end of this mail for information on the signing keys.

 - If you are not able to use an existing version of GnuPG, you have
   to verify the SHA-1 checksum.  On Unix systems the command to do
   this is either "sha1sum" or "shasum".  Assuming you downloaded the
   file libgcrypt-1.12.2.tar.bz2, you run the command like this:

     sha1sum libgcrypt-1.12.2.tar.bz2

   and check that the output matches the first line from the
   this list:

7b8ff21966a0b6e7a735466b9b9b55d9dac9fa87  libgcrypt-1.12.2.tar.bz2
a1b1d5561e7b743e7e4460a49015053da1901124  libgcrypt-1.12.2.tar.gz
d252f6b0a62fcacb8f82bcb61440b25d698a0a05  libgcrypt-1.11.3.tar.bz2
a89b597965a76bfbe0ad11e3d6153c3709c0b07e  libgcrypt-1.11.3.tar.gz
d824efa873ac210e84573564df4a99f4cd5cdf77  libgcrypt-1.10.4.tar.bz2
5a5bb8d4dd69a2c7828dbf31b12df5e21e604971  libgcrypt-1.10.4.tar.gz

   You should also verify that the checksums above are authentic by
   matching them with copies of this announcement.  Those copies can be
   found at other mailing lists, web sites, and search engines.


Copying
=======

Libgcrypt is distributed under the terms of the GNU Lesser General
Public License (LGPLv2.1+).  The helper programs as well as the
documentation are distributed under the terms of the GNU General Public
License (GPLv2+).  The file LICENSES has notices about contributions
that require that these additional notices are distributed.


Support
=======

For help on developing with Libgcrypt you should read the included
manual and if needed ask on the gcrypt-devel mailing list.

In case of problems specific to this release please first check
https://dev.gnupg.org/T8114 for updated information.

Please also consult the archive of the gcrypt-devel mailing list before
reporting a bug: https://gnupg.org/documentation/mailing-lists.html .
We suggest to send bug reports for a new release to this list in favor
of filing a bug at https://bugs.gnupg.org.  If you need commercial
support go to https://gnupg.com or https://gnupg.org/service.html .

Please see https://gnupg.org/documentation/security.html for information
on how to report security issues and for our threat model.

If you are a developer and you need a certain feature for your project,
please do not hesitate to bring it to the gcrypt-devel mailing list for
discussion.


Thanks
======

Since 2001 maintenance and development of GnuPG is done by g10 Code GmbH
and has mostly been financed by donations.  Several full-time employed
developers and contractors are working exclusively on GnuPG and closely
related software like Libgcrypt, GPGME, Kleopatra and Gpg4win.

Fortunately, and this is still not common with free software, we have
now established a way of financing the development while keeping all our
software free and freely available for everyone.  Our model is similar
to the way RedHat manages RHEL and Fedora: Except for the actual binary
of the MSI installer for Windows and client specific configuration
files, all the software is available under the GNU GPL and other Open
Source licenses.  Thus customers may even build and distribute their own
version of the software as long as they do not use our trademarks
GnuPG Desktop® or GnuPG VS-Desktop®.

We like to thank all the nice people who are helping the GnuPG project,
be it testing, coding, translating, suggesting, auditing, administering
the servers, spreading the word, answering questions on the mailing
lists, or helping with donations.

*Thank you all*

   Your Libgcrypt hackers



p.s.
This is an announcement only mailing list.  Please send replies only to
the gcrypt-devel'at'gnupg.org mailing list.

* List of Release Signing Keys:
  To guarantee that a downloaded version has not been tampered by
  malicious entities we provide signature files for all tarballs and
  binary versions.  The keys are also signed by the long term keys of
  their respective owners.  Current releases are signed by one or more
  of these five keys:

    ed25519 2020-08-24 [SC] [expires: 2030-06-30]
    6DAA 6E64 A76D 2840 571B  4902 5288 97B8 2640 3ADA
    Werner Koch (dist signing 2020)

    ed25519 2021-05-19 [SC] [expires: 2027-04-04]
    AC8E 115B F73E 2D8D 47FA  9908 E98E 9B2D 19C6 C8BD
    Niibe Yutaka (GnuPG Release Key)

    rsa3072 2025-05-09 [SC] [expires: 2033-03-03]
    3B76 1AE4 E63B F351 9CE7  D63B ECB6 64CB E133 2EEF
    Alexander Kulbartsch (GnuPG Release Key)

    brainpoolP256r1 2021-10-15 [SC] [expires: 2029-12-31]
    02F3 8DFF 731F F97C B039  A1DA 549E 695E 905B A208
    GnuPG.com (Release Signing Key 2021)

    brainpoolP384r1 2026-02-23 [SC] [expires: 2034-02-23]
    1493 269D E61F 124A A69A  316E 3ADF 34EB DBB2 00A4
    GnuPG.com (Release Signing Key 2026)

  The keys are available at https://gnupg.org/signature_key.html and in
  any recently released GnuPG tarball in the file g10/distsigkey.gpg .
  Note that this mail has been signed by a different key.

* Debian Package Signing Key:
  The new Debian style packages are signed using this key:

    ed25519 2025-07-08 [SC] [expires: 2035-07-14]
    3209 7B71 9B37 45D6 E61D DA1B 85C4 5AE3 E1A2 B355
    GnuPG.org Package Signing Key <package-maintainers@gnupg.org>

  See the package website (https://repos.gnupg.org/deb/gnupg) for a list
  of supported distributions and a download link for the key.

--
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein


----- End forwarded message -----
