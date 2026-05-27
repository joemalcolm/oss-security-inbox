Received: (qmail 22338 invoked by uid 550); 27 May 2026 04:22:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11577 invoked from network); 27 May 2026 03:16:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779851793;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G8qedKc/HSMOC/+dluBmW/t8LqUzcsgP6PWX8aW5ZBg=;
	b=eR1e3Ai2NLzdHtambUi4QOS54h/EX8bqAdNoSSL6vL++4R4N51khBrnP5f8N4t1ajfNeHS
	h4Yh2r3+0LDtPdGVOLZcPja5YuUbfjHGPT9CyGU5zngO8nk/ANRljY5TVTSwma+paPvdQD
	4xjeL+qni18xByo4Q7RHK/quum9DYPblqcIGH/WKUmM2iOh4AqK6cKzwKH00cLWXFgYWI8
	yu7hdnPpeJtAnsYcANAaYmrju9pgTqZmIRluwzpeebSjb8m6CMSP8TpHTrc4wYnF0Zh7gn
	UH9q1iNPbHxcAQqhtUrCWa9okEsZZATqohRImSq6Nl/GiReek4JBA2bRRScO8w==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <B93A97AC-6591-4662-BC69-7DB698965E97@stig.io>
Date: Wed, 27 May 2026 05:16:21 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-48962: IO::Compress versions before 2.220 for Perl can
 execute arbitrary code in File::GlobMapper via an attacker-controlled output
 glob

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-48962                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-48962
  Distribution:  IO-Compress
      Versions:  before 2.220

      MetaCPAN:  https://metacpan.org/dist/IO-Compress
      VCS Repo:  https://github.com/pmqs/IO-Compress


IO::Compress versions before 2.220 for Perl can execute arbitrary code
in File::GlobMapper via an attacker-controlled output glob

Description
-----------
IO::Compress versions before 2.220 for Perl can execute arbitrary code
in File::GlobMapper via an attacker-controlled output glob.

_parseOutputGlob() wraps the caller-supplied output glob string in
double quotes and stores it in the parser state; _getFiles() then runs
the stored expression through eval STRING. A literal double quote in
the output glob closes the dquote wrapper, and the characters that
follow are evaluated as Perl.

Arbitrary Perl in the output glob executes at the calling process's
privilege.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
  Code ('Eval Injection')

Solutions
---------
Upgrade to IO-Compress 2.220 or later.


References
----------
https://github.com/pmqs/IO-Compress/commit/f2db247bf90d4cc7ee2710be38494608=
1f3b4610.patch
https://metacpan.org/release/PMQS/IO-Compress-2.220/changes

Timeline
--------
- 2026-05-14: Issue reported.
- 2026-05-16: Version 2.220 released.


