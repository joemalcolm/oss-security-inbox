X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2321" "Saturday" "29" "January" "2022" "15:16:59" "-0500" "Leo Famulari" "leo@famulari.name" nil "52" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil "1" nil nil (number mark "U       leo@famulari Jan 29   52/2321  " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3949 invoked by uid 550); 29 Jan 2022 21:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12243 invoked from network); 29 Jan 2022 20:17:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=cc:cc:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=mesmtp; bh=zNU2Y0V+/DrI5pqt/tkvnz+KCUt
	oobO/yhkgPw6lpq0=; b=xaKnOfDlMUjjz+JiH8aWU+h42lWjao9rlaJ+NMdEU4r
	LmmQmC7Xnhw8gkAJ29kxn8XKqojUR3kEsfVdkpSqrzajr5ws/9Ghh7QPrC9tuO1u
	aBcO5hbJ5ydQRRMm6wQymsafvkJ4Fo7MAUoP3xZ7xziVteN+oBSb+9auw6UlhodU
	=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=zNU2Y0V+/DrI5pqt/
	tkvnz+KCUtoobO/yhkgPw6lpq0=; b=QIgTkmS8KtwdIhoUMjOhdc3SRZzXy5yad
	EMlrChBcm/aRk1HXG6hv08lb6+XKVjBGwh+xULWr37wWytWHadPufc5ZX3pQOkkL
	vVCutKblUrURm6BAkcNbETyT9lJjwge0JJJ+pmP+65x75Ir1MmMgKeIZsofHWNw5
	ew6pKSaahJwbNUbuPh6tIb1akk/6ukNPjlbK0R7y/Z1s74Q53EdL/3hJQbawXuNn
	EF5S59r3m5LRhM4c36Sj7zBSm3tYJ7d2W0mnVe0Sv5ub4Q9BLSK75Dxh0uK71y13
	vcGG20ksKza+6gQrKQEOQqBz1qgy2AjNml/w10ABa1waTfrWaqN5w==
X-ME-Sender: <xms:vaD1YTGsRUfdq-N_0Y6r6YiM0rbkHmHra_N8NUQfXNu10zSyvyxQfQ>
    <xme:vaD1YQVzgHRlLXBsvEMHI6z67gtIWph7BI5n-VyDoZ4D6i0ukq1iVYoyb9-undRqF
    bDfKre-rM89RTjDGg>
X-ME-Received: <xmr:vaD1YVLPA1h_B5GAMhEM3g2feDTSShnqJ2IYxeMQ5X5kN5X0dZCAn1DAnGTVaJqp1_aZg75rd4pbpi7jtR-YtYZ46Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeejgddufeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepnfgvohcuhfgrmhhulhgrrhhiuceolhgvohesfhgrmhhulhgr
    rhhirdhnrghmvgeqnecuggftrfgrthhtvghrnhepudekveegteekleetgfeitdejgfejke
    ffudethedvhfeukeduleeikeejfeehffetnecuvehluhhsthgvrhfuihiivgeptdenucfr
    rghrrghmpehmrghilhhfrhhomheplhgvohesfhgrmhhulhgrrhhirdhnrghmvg
X-ME-Proxy: <xmx:vaD1YRFeXmYAPdV7N95nfRDHnmdG6WnENKipmbPDkHX5C3DIiWwnFw>
    <xmx:vaD1YZUXoRAne-TPx5Yehke0LuVOwLBNsAjib0yfHY4KXttsk6kB_w>
    <xmx:vaD1YcOECUS4G_xfmBcTlIN0e-4us__Ice7b5zQie3YSA7m-RU6naA>
    <xmx:vqD1YafEaMN73O6_WoVEDc1X5YBRcaa6OBp5wuK51j_hIAn6ZOzeGw>
Date: Sat, 29 Jan 2022 15:16:59 -0500
From: Leo Famulari <leo@famulari.name>
To: John Helmert III <ajak@gentoo.org>
Cc: oss-security@lists.openwall.com
Message-ID: <YfWgu/Uv+2r3TpdL@jasmine.lan>
References: <cb8ce1dd-6dee-b6f9-4081-f662887ce835@igalia.com>
 <YezR31IUUe48w7KH@sol.nexus.lan>
 <Ye2pUrZ81PjFsary@jasmine.lan>
 <Ye6z5G/Dq89PQ9jz@sol.nexus.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S9tauYTBsTTPUyvz"
Content-Disposition: inline
In-Reply-To: <Ye6z5G/Dq89PQ9jz@sol.nexus.lan>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0001

--S9tauYTBsTTPUyvz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 24, 2022 at 08:13:15AM -0600, John Helmert III wrote:
> I don't think it makes much sense for every downstream to make these
> kinds of assumptions.

Why not? History shows that this assumption will almost always be
correct for WebKit.

> Besides, this doesn't seem to be what's
> happening in practice. For example, WSA-2021-0006 was released on
> October 26, 2021 with vulnerabilities addressed in 2.34.0, released on
> September 22, but RedHat's bugs for it were only opened in the days
> after the *security advisory's* release, not the software release. It
> doesn't help that most most distribution security tooling seems to be
> oriented around CVEs, which aren't released for WebKit until after the
> associated advisory.

I'm sure that Red Hat's package maintainers know what a WebKit update
means. Presumably they are busy and their KPIs prioritize fixing CVEs,
so they don't act as proactively as one might prefer.

In general, it seems that WebKit is handling these issues like Linux.
Observers know that important bugs are fixed constantly in software of
this size and complexity. Relying only on CVEs is too reactive and
limited in scope to provide a meaningful security stance, increasingly
so since the CVE assignment system stopped working in the last few
years.

--S9tauYTBsTTPUyvz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAmH1oLsACgkQJkb6MLrK
fwhkXw/+IcTFTctQAG/t6xY1sdwcRB6tpy3phQkZ9cUFTr7IBIFVOExa3xcxdH+Q
HJUl6rBuREZYlob1U3Io4gN3+ml1dPYyv5JUmvmoWyHXl0m7sZgJN7ewFevbB8oc
jpDS+evGSP/cGMyQmra7Lfm9PYm2u8sOs55RcxmG14vAkhDTTp+C/klMK4pkEoyF
9SoUeNAv4tkBwDo3ZZOO3fNWmCmUBpjk08WEiJCUwn8altoJ6SqxSyLF/LWOJf8w
6ZRMevM+XJlw4awICLPnIfrz2gyjG9BrJp4v9oBuhEYITm/42aIBGdhLqz/3va4T
186/IaR5fNprS7U1JLaF7tHJQcA0piPHdivpEh7TiaxBkVXucgIj/tjtoWMEJlVF
Qr8gSFWYzo8NXPS4fzvIJ4kgfqoR7U6eKoDYYBZ/MreDcxtG3gAtoZgRJri9eCO1
YcaWZBlMAfYoZEFPtY6D8xIPVedHt6MUzkIQxNO15xPqlHY3DO9qjEOTbbqOur5i
KI4NLmZfcqHfRPuI2kwfSc4ykaX3QV1GN4/fwLF5QmfTUt3dTxrdRfBQNU+whhTX
ZcJtgxi089rlDYrXlW0ng+Q/m7GvOE71u6LUJsIojwJnjecs4Ox0zsBkqguTBRxz
pWoYf4lMDFzBJutAYjX9Ys6zRRvB5bt3wbTtgwge6aXj7r9oZ68=
=5Q9J
-----END PGP SIGNATURE-----

--S9tauYTBsTTPUyvz--
