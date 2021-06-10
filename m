X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2174" "Thursday" "10" "June" "2021" "14:34:58" "+0200" "Gianluca Gabrielli" "ggabrielli@suse.de" nil "51" "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil "6" nil nil (number mark "U       ggabrielli@s Jun 10   51/2174  " thread-indent "\"[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15542 invoked by uid 550); 10 Jun 2021 12:56:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5333 invoked from network); 10 Jun 2021 12:35:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1623328499; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6Vr9azs6yP/cEFPmss56ypXsA5L/87fUStJRit0auuU=;
	b=hFFSi5nxZ/hMF9zsUH5hKJAWQ5VfY1rWVmjUexabY4val+/flzgkC0zfCDJkwvMzt9I8yP
	TL4iPvnxRoITfWMrcqvlhgYXzMNeYPWRv/3nB/Wa+BjHEe2pNcCUYlIdPk0zBMgFU3/wpA
	bRosGBaqgGoN46fhbb1dYV2bgpORCII=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1623328499;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6Vr9azs6yP/cEFPmss56ypXsA5L/87fUStJRit0auuU=;
	b=NbK5ZzIbCL0whZp9kyn2z/kKVu/bFI4k6lldt9tmjqSqF/Lfm3oNVseqU402G39FElz9Cm
	ft6Fc1qGozzPVmCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1623328499; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6Vr9azs6yP/cEFPmss56ypXsA5L/87fUStJRit0auuU=;
	b=hFFSi5nxZ/hMF9zsUH5hKJAWQ5VfY1rWVmjUexabY4val+/flzgkC0zfCDJkwvMzt9I8yP
	TL4iPvnxRoITfWMrcqvlhgYXzMNeYPWRv/3nB/Wa+BjHEe2pNcCUYlIdPk0zBMgFU3/wpA
	bRosGBaqgGoN46fhbb1dYV2bgpORCII=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1623328499;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6Vr9azs6yP/cEFPmss56ypXsA5L/87fUStJRit0auuU=;
	b=NbK5ZzIbCL0whZp9kyn2z/kKVu/bFI4k6lldt9tmjqSqF/Lfm3oNVseqU402G39FElz9Cm
	ft6Fc1qGozzPVmCg==
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>, oss-security@lists.openwall.com
References: <YLrLbpUuAbLO3RR8@mail-itl>
From: Gianluca Gabrielli <ggabrielli@suse.de>
Organization: SUSE LINUX s.r.o.
Message-ID: <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de>
Date: Thu, 10 Jun 2021 14:34:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YLrLbpUuAbLO3RR8@mail-itl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tvDDcTB1vvrTlmKYfwXEkF4BukqcFIOyU"
Subject: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

--tvDDcTB1vvrTlmKYfwXEkF4BukqcFIOyU
Content-Type: multipart/mixed; boundary="9IcCeBZNxwuS7BIZb1MjcILYLa7OuWfPr";
 protected-headers="v1"
From: Gianluca Gabrielli <ggabrielli@suse.de>
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>, oss-security@lists.openwall.com
Message-ID: <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de>
Subject: Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock
References: <YLrLbpUuAbLO3RR8@mail-itl>
In-Reply-To: <YLrLbpUuAbLO3RR8@mail-itl>

--9IcCeBZNxwuS7BIZb1MjcILYLa7OuWfPr
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Thank Marek for having shared this with the list. I don't see a CVE ID
assigned to this bug, have requested one?

--=20
. o .  Gianluca Gabrielli                      gianlu.ca
. . o  Software security engineer               suse.com
o o o  D78D 3FDC 2591 7EBA B52F 2362 6E17 38B8 2B60 B31D
-Dance like no one's watching, encrypt like everyone is-


--9IcCeBZNxwuS7BIZb1MjcILYLa7OuWfPr--

--tvDDcTB1vvrTlmKYfwXEkF4BukqcFIOyU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEE/Gtkry+LfDI9iHEuQPoqj4mlKX4FAmDCBvIFAwAAAAAACgkQQPoqj4mlKX7m
7w/8DZ8gcci53boNthCFFd0HXMQ5b6TKqdXuiY1bADD6QvOgvLxJZuaRqO1/9tqjFNvgADpWvevM
28D4f5J5Q1d1l4Oq6VoovS0P4FOfYY8mXr2blBScb4TuQ2d+ZTgFv6QNUrpt/eTirEWmJBvTrJ7S
NorZCjuFX3DVKNbQsCgc+UqhvR1MnmrzJfc+juqC7/dNpvm9dHmHlc58rYVNH5Tqn5eioh8Hw9HC
RhVfRMM1H1JPybHGPTPHWMEUwqiuYx+HyEkKMhXjOCtlCfJyMEh3+u4rEHIqlfj6fzdQFrXSvcUs
k492u/taA3phLVhNIWT8PKc/Ylfdh3qqRxu9ZWu5DVDaKLoF5omYfolO+JFcx/l6QIN/CBgEyoQi
thMQH0liz9wCHuz+pJr6bNdH6ti0hcm2sSjbbNf9ol0Xq26MHumCCxFYSqOx7z8AX+FNHUAKEGD0
tOJcmtJnWVWb15OZdo5tNBiNZ+7KfLuv51RgIzoDAMhWhds7T+67auWr7NEHvnjmFsCkd+oEy6Ih
j7yyUIaHjvochsyhZcU9gyKW+ZmoyURTGXkGts/hXyoDYyolc8HkG4CkXa8dsyZg7WZsdX0g8siH
NI/EPetjBd+hd96k2YigbwNADFqzwcEwYTXtEIbZBzi3Jhzj1tY5hUfTPRuE/HFEkxS75jZ9eJFc
5Rg=
=f57i
-----END PGP SIGNATURE-----

--tvDDcTB1vvrTlmKYfwXEkF4BukqcFIOyU--
