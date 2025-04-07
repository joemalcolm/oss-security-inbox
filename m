Received: (qmail 26423 invoked by uid 550); 7 Apr 2025 16:03:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26405 invoked from network); 7 Apr 2025 16:03:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1744041826; bh=aKSr+8T73lPypJT2Yd42BmJXTGuZGKF64hkSzosQwNw=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Tgjfy1aLehlIcxiZ3r2c0lNUym14m6ehyqUpaL62L0P6eOdcqKJTem5DZ7KmETcBj
	 LyIPbsJXJESgqx+w2GsX9Ia8h7SjPhBOLxb+haA27obJG4TXipV3UcRBJsFLkfACwX
	 rVUATZspxEVSNE1EhY6rNBgkGoIx3aPyZ0+RkTuwil7gYlguNg18crx8cLv0cfMbmr
	 Gpknxz+eNwqGsPhrCl+MjyvxVO2Em8wTjp+ShPa2YbSCYOYmkTZIZq5NRkXdDz7vwU
	 4zCO7Ytcqr07iTd83+TQ9zJPgUOBn/snB7s6PV9Dd/Rdr6juQrVz7Wl1SDX4dqMRWl
	 VO55966nY7XGA==
Original-Subject: Re: [oss-security] CVE-2025-31344: giflib: The giflib open-source
 component has a buffer overflow vulnerability.
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Mon, 7 Apr 2025 18:03:44 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250407180344.3cba0427@hboeck.de>
In-Reply-To: 
 <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
References: 
 <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-31344: giflib: The giflib open-source
 component has a buffer overflow vulnerability.

On Mon, 07 Apr 2025 21:15:25 +0800
=E6=9D=8E=E4=BA=9A=E6=9D=B0 <liyajie@openeuler.sh> wrote:

> In the function DumpScreen2RGB of the giflib software, an attempt is
> made to access the color map through ColorMapEntry. The size of
> ColorMap is 6 bytes (from 0x602000000030 to 0x602000000036). However,
> when accessing ColorMap->Colors[GifRow[j]], the value of GifRow[j]
> exceeds the actual number of colors stored. The address pointed to by
> ColorMapEntry, 0x602000000039, goes beyond the allocated memory range
> for color data. As a result, accessing ColorMapEntry->Red leads to
> out-of-bounds access, causing a heap-buffer-overflow.

I...
think I reported this in 2016 already:
https://sourceforge.net/p/giflib/bugs/79/

The bug was closed without a fix, yet with giflib's author claiming
multiple times that it was fixed.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
