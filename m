Received: (qmail 9540 invoked by uid 550); 11 May 2026 21:35:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15968 invoked from network); 11 May 2026 21:18:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778534314;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TWDBMKcIzlK5a4kekOhD0H6qMlz2dJ6DcPYDRSLjWR4=;
	b=yq6HOaimrQAxPfKmb6BAKIzHEY9/quC51Rb283yxIfSk3epxmW+RYC67lDk9bkHQ/MjJDX
	lTaUCcsnSopeEKjpoX6gMB68Yb16RE96cMEsRYv43Vap6e5rGQROOePCOdNQ/ARD4vUhW8
	qQ5xd0NgaGGSElbbUMv27mcoEtr07mMEW8O5d6OX1bpEATu+6aLT9ucS6iu/kyXYnhBYds
	NI+CySN216BFoXluoI9xWVgHpZbj3VK8eFeHL6fI/q4rjtvkeyqLxVbjNF9+t2BJKWkyCg
	hVtSPr/6R+5PKYcA71kVgw6mFeSCj/5aOQrh1uVCH0nMHAniVr13MwSBwzEX4A==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <37024799-4603-4042-9296-3DAD7442C146@stig.io>
Date: Mon, 11 May 2026 23:18:22 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-7010: HTTP::Tiny versions before 0.093 for Perl do not
 validate CRLF in HTTP request lines or control field header values

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-7010                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-7010
  Distribution:  HTTP-Tiny
      Versions:  before 0.093

      MetaCPAN:  https://metacpan.org/dist/HTTP-Tiny
      VCS Repo:  https://github.com/Perl-Toolchain-Gang/HTTP-Tiny


HTTP::Tiny versions before 0.093 for Perl do not validate CRLF in HTTP
request lines or control field header values

Description
-----------
HTTP::Tiny versions before 0.093 for Perl do not validate CRLF in HTTP
request lines or control field header values.

The unvalidated inputs are the method and URI in the request line, the
URL host that becomes the `Host:` header, and HTTP/1.1 control data
field values.

An attacker who controls one of these inputs, for example a user
supplied URL passed to a webhook or URL fetch endpoint, can inject
additional headers and smuggle requests to the upstream server.

Problem types
-------------
- CWE-113 Improper Neutralization of CRLF Sequences in HTTP Headers
  ('HTTP Request/Response Splitting')

Solutions
---------
Upgrade to HTTP-Tiny 0.093-TRIAL or later.


References
----------
https://github.com/Perl-Toolchain-Gang/HTTP-Tiny/commit/d73c7651e82ace02693=
842df55928b6c3ae7c38d.patch
https://metacpan.org/release/HAARG/HTTP-Tiny-0.093-TRIAL/changes

Timeline
--------
- 2026-04-25: Issue discovered.
- 2026-05-11: HTTP-Tiny 0.093-TRIAL published with fix.


