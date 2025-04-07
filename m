Received: (qmail 22201 invoked by uid 550); 7 Apr 2025 20:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28027 invoked from network); 7 Apr 2025 19:50:43 -0000
Authentication-Results: mail.eu-relay.fedcom.net; dmarc=pass (p=quarantine dis=none) header.from=lindev.ch
Authentication-Results: mail.eu-relay.fedcom.net;
	dkim=pass (1024-bit key; unprotected) header.d=lindev.ch header.i=@lindev.ch header.a=rsa-sha256 header.s=default header.b=HV/VWw5P;
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lindev.ch; s=default;
	t=1744055430; bh=LoFvPvM69WErVkI6Q8+SellQ9+Ewr3vNupGmxuWg8G4=;
	h=From:In-Reply-To:References:Date:To:Subject;
	b=HV/VWw5P9XiMBMSUkwr7vUCahu3xYnZyK/PwQ/5fkcb7Be2MviwTEiwjlTSD3D9Y8
	 vs2ox+sD696sqAI7SJPx5nHhwnpWvB9i1AWW9cVy4UQuYBfSiB/pRq2log4TPutqX7
	 zKVDymsTwjF9Xm2QGB5suFzlGWtd0SNyTXWHv0zU=
From: =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>
In-Reply-To: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
Content-Type: text/plain; charset="utf-8"
X-Forward: 127.0.0.1
References: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
Date: Mon, 07 Apr 2025 21:50:30 +0200
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Message-ID: <543-67f42c80-17-5396a400@98757176>
Content-Transfer-Encoding: quoted-printable
Subject: =?utf-8?q?Re=3A?= [oss-security] =?utf-8?q?CVE-2025-31344=3A?=
 =?utf-8?q?_giflib=3A?= The giflib open-source component has a buffer 
 overflow =?utf-8?q?vulnerability=2E?=

On Monday, April 07, 2025 15:15 CEST, =E6=9D=8E=E4=BA=9A=E6=9D=B0 <liyajie@=
openeuler.sh> wrote:

> Affected Versions:
> - giflib 5.2.2 and below
>=20
> Description:
> In the function DumpScreen2RGB of the giflib software, an attempt is made=
 to access the color map through ColorMapEntry.
> The size of ColorMap is 6 bytes (from 0x602000000030 to 0x602000000036). =
However, when accessing
> ColorMap->Colors[GifRow[j]], the value of GifRow[j] exceeds the actual nu=
mber of colors stored.

Thanks for the disclosure. Since there doesn't seem to be a proposed patch =
yet, here's mine:
https://github.com/OpenMandrivaAssociation/giflib/blob/master/giflib-5.2.2-=
cve-2025-31344.patch

ttyl
bero

