Received: (qmail 11539 invoked by uid 550); 24 May 2026 17:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20234 invoked from network); 24 May 2026 17:08:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1779642488; bh=UpmmF/0+0+V6ZFuDI8SsBUehNeBwmzg0x+82nzqPpMw=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=mvnENLngNFRUr7BrXq94lvttf3O6wJzrHmUALGgPy2iheaGE7kethK7PuaOfwsq7H
	 vOPaMJZM36QPYUSRTp1A7ZF7R5T7+jaj73UpY6Iql8znyqepNW4w74slcLdAH/lmCB
	 PVdaF/w9vDej62vkkXMXtBPsGelq7Dflzkjgy4J8=
X-Riseup-User-ID: C1FB97F5EC5F4CC6ECF0B27FE95C5BCD9EC5F8B84BCD683CD76C59E180BA12E8
Date: Sun, 24 May 2026 13:08:05 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Message-ID: <20260524130805.5ff3783d@riseup.net>
In-Reply-To: <20260519203345.01f21f23@riseup.net>
References: <20260519203345.01f21f23@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/YxUTbEfxMEz6Maef+MZEZD_";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] Re: PCManFM-Qt allows arbitrary files to be opened via the
 org.freedesktop.FileManager1.ShowFolders method

--Sig_/YxUTbEfxMEz6Maef+MZEZD_
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 19 May 2026 20:33:45 -0400
Aaron Rainbolt <arraybolt3@riseup.net> wrote:

> This issue was mentioned in the "On the issue of MIME handlers that
> execute arbitrary code" thread [1], and was brought up three years ago
> in a report about a vulnerability in Mono [2], but it looks like no
> one requested a CVE ID for it, so this is a targeted report so I have
> something self-contained to link to.
>=20
> PCManFM-Qt implements the standard org.freedesktop.FileManager1 D-Bus
> interface [3]. The interface specification states that the
> org.freedesktop.FileManager1.ShowFolders function "assumes that the
> specified URIs are folders; the file manager is supposed to show a
> window with the contents of each folder." I believe the spec meant to
> say that this method only takes URIs pointing to folders as arguments,
> but PCManFM-Qt interprets the word "assumes" literally and hands the
> URIs to a routine that does a MIME handler lookup and launch. If all
> of the specified URIs actually *do* point to directories, this will do
> what the user expects, but if any of the URIs point to files, those
> files will be opened. This can be used for a number of different
> malicious purposes; most notably, if the user is unlucky enough to
> have Wine installed using WineHQ's upstream packages, it allows
> escaping various sandboxing mechanisms (Flatpak, Snap, etc.) by
> dropping an EXE file on the disk and then pointing PCManFM-Qt to it.
> (This is because WineHQ's builds of Wine ship a MIME handler for EXE
> files. That handler runs EXE files blindly.)

CVE-2026-48700 has been assigned to this issue. [1]

--
Aaron

[1] https://www.cve.org/CVERecord?id=3DCVE-2026-48700

--Sig_/YxUTbEfxMEz6Maef+MZEZD_
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCahMwdQAKCRA5rdye4jrr
CCyZAP0bGRpIN5V/Y5/Kn80SSKqOafUSLVar3Wtv/yGJ1s1V9AD9EXfhQaC+a9KS
2auuVtid6jUsbu/WvO4zZoDUGL3kpwg=
=U+Wc
-----END PGP SIGNATURE-----

--Sig_/YxUTbEfxMEz6Maef+MZEZD_--
