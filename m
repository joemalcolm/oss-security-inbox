Received: (qmail 9226 invoked by uid 550); 18 Feb 2025 17:03:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30468 invoked from network); 18 Feb 2025 16:56:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aevum.de; s=mail;
	t=1739897801; bh=MpS/mBrl4Y1DYvNAgSe4JLJlS+Znj0+KBsL3+rQJvNI=;
	h=From:Subject:Date:To:From;
	b=AidsuSLuWwOV4jnVLZjw4T0MAeH+Z61JEfuuaEl6RbcxBd6JzirHJkt8/QOO5qI3B
	 hCT9etSA7ISHFb/OfQVhxDNiha4RWGU6qkwcVo8MK9/LQrUfDxAjb4WmOdEr4Txc03
	 I40sBc7M0SHSbf6rmoa0UxZEE2G4Ssmcvc4LPHbw=
From: Nick Wellnhofer <wellnhofer@aevum.de>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <E4AC96C8-D6CB-402C-8716-B20179C4005C@aevum.de>
Date: Tue, 18 Feb 2025 17:56:31 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
Subject: [oss-security] Multiple vulnerabilities in libxml2

These issues are fixed in 2.12.10, 2.13.6 and the upcoming 2.14.0 release. =
Older branches won't receive official updates.

[CVE-2024-56171] Use-after-free in xmlSchemaIDCFillNodeTables
https://gitlab.gnome.org/GNOME/libxml2/-/issues/828

[CVE-2025-24928] Stack-buffer-overflow in xmlSnprintfElements
https://gitlab.gnome.org/GNOME/libxml2/-/issues/847

Null-deref in xmlPatMatch
https://gitlab.gnome.org/GNOME/libxml2/-/issues/861

Nick=
