Received: (qmail 5526 invoked by uid 550); 12 May 2026 15:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24258 invoked from network); 12 May 2026 14:07:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778594848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tQKyoVAaSP+Mol2eIDECMVr0Dg6uLBPaQ86q2rbkRi4=;
	b=C2RNyXORutxVabnZnxj6pluUyrmT7eSYB7TiUbNO/ACxyG3r9BCTTnkBGz4N/LGYCsATwt
	1SQfz+rbCa+nb2AiUq7rqL6Y/fGMGhKdCeio7aY/WdXiES9xm8XFb03/c4ObNFoxEeJuHN
	USmkbsgHiRfnP2D+JIZ/mfE6m0g4Q7hr76FJcvqPtuChVCtBJE4StOe1LqttryULIhQwxB
	ixM5iZUdfewtzo6GgiYoVcozLHVvDraoNBxUesG7WuZWIZ6ChvOtMDE4ajLYyySL+BfzEc
	QoSEEQ9uu0a5hCVX8Z1WElCZMhxSG2iYKvJ21XgmBhb8xCsqsHXVeCrYZ14fIQ==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <7B389E09-9A47-49DF-95AC-772AC2F98968@stig.io>
Date: Tue, 12 May 2026 16:07:16 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-8368: LWP::UserAgent versions before 6.83 for Perl leak
 Authorization and Proxy-Authorization headers on cross-origin redirects

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-8368                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-8368
  Distribution:  libwww-perl
      Versions:  before 6.83

      MetaCPAN:  https://metacpan.org/dist/libwww-perl
      VCS Repo:  https://github.com/libwww-perl/libwww-perl


LWP::UserAgent versions before 6.83 for Perl leak Authorization and
Proxy-Authorization headers on cross-origin redirects

Description
-----------
LWP::UserAgent versions before 6.83 for Perl leak Authorization and
Proxy-Authorization headers on cross-origin redirects.

On a 3xx response, the redirect handler strips only Host and Cookie
before issuing the follow-up request. Caller-supplied Authorization and
Proxy-Authorization headers are sent unchanged to the redirect target,
including across scheme, host, or port changes.

A redirect to an attacker controlled host therefore discloses the
caller's credentials to that host.

Problem types
-------------
- CWE-522 Insufficiently Protected Credentials

Solutions
---------
Upgrade to libwww-perl 6.83 or later.


References
----------
https://github.com/libwww-perl/libwww-perl/commit/9c4aeb6f2dd32f2b7eaf2d782=
7cade31ea6cb2c6.patch
https://metacpan.org/release/OALDERS/libwww-perl-6.83/changes
https://github.com/libwww-perl/libwww-perl/pull/512
https://github.com/libwww-perl/libwww-perl/pull/284

Timeline
--------
- 2026-05-11: Issue reported.
- 2026-05-12: libwww-perl 6.83 released with fix.

Credits
-------
Kai Aizen, reporter

