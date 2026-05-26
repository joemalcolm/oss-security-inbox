Received: (qmail 5782 invoked by uid 550); 26 May 2026 00:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32152 invoked from network); 26 May 2026 00:22:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779754950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sNDb6nlsL8xIOOz2LWcuQ5jH1vtIL2q560fGtUEEEnk=;
	b=nFIP/q5ij1f2n+SY0Uj4raLuEQNT3+m+a10M7QjSuY1lewPBGULNyYkWIvivY/d4dZ7+vX
	mCP/YF3vCQvoONNR6T78yycvJnM2JA0N9QcuUXaQ4vVDFckp1y5AD2h412AbIulT6yU8mB
	ssfpyoavSjKzbx5bP49vtyeinmLZFucpIPuT13I5oXt0XE8zwanJGOK3/1FOcRt9rj0pxv
	SBEQrfmoc4SyEQvTzzaa/Y7/coycSz7C46O8EjP8ldwDjN6UiwZtzHv/uJKEhd2ewf7oFz
	UdABVdl7p7njrOSAx/TkRQm6zJUYSxB+rcJq9idA/qhamKuU8gztKrY9beO9Wg==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <D67C8D47-06E4-4C31-9E99-850FBD9E71B1@stig.io>
Date: Tue, 26 May 2026 02:22:17 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-42496: Archive::Tar versions before 3.08 for Perl extract
 symlinks with attacker controlled targets outside the extraction directory

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-42496                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-42496
  Distribution:  Archive-Tar
      Versions:  before 3.08

      MetaCPAN:  https://metacpan.org/dist/Archive-Tar
      VCS Repo:  https://github.com/jib/archive-tar-new


Archive::Tar versions before 3.08 for Perl extract symlinks with
attacker controlled targets outside the extraction directory

Description
-----------
Archive::Tar versions before 3.08 for Perl extract symlinks with
attacker controlled targets outside the extraction directory.

_make_special_file() passes the tar header's linkname to symlink()
without validating it against absolute paths or .. segments. The
secure-extract mode check that guards regular file extraction does not
cover the symlink target.

A subsequent open through the extracted name reads or writes the
attacker chosen path.

Problem types
-------------
- CWE-59 Improper Link Resolution Before File Access ('Link Following')

Solutions
---------
Upgrade to Archive::Tar 3.08 or later.


References
----------
https://github.com/jib/archive-tar-new/commit/17c873492a05eddc0de18c1485e0b=
2cccd5a9158.patch
https://metacpan.org/release/BINGOS/Archive-Tar-3.08/changes
https://www.cve.org/CVERecord?id=3DCVE-2026-42497

Timeline
--------
- 2026-04-12: Issue reported.
- 2026-05-22: Version 3.08 released.

