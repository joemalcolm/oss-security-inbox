Received: (qmail 18279 invoked by uid 550); 9 Mar 2024 07:46:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18261 invoked from network); 9 Mar 2024 07:46:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1709970625; bh=EThI9CjHFLKMqxNpcS0rzL3ztn8x6uiEya6r6J7gAdg=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=h0yjcDwK/085QHPApT3l5HCZYYsCUiogHQ/i8+Kar6DBhdxyXABmPqEEg/MZULy8s
	 gjGyQoR+b1W5MVpWHfn4OxyqIx8X7oX8oI7R+a2LsPO/eBqnueDujrfzocBUeTMOxX
	 /XANoDFuLusj/rjE83bKKWhCiHZGamCDBIzGarEILys2FEIh+yflsiJUZ9Ty33+n6o
	 CrzBk2vFENADNfiUX8fxNjZxusUBz5igPS+W9GkeBbi1zEPm4nGtESvaNpX/1dK0kW
	 PEsgZuUEELm1hSgTGqyoMKy/tOmtZPP7f1eUVWo82pgKHTvMBeIUlJspeUvbjH5a4O
	 wfUpecKQL6K3w==
Original-Subject: Re: [oss-security] Vulnerabilties in FontTools & FontForge
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sat, 9 Mar 2024 08:50:24 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240309085024.1e255337.hanno@hboeck.de>
In-Reply-To: <927220f8-dc33-449a-80c6-6e1ab51b5594@oracle.com>
References: <927220f8-dc33-449a-80c6-6e1ab51b5594@oracle.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Vulnerabilties in FontTools & FontForge

Hi,

On Fri, 8 Mar 2024 11:06:35 -0800
Alan Coopersmith <alan.coopersmith@oracle.com> wrote:

> - CVE-2023-45139 in FontTools versions >=3D4.28.2, <4.43.0, fixed in
> 4.43.0
>=20
>     FontTools uses lxml to process SVG tables in OpenType fonts, and
> had not disabled external entity expansion (which lmxl enables by
> default), leading to an XML External Entity (XXE) vulnerability.

I was surprised that any library would do this by default in 2024.
According to their webpage, lxml does *not* enable external entity
expansion by default, but changed the default only very recently.

https://lxml.de/FAQ.html#how-do-i-use-lxml-safely-as-a-web-service-endpoint
says:
" Since version 5.x, lxml disables the expansion of external entities
(XXE) by default. If you really want to allow loading external files
into XML documents using this functionality, you have to explicitly set
resolve_entities=3DTrue."

lxml 5.0.0 was released in December 2023.

So it turns out that lxml did enable entity expansion by default up
until very recently, but no longer does. So applications using lxml
should likely still disable it manually for security reasons for a
while, but it is a problem that will go away over time when people
update to lxml 5 or above.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
