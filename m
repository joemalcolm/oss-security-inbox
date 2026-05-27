Received: (qmail 17799 invoked by uid 550); 27 May 2026 04:22:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18384 invoked from network); 27 May 2026 02:52:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779850321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5HYzSOwaaGbhVNz9GzxaeJHeWb8MovuVgxnljM5YXEc=;
	b=lW6sGebsRx7fPXW/xHfuIm5QIXSWRbtPamW19pg8KfRlk+bqqYpNLwca+da9ASbK6Qcyws
	KQt1auHu41EROH98aOI6BgSgjYvuK8UyfWLELLpoeudSEaDHnCNIut/Elvowa+F/XTyATW
	l6pEFI2kfYtQnLb0ZL41KJTI3FTp/iTz8QVPdJAkNkB4FmF064PZGUKoR9RQaLK8iuGOIk
	pRbpgeMJ88Q9+9r668bv0nagYB4CQUQ5WmI4lFFkG3naCe8XVCpFhfvehJ6T8JRxcXug20
	Zn4AWldij6LYnHUI5kX76NgqmuH4zsCVC/R1dbrXBaWupaD8loH4YTcVwPeYtQ==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <83F769CA-6ABC-4593-BFCF-CE79AAF62A8F@stig.io>
Date: Wed, 27 May 2026 04:51:49 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-48961: IO::Compress versions from 2.207 before 2.220 for
 Perl ship a zipdetails CLI tool that crashes with undefined subroutine on
 Info-ZIP Unix Extra Field with 8-byte UID or GID

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-48961                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-48961
  Distribution:  IO-Compress
      Versions:  from 2.207 before 2.220

      MetaCPAN:  https://metacpan.org/dist/IO-Compress
      VCS Repo:  https://github.com/pmqs/IO-Compress


IO::Compress versions from 2.207 before 2.220 for Perl ship a
zipdetails CLI tool that crashes with undefined subroutine on Info-ZIP
Unix Extra Field with 8-byte UID or GID

Description
-----------
IO::Compress versions from 2.207 before 2.220 for Perl ship a
zipdetails CLI tool that crashes with undefined subroutine on Info-ZIP
Unix Extra Field with 8-byte UID or GID.

When decode_ux() in bin/zipdetails handles an Info-ZIP Unix Extra Field
(tag 0x7875) with UID Size or GID Size set to 8, causing zipdetails to
decode an 8-byte UID or GID value, it dispatches through
decodeLitteEndian(), which calls a misnamed helper unpackValueQ. The
actual function defined in the same file is unpackValue_Q (with
underscore); the call raises 'Undefined subroutine &main::unpackValueQ'
and the script exits with status 255.

Library callers of IO::Compress and IO::Uncompress are not affected;
the defect is in the bundled CLI tool.

Problem types
-------------
- CWE-755 Improper Handling of Exceptional Conditions

Solutions
---------
Upgrade to IO-Compress 2.220 or later.


References
----------
https://github.com/pmqs/IO-Compress/commit/33c89d03d6e746ed2ead4f2f6570d478=
64c61bc7.patch
https://metacpan.org/release/PMQS/IO-Compress-2.220/changes

Timeline
--------
- 2026-05-14: Issue reported.
- 2026-05-16: Version 2.220 released.



