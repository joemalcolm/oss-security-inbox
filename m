Received: (qmail 7649 invoked by uid 550); 26 May 2026 00:30:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14186 invoked from network); 26 May 2026 00:25:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779755129;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=31IxseTpMt3bBtqWnIHhqGdSpXO0naoBvgqaPBuVr3Q=;
	b=l4ehteWTK0gzJlepCLBM39PGnCBUU8MLY5ElYBUpDHfCFgyOtfF4gRJZ0JiCaZF6YC7V72
	/QnInMI5kTAfX8dLImcub3YfwZ+Qyo0RkOhoy1P8l2RocBxZCW0mUkY25bz5a0HpsawaWl
	BrfU135vDlByQYkphAKhnHEnQngLuA26T/qKYhjGvsEZUiXTgVXNvxByq4mA060/UQ7lxq
	8AzCBqw5NiqyH8/sv9Q/+YMugD6tLQNjlOrAf+GhNNzzd1zK4bv9C0k7ACZUomHSk+ccUD
	gsPfgypjSxBI2xaagd9zENl++BOIobIBj6uBDs7gnpwigFksoMWoG2mP6mU59Q==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <A0927582-6F48-48F2-987A-1DCE47177038@stig.io>
Date: Tue, 26 May 2026 02:25:17 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-42497: Archive::Tar versions before 3.08 for Perl extract
 hardlinks to attacker controlled paths outside the extraction directory

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-42497                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-42497
  Distribution:  Archive-Tar
      Versions:  before 3.08

      MetaCPAN:  https://metacpan.org/dist/Archive-Tar
      VCS Repo:  https://github.com/jib/archive-tar-new


Archive::Tar versions before 3.08 for Perl extract hardlinks to
attacker controlled paths outside the extraction directory

Description
-----------
Archive::Tar versions before 3.08 for Perl extract hardlinks to
attacker controlled paths outside the extraction directory.

_make_special_file() passes the tar header's linkname to link() without
validating it against absolute paths or .. segments, creating a
hardlink that shares the victim file's inode.

A subsequent write through the extracted name modifies the victim file,
and the post-extraction chmod, chown, and utime block in
_extract_file() (guarded only against symlinks via -l) applies the tar
header's mode, owner, and timestamps to the shared inode during
extraction alone.

Problem types
-------------
- CWE-59 Improper Link Resolution Before File Access ('Link Following')
- CWE-732 Incorrect Permission Assignment for Critical Resource

Solutions
---------
Upgrade to Archive::Tar 3.08 or later.


References
----------
https://github.com/jib/archive-tar-new/commit/17c873492a05eddc0de18c1485e0b=
2cccd5a9158.patch
https://metacpan.org/release/BINGOS/Archive-Tar-3.08/changes
https://www.cve.org/CVERecord?id=3DCVE-2026-42496

Timeline
--------
- 2026-04-12: Issue reported.
- 2026-05-10: Version 3.06 released, disabling hardlink extraction by
  default.
- 2026-05-22: Version 3.08 released.


