X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2421" "Friday" "11" "June" "2021" "09:13:18" "+0200" "Gianluca Gabrielli" "ggabrielli@suse.de" nil "58" "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil "6" nil nil (number mark "U       ggabrielli@s Jun 11   58/2421  " thread-indent "\"[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5503 invoked by uid 550); 11 Jun 2021 11:49:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13834 invoked from network); 11 Jun 2021 07:13:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1623395599; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Senv2xH2KXnnsa9j5Z80EXHEi2cactg0Em1LXyeJPuY=;
	b=MDAel7/16D7iIOhiW8FSMYfId2iUmETDEXNow2BHAtMqakMmIebVnma/qop4LNba2TKy5H
	yIdNpZtWRKoZVsDCP/Lm/2RDHTuWIVlndGkFYJiuoHrix2NOF/tpGkOiIqeT9Rrua7dlOR
	HXkOOxOg2nW90ydu1EJBbaMc9lx7nGg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1623395599;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Senv2xH2KXnnsa9j5Z80EXHEi2cactg0Em1LXyeJPuY=;
	b=kZiPu5jUHNlUvQmBK5hwHDRCDD565Dre/4rhrkpt2UfWV/dy0+9b8xf8psZKfbRCg5n3Zu
	Dj4dO7texM9SibBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1623395599; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Senv2xH2KXnnsa9j5Z80EXHEi2cactg0Em1LXyeJPuY=;
	b=MDAel7/16D7iIOhiW8FSMYfId2iUmETDEXNow2BHAtMqakMmIebVnma/qop4LNba2TKy5H
	yIdNpZtWRKoZVsDCP/Lm/2RDHTuWIVlndGkFYJiuoHrix2NOF/tpGkOiIqeT9Rrua7dlOR
	HXkOOxOg2nW90ydu1EJBbaMc9lx7nGg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1623395599;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Senv2xH2KXnnsa9j5Z80EXHEi2cactg0Em1LXyeJPuY=;
	b=kZiPu5jUHNlUvQmBK5hwHDRCDD565Dre/4rhrkpt2UfWV/dy0+9b8xf8psZKfbRCg5n3Zu
	Dj4dO7texM9SibBQ==
To: oss-security@lists.openwall.com,
 =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?= <marmarek@invisiblethingslab.com>
References: <YLrLbpUuAbLO3RR8@mail-itl>
 <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de> <YMIJ0OV72O2XK7m+@mail-itl>
From: Gianluca Gabrielli <ggabrielli@suse.de>
Organization: SUSE LINUX s.r.o.
Message-ID: <8aa1cc5b-fa58-771d-a52a-fcfd4276eb76@suse.de>
Date: Fri, 11 Jun 2021 09:13:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMIJ0OV72O2XK7m+@mail-itl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="8aOBdyBOkFHVfLCamExpMXCfXAh5Y15Gh"
Subject: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

--8aOBdyBOkFHVfLCamExpMXCfXAh5Y15Gh
Content-Type: multipart/mixed; boundary="swzxkH5HsWT11I25uUYlClRUNDA9oLSLN";
 protected-headers="v1"
From: Gianluca Gabrielli <ggabrielli@suse.de>
To: oss-security@lists.openwall.com,
 =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?= <marmarek@invisiblethingslab.com>
Message-ID: <8aa1cc5b-fa58-771d-a52a-fcfd4276eb76@suse.de>
Subject: Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock
References: <YLrLbpUuAbLO3RR8@mail-itl>
 <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de> <YMIJ0OV72O2XK7m+@mail-itl>
In-Reply-To: <YMIJ0OV72O2XK7m+@mail-itl>

--swzxkH5HsWT11I25uUYlClRUNDA9oLSLN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Marek Marczykowski-G=C3=B3recki wrote:
> On Thu, Jun 10, 2021 at 02:34:58PM +0200, Gianluca Gabrielli wrote:
>> Thank Marek for having shared this with the list. I don't see a CVE ID
>> assigned to this bug, have requested one?
>=20
> I have not (nor has the vendor).

CVE-2021-34557

--=20
. o .  Gianluca Gabrielli                      gianlu.ca
. . o  Software security engineer               suse.com
o o o  D78D 3FDC 2591 7EBA B52F 2362 6E17 38B8 2B60 B31D
-Dance like no one's watching, encrypt like everyone is-


--swzxkH5HsWT11I25uUYlClRUNDA9oLSLN--

--8aOBdyBOkFHVfLCamExpMXCfXAh5Y15Gh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEE/Gtkry+LfDI9iHEuQPoqj4mlKX4FAmDDDQ4FAwAAAAAACgkQQPoqj4mlKX7v
phAAtjTyLjMy+SB++y6GwkEje8K+VRVRxqZ5kdvU2Be04oVjp57V3BUbz+EQRVmD5F9nuVuB9ny7
kJGHiaDthKdNdrlI8nKUXBoYfR8WZsqRAtGMw1ogMyNQOT9gvvXXswvU9ViN8cMqZyxBbnm+gle1
v+jqLrC9PntI6e1GE68CdHKBHSnFwogOJags90NEaSNEC/fP/Tqvbd7Hoa1D+G1b/93mwNz8138p
P+JZ+erSk0MgswP+3LVlmWM299I1n9HgAl79jYHCRR/3QPDkQ2mbj8Ayzkg+VZLjLWMqL5UNO44s
CwYAhb8uLmvFkMTiczfJpekF+OC41quhwvxr3OSG1/Z1/Ki8Y7JjXPLOZIteD1CAOp0OJg1wtYOd
R7wqECzFHwJdUa8Hf8f8HvTk3xvTxHb9S0oHgKGKcMF690wxqA7jlS6StCYSJgT9iIObSDbKLK+j
M+dibfN4nCSZJVj5Wvyv3TFajYUUabwMJhof2Eo/NizfQVzedzBbqAJim113lkYJ9tJlC8yjjXqr
DREH2Bz8/uMii/elD7f6r40+8gmm78VtNZCUN4AgQftBN3+yfjVPhpIttf9CStOmzFzD6evSOr+7
ezevfDi4ELjbxSWAhEoX2b0gTJ4Vgo9T0/VJwLZuGEOs8F5POZ1fYkTQ4Bz9W8PmuxJ5EevXTpHI
+2c=
=1V7H
-----END PGP SIGNATURE-----

--8aOBdyBOkFHVfLCamExpMXCfXAh5Y15Gh--
