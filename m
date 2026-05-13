Received: (qmail 30470 invoked by uid 550); 13 May 2026 15:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11397 invoked from network); 13 May 2026 12:43:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778676224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VtXVWfcuunwuJfCgXbRoBgVYsYv09+/WAcNySOU+6HM=;
	b=MmCvKTA7Z0edUUsVEYWVT3I+CDMZcli2dr5+Qk+2Y+hQ7FuK3+luygj6UDVUbPTPtpP6zn
	rRVf8OTeN0Kqh00fLnxMjAYaGokLEF5O4NMz8qFhkCxn7T2f7cFOxKZtWhsSXCJSwjJZr2
	cY13AbQM+NyQeyQN5/1eyK7i2YwqB6VbNiMUy5mmMjbhPWX1DH0ryUC0AMuh0qFNHoNFtk
	nV40Z959htaMV8KqPwszdcTQe44hFoL263ylt5y52aSFTa851wrjgABdnOMOspxQO/j2WV
	1gzNKv3cXwyUUXV5TwNOUmuXE3I3cKOgHD20C5320sV3EKMS+bmFp7qq4Cfivw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <F409C898-0484-4CA7-84D7-DBA09CC58BB5@stig.io>
Date: Wed, 13 May 2026 14:43:32 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-8463: Crypt::Argon2 versions from 0.017 before 0.031 for
 Perl perform a heap out-of-bounds read in argon2_verify on empty encoded
 input

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-8463                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-8463
  Distribution:  Crypt-Argon2
      Versions:  from 0.017 before 0.031

      MetaCPAN:  https://metacpan.org/dist/Crypt-Argon2
      VCS Repo:  https://github.com/Leont/crypt-argon2


Crypt::Argon2 versions from 0.017 before 0.031 for Perl perform a heap
out-of-bounds read in argon2_verify on empty encoded input

Description
-----------
Crypt::Argon2 versions from 0.017 before 0.031 for Perl perform a heap
out-of-bounds read in argon2_verify on empty encoded input.

The auto-detect form of argon2_verify passes encoded_len - 1 as the
length argument to memchr without checking that encoded_len is
non-zero. When the encoded string is empty, the size_t subtraction
underflows to SIZE_MAX and memchr scans adjacent heap memory looking
for a '$' separator byte.

A caller that invokes argon2_verify against a stored hash that may
legitimately be empty (for example a placeholder row or a NULL column
materialised as an empty string) reads out-of-bounds heap memory, which
can crash the process or leak the position of an adjacent '$' byte into
subsequent parsing.

Problem types
-------------
- CWE-126 Buffer Over-read
- CWE-191 Integer Underflow (Wrap or Wraparound)

Solutions
---------
Upgrade to Crypt-Argon2 0.031 or later.


References
----------
https://github.com/Leont/crypt-argon2/commit/92eac03ce63d541e0ead7ea5a89b9b=
67ce0c0e64.patch
https://metacpan.org/release/LEONT/Crypt-Argon2-0.031/changes

Timeline
--------
- 2026-05-12: Issue reported.
- 2026-05-13: Crypt-Argon2 0.031 released with fix.


