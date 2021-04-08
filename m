X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1389" "Thursday" "8" "April" "2021" "17:07:33" "-0400" "Leo Famulari" "leo@famulari.name" nil "37" "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "4" nil nil (number mark "U       leo@famulari Apr  8   37/1389  " thread-indent "\"Re: [oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5356 invoked by uid 550); 9 Apr 2021 08:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21637 invoked from network); 8 Apr 2021 21:07:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=wnmp9trPQVZi8VVtff124CFv
	g1NQcqmkdlzDWqtkRkc=; b=OgUvHlifjCRmp28tUN55uYvcz+nLLeVLhZSuQzbw
	7VIWu+4515YqtyxKt+035hoIniNEHl0V3iCECsBUK/amP7FFypvXbhcku6ENhDkM
	tYTcd2cKSlgMXxB4J8TmIEJm0x3UewrjDgVwf2hCvBWcePfnFsLcX28Gr2A5kDFP
	Q+8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wnmp9t
	rPQVZi8VVtff124CFvg1NQcqmkdlzDWqtkRkc=; b=rwzVP4gcn+BId3HRS+p5U3
	k3V8Smc0RyrYdkq/zhWXNMlWTa9FA7zoCgAQSoFBmq3t+83Y8uOrzvRDGdkjp9MB
	l4y7L3MExD4mrldhpMtr7kFmKa4hV6eGbn9JiKP93SSJiYeZWpaU29sSGQYQp/Ys
	JGmCF0T6g9NUFq9QCxOg5OievQ/hNO1wieUPP5OSizFHOO6Qxmp/diUOGAaAPTCQ
	Kk4xNjm1Ukv/1/dr7HVPpMU6I8e3QOhT1LR9HTkD1/wp6CteLmUkDn1LCxtYPR0p
	FoKSn3sk1vmJNNECcV9FR82YYqeFyh/OQLNvjocxyBelftDIx9Etv6rHOYirFGDQ
	==
X-ME-Sender: <xms:mnBvYF1lShTOiFpftsmjIC2s_TQBUNebq21RgOLLWMeRUL-3WP_ukw>
    <xme:mnBvYMHScNoAVRm5024bIyu5rwsvo2TsIxIwBylc66L4B3u2jDRSaAyp_AAI1hjjs
    kWwamAqKKXd8dZjEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejledgudehlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttdejnecuhfhrohhmpefnvghoucfhrghmuhhlrghrihcuoehlvghosehfrghmuhhl
    rghrihdrnhgrmhgvqeenucggtffrrghtthgvrhhnpefgieffkeegueefgeetteeiffdvie
    ffhfelveeihedvheejueefhedtheefleefueenucffohhmrghinheplhifnhdrnhgvthen
    ucfkphepuddttddruddurdduieelrdduudeknecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheplhgvohesfhgrmhhulhgrrhhirdhnrghmvg
X-ME-Proxy: <xmx:mnBvYF56r_5km4EvPvo18NveOpIOQvE3PKli_9Jw2elf0hrahbH8Rw>
    <xmx:mnBvYC36MrAwKzMRLucka-4i2tEi2mtnWC5C8IA5gqNj8YD1Poa0jQ>
    <xmx:mnBvYIG3OLZq9gqvQoCgU9l8nw8t4oCIqwO6CXG0K8MdM-cqVkp97g>
    <xmx:m3BvYMQ-Tch1-FbMiteJWIdAaHXrgK9S9EIWg9t0Dk3e0XuasjUZAQ>
Date: Thu, 8 Apr 2021 17:07:33 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <YG9wlSsUVoqEtZuG@jasmine.lan>
References: <YFPFrYcJK1e+qedn@jasmine.lan>
 <YGs+I9NUYzddLP9P@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mtFt0YAtWGyiveJX"
Content-Disposition: inline
In-Reply-To: <YGs+I9NUYzddLP9P@jasmine.lan>
Subject: Re: [oss-security] Risk of local privilege escalation in GNU Guix

--mtFt0YAtWGyiveJX
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 05, 2021 at 12:43:15PM -0400, Leo Famulari wrote:
> We applied for a CVE ID via MITRE's web form [0] on March 18, 2021.
>=20
> We have not yet received a reply. Does anybody know if that is expected?

Well, there is an LWN article about it, but still no CVE:

https://lwn.net/Articles/851849/

=F0=9F=A4=B7

--mtFt0YAtWGyiveJX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAmBvcJUACgkQJkb6MLrK
fwjgBg/+L5+P4M0hLM7JY5M7ATWX1CGHGtAmMSXz6WKFmt5XMYAL7UvXyh7OLpo6
dHNHmoH9jL68WQLYyUxsWSLVDN2eyBAdHO/sq7KiS0HeVIbX103Fx4m3x3hnHozr
c60XLpTa6mw5+jL+X1PDhh5yqBmr2jUjV/ZV4fbfTODBD3COsc4KQg+26ACFCdef
O7f7SHW77sINhfBQ3yD/2t6vaH4YNwSZDWDuKQD/rZMCHz7o47LQ32BT04s+KnSk
P/01DsRiGFILJneY0HSniDJ6vrT2sYnkTv7leDQD+d3Hp2rNxSoVTMfbCJxGCrGZ
JzFdixMD0UzhdsAdddTk9sDRiWbFgEsElk2dP6hy5fnEMhhv5y+G7jwR22XMkeIU
xeQHOsGJ8GBhh1C1xiGm7J9NLfyDaHfc7qHSZPUyR9zRCkaaIc2ZNjJe6u+Zm+Pr
t1q5sIjUymvNevFn3/65O+QHyHsIaXbbvB9zO5B8+1CHgr3RQmX92TFgSjRKKY94
DVcAMv+A5KC68RxLp3St9YfNulNgQSETz4Q7xTLHG8LWbPMbGLV3ijH2Ip3BsG/e
PN1TYIrwOMuMRWwH4TwbuLhSGm52ilcRExmK2ab9ReIHjJk2qmEYZy3WU9VXwe00
sLYY9E5qGgXmEU1byUyJwxQNl74wsHDFIeUeiF2Iw/++Rdl0J/s=
=sYrl
-----END PGP SIGNATURE-----

--mtFt0YAtWGyiveJX--
