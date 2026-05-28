Received: (qmail 29840 invoked by uid 550); 28 May 2026 20:56:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27918 invoked from network); 28 May 2026 14:16:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779977770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VpRjLz7Vi6bOyaeyBj//DKuRPgFjmlWAc/6aeK/4URQ=;
	b=VXL4p05JkCpAxxm81qXj8VZuMkRECXVlM4g0QZIJDyQnVrzM55lmKJW+03MrvhYz/PdiZq
	OQWXQnhZyHtNNDQAG1k4EI9fdq3cH7OQ0twzveXLmMdV8EIM8uhWoBGnAujX+fCkR9QmA9
	WLnux/cXa+srHp+Dv9unAPJqha3uZWaAc2/fDdOgUT0PZX31nUcwKBtRGakcXzw+E1KCMP
	6/vJ2zdo4f+CV7G4z3A39vhanTNqdJA0bdp169oe6pg8r0qanRd8dS88lBzHPGHs64sXVM
	Mgup3EolynIaGQzAKG4b4Gn6ncArkznSlw7iOKl2nHJy9N0YEaQ2IisVLyDXlQ==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <C1D83D75-7C38-45B6-8054-7AE9B86BF7D8@stig.io>
Date: Thu, 28 May 2026 16:15:58 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-41565: CryptX versions before 0.088_001 for Perl have a
 stack buffer overflow in four AEAD decrypt_verify helpers

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-41565                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-41565
  Distribution:  CryptX
      Versions:  before 0.088_001

      MetaCPAN:  https://metacpan.org/dist/CryptX
      VCS Repo:  https://github.com/DCIT/perl-CryptX


CryptX versions before 0.088_001 for Perl have a stack buffer overflow
in four AEAD decrypt_verify helpers

Description
-----------
CryptX versions before 0.088_001 for Perl have a stack buffer overflow
in four AEAD decrypt_verify helpers.

The gcm_decrypt_verify, ccm_decrypt_verify,
chacha20poly1305_decrypt_verify and eax_decrypt_verify XS routines
copied the caller-supplied authentication tag into a fixed 144-byte
stack buffer (MAXBLOCKSIZE) without checking the supplied length. A
longer tag overwrites the stack past the buffer. Version 0.088 added
the clamp to gcm_decrypt_verify, and 0.088_001 added it to the other
three.

Any caller of an affected helper that forwards an attacker-controlled
tag longer than the buffer can trigger the overflow.

Problem types
-------------
- CWE-121 Stack-based Buffer Overflow

Solutions
---------
Upgrade to CryptX 0.088_001 or later.


References
----------
https://github.com/DCIT/perl-CryptX/commit/57e69e541b0718ca8724c2f61514322a=
2d859bc1.patch
https://github.com/DCIT/perl-CryptX/commit/7e56347d420aaf43b2ee1586f4a23049=
2ccf1642.patch
https://metacpan.org/release/MIK/CryptX-0.088_001

Timeline
--------
- 2026-04-21: Issue reported.
- 2026-04-23: Version 0.088 released with fix for gcm_decrypt_verify.
- 2026-04-28: Version 0.088_001 released with fixes for the remaining
  three helpers.

