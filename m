Received: (qmail 14008 invoked by uid 550); 8 Apr 2025 12:15:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28623 invoked from network); 8 Apr 2025 06:33:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=openeuler-sh.20200927.dkim.feishu.cn; t=1744093958;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=s9dPh+jzAL4dVs92YeEbXJv0zpP1OL8PZJ3oFmnh0cU=;
 b=afCSXmTZ5PmMTMYmNlToz8vVnOxwzM1fLOhAnCUV2Jiikrh5ky6ke0Jh79Uyf/aIO/SbzL
 DYu/5USIuc3fOF9jsv22BpCctfp17qBrqgwOQ/6oDCPWAT48Gn+gG1qh6aQkjMyxnMxvjz
 lmA/WcFllDbzViPdzY6xsSzCkhiTVIm9bHdPcJ3lCUmwl5kJ0oEcG3U16tVbSzT370IDXT
 ryj9Ck7doMPs0BMscWYrrvdAe6/OmOLjSFgJKDjkN97qxPFwk9OPX4X+d/HB3DWijgxLEr
 wxQCoeQkw4RTlanY+sp2qAyE90b7VfZzy/DIioZlxTrf8UCmQYB81MN9Q0gHuA==
From: =?utf-8?q?=E6=9D=8E=E4=BA=9A=E6=9D=B0?= <liyajie@openeuler.sh>
Mime-Version: 1.0
X-Lms-Return-Path: <lba+167f4c304+a69bec+lists.openwall.com+liyajie@openeuler.sh>
Content-Type: multipart/alternative;
 boundary=018dfb46871cc13f6ad1bf17f5ad2e797cb182c5a49f80737142e68c7de8
Date: Tue, 08 Apr 2025 14:32:35 +0800
Message-Id: <c91c769394051f886c25f8bf895ec770dce36a73.40c2a33d.71e3.41a3.b6c5.69bddd448daa@feishu.cn>
In-Reply-To: <20250407180344.3cba0427@hboeck.de>
To: =?utf-8?q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	=?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>
Subject: Re: [oss-security] CVE-2025-31344: giflib: The giflib open-source component has a buffer overflow vulnerability.

--018dfb46871cc13f6ad1bf17f5ad2e797cb182c5a49f80737142e68c7de8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi=C2=A0 Hanno,

We have noticed your report on this issue. But because the code snippet of =
the same issue exists in multiple code branches, so I think this issue is n=
ot fixed completely.

For the current CVE-2025-31344, Bernhard has submitted a patch: https://git=
hub.com/OpenMandrivaAssociation/giflib/blob/master/giflib-5.2.2-cve-2025-31=
344.patch.=C2=A0I think this patch works for the one we reported.

Best Regards,
Yajie Li




--018dfb46871cc13f6ad1bf17f5ad2e797cb182c5a49f80737142e68c7de8--
