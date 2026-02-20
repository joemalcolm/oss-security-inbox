Received: (qmail 4095 invoked by uid 550); 20 Feb 2026 17:55:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31913 invoked from network); 20 Feb 2026 13:17:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uraeus.com; s=2017Jan;
	t=1771593445; bh=WezkskvSIHbEHzbj9r7qfvOk8v4Je8Uc8kJnjTzURBk=;
	h=From:Subject:Date:Cc:To;
	b=dIuZ9o5vx9pRyOIbltEDbDHtGiW6iFSFh4NVV2SHvGTm2lNQq61dZ6VhFNqo5hhM3
	 RnKk4VFgGIpRs1hdHFKszOYxhOH2R3gU57U+phvfOKVk4G7isgW5QZIrXinXaWK9z3
	 o6DWbYwKhwyRUkxmk1VJJ2omXvdPYiU3hNCuvvuQ=
From: Joe Malcolm <jmalcolm@uraeus.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BE68E9BB-D92E-4198-B077-D9094D43E0AD"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.4\))
Message-Id: <43B86407-F2E4-4081-BB14-1B2D26248767@uraeus.com>
Date: Fri, 20 Feb 2026 08:17:15 -0500
Cc: Joe Malcolm <jmalcolm@uraeus.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81.1.4)
Subject: [oss-security] OpenSC, ghostscript, cgif issues from the recent Anthropic disclosure 

--Apple-Mail=_BE68E9BB-D92E-4198-B077-D9094D43E0AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Many will have seen the recent post from Anthropic (1) and associated repor=
ting that says they found 500+ vulnerabilities and lists 3 of them.  These =
three issues don=E2=80=99t appear to have CVEs and two don=E2=80=99t appear=
 in releases. I don=E2=80=99t know if that indicates the maintainers don't =
agree with the significance of these findings, but I wonder if the other 49=
8+ vulnerabilities also lack CVEs.

1. For OpenSC, the commit appears to be:

https://github.com/OpenSC/OpenSC/commit/9ab1daf21029dd18f8828d684ee6151d923=
8edab

There are no disclosed security issues more recent than 2024 at https://git=
hub.com/OpenSC/OpenSC/security and the last release was
OpenSC 0.26.1.


2. For cgif, the fix is=20
https://github.com/dloebl/cgif/commit/07052febd3a252d30e6f0de67b2ea4f6b9aac=
ddd and it appears in v0.5.1.


4. For ghostscript, the commit appears to be=20
https://github.com/ArtifexSoftware/ghostpdl/commit/4e392a82d1b1780cab858047=
28317f36a9c4f7f7 which references a nonpublic bug 709080 <https://bugs.ghos=
tscript.com/show_bug.cgi?id=3D709080>. The last release is 10.06.0 (2025-09=
-09) so there is no release with this fix.


Anthropic=E2=80=99s post: https://red.anthropic.com/2026/zero-days/=20

Joe=

--Apple-Mail=_BE68E9BB-D92E-4198-B077-D9094D43E0AD--
