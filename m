Received: (qmail 9807 invoked by uid 550); 26 May 2026 00:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30356 invoked from network); 26 May 2026 00:29:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779755333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=P/4JuRbNcWNzjMk1r9Xh0ufSDVRXy6shWy+4WWhXIps=;
	b=bxaMDxoZguFBNHC0hMiW/4xKXPFEyL6/zSQ5nhKhzevLbuz07lEGr18FwMhsVss1fkuP5k
	LAEJWbzd7gLECIdL+3b4IASiElwZPIaxMw9QXphai5+8FMwdV4JVeveXz6cIeLvhj6HgK0
	smvOkGFOoe9OiLPz/SPWYWcgk4MbvrryeuJmr1vHdllXQYCB4TA+E0LYz3th4cMLYDa8t8
	TYrXGD7h9VssAaSKYM87mDnRhx8ua2HO3dBISOYVcokS+pW14k0wP1Mc0t0f+hVatXHTxI
	DCNCJrYHueEnKIEkXmLFE58AYflEpfC34USwy89B92cU2Jl74KeBK3Q33D5SlA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <8F78BD12-E0FA-475E-A43E-ADAEB0B238B2@stig.io>
Date: Tue, 26 May 2026 02:28:42 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-9538: Archive::Tar versions before 3.10 for Perl allow
 memory exhaustion via attacker controlled entry size field in tar header

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-9538                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-9538
  Distribution:  Archive-Tar
      Versions:  before 3.10

      MetaCPAN:  https://metacpan.org/dist/Archive-Tar
      VCS Repo:  https://github.com/jib/archive-tar-new


Archive::Tar versions before 3.10 for Perl allow memory exhaustion via
attacker controlled entry size field in tar header

Description
-----------
Archive::Tar versions before 3.10 for Perl allow memory exhaustion via
attacker controlled entry size field in tar header.

_read_tar() reads each entry's payload with $handle->read($$data,
$block), where $block is derived from the entry's 12-byte size field in
the tar header with no upper bound on that value.

A crafted header declaring a multi-gigabyte size causes Perl to
allocate a scalar of that size.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Archive::Tar 3.10 or later.


References
----------
https://github.com/jib/archive-tar-new/commit/f9af01426038e29d9578825a0cd36=
26946ab08c7.patch
https://metacpan.org/release/BINGOS/Archive-Tar-3.10/changes

Timeline
--------
- 2026-05-25: Issue reported.
- 2026-05-25: Version 3.10 released.


