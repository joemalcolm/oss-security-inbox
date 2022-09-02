Received: (qmail 5981 invoked by uid 550); 2 Sep 2022 17:40:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24519 invoked from network); 2 Sep 2022 16:13:53 -0000
Date: Fri, 02 Sep 2022 16:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1662135222; x=1662394422;
	bh=gNuFMjNIA/tGpcyweqZAcRdVH01tIGT9t4fCvgrpmkI=;
	h=Date:To:From:Reply-To:Subject:Message-ID:Feedback-ID:From:To:Cc:
	 Date:Subject:Reply-To:Feedback-ID:Message-ID;
	b=BE+VYuLQbaCaFTkLkiPbXn/8buu6WQP/qsD1CdGljAvp/wZ1eq6yH/C4VunCTvkGq
	 IF477bK+7DqRd76cKLMUTu1wQMJmDc1jM9dDtuhJRxG/PykGB2g+FRltJjMvD4KQK1
	 nhaARvdlM21N6bMBc5cONGnflVYuT644Rhv5NJnKtadazHOsdiJpvOef44KSx9Whn8
	 nXDfgBpATs5M1WmiSEaszjxMn1ohuDgMeIYBd/yb6F7vHnOYoKSJlMP+peals+Vv6X
	 jLVhUIqKXc2ioj3jPn+nE57qgdLiW9R1dlUzaG5iKCOjNcOFwoZ0C9AaNZqOdKXGZR
	 NIArmW66v6bvw==
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <aca73c02-b870-1824-8cd2-515bbaaeebfc@protonmail.com>
Feedback-ID: 39015149:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] JBIG2 integer overflow fixed in Xpdf 4.04, Poppler 22.09.0

Xpdf 4.04 (released 2022-04-18, CVE-2022-38171):

   <https://www.cve.org/CVERecord?id=3DCVE-2022-38171>

   <https://gist.github.com/zmanion/b2ed0d1a0cec163ecd07d5e3d9740dc6>


Poppler 22.09.0 (released 2022-09-01, CVE-2022-38784):

   <https://www.cve.org/CVERecord?id=3DCVE-2022-38784>

   <https://gitlab.freedesktop.org/poppler/poppler/-/blob/master/NEWS>

   <https://gitlab.freedesktop.org/poppler/poppler/-/merge_requests/1261/di=
ffs?commit_id=3D27354e9d9696ee2bc063910a6c9a6b27c5184a52>

The lineage of this bug includes a variant used as part of the FORCEDENTRY =
exploit chain (targeting Apple devices).  The bug readily crashes affected =
software, code execution is not straightforward and would depend heavily on=
 the context in which affected software is used.

FORCEDENTRY was first discussed publicly in 2021, it took some time to trac=
k down the affected OSS components.  Lots of packages are downstream of Xpd=
f and Poppler.


Crashing test case, use at your own risk:

   <https://github.com/jeffssh/CVE-2021-30860>


For background, Apple CoreGraphics fixes released in September 2021 (CVE-20=
21-30860):

   <https://www.cve.org/CVERecord?id=3DCVE-2021-30860>

   <https://support.apple.com/en-ca/HT212807>

   <https://googleprojectzero.blogspot.com/2021/12/a-deep-dive-into-nso-zer=
o-click.html>


Regards,

  - Art

