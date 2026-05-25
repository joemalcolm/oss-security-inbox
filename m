Received: (qmail 9749 invoked by uid 550); 25 May 2026 01:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17562 invoked from network); 25 May 2026 01:36:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1779672984; bh=+DbtfEuoU8sjFNcR7LiKPwMGgCDCKst3JDAimgtgmnw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eIDSUD4kOaA+zIzu2wWkgq865nl6ZjWeNOUjN4DfWYyA9l79OqBY1OB4kViSRfew5
	 /rwgKnWdvir9qwOcRovMPr27QHblphpdPRiaqqxw7HnCtteLyHsIDOJCFMQOAJ676E
	 r/ZUJq94KtSnsJWFeV4+e4+iInkCchbXy1AW7rKg=
X-Riseup-User-ID: 61CF8D5A2E9857489AE36F87333EDAC66FDA134D61E3387FE832EDB7E030ED7C
Date: Sun, 24 May 2026 21:36:21 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org
Message-ID: <20260524213621.18bd1dad@riseup.net>
In-Reply-To: <20260518220116.170677b2@riseup.net>
References: <20260518220116.170677b2@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/zlTzyTSWByGhWz6t_m2pBHU";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] Re: On the issue of MIME handlers that execute arbitrary code (e.g.
 Wine)

--Sig_/zlTzyTSWByGhWz6t_m2pBHU
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 18 May 2026 22:01:16 -0400
Aaron Rainbolt <arraybolt3@riseup.net> wrote:

... snip ...
=20
> If all applications followed the xdg-mime manpage's advice to never
> execute code when opening a file, this wouldn't be that big of a
> problem. This is where Wine comes in; it ships a desktop file that
> registers Wine as a MIME handler for
> 'application/x-ms-dos-executable', 'application/x-msi', and
> 'application/x-bat'. [3] These handlers result in the command 'wine
> start /unix FILE-NAME' being run, which of course loads the
> executable code from the opened file into memory and starts running
> it. That means, if you are unlucky enough to have an unsandboxed copy
> of Wine as your only MIME handler for EXE files, any flatpak on your
> system can break out of the sandbox by writing an EXE file somewhere,
> then opening it with org.freedesktop.portal.OpenURI.OpenFile. This
> issue has been reported to Wine a short while ago [4]; I didn't
> report the issue privately since I couldn't find a security contact
> for Wine and was encouraged to make a public bug report when I asked
> for a security contact on IRC some time back. (I was also given an
> email where I could privately contact someone, but I no longer have
> it, and I was somewhat discouraged from using it when I initially
> asked.)=20

CVE-2026-48831 has been assigned for this. [1]

--
Aaron

[1] https://www.cve.org/CVERecord?id=3DCVE-2026-48831

--Sig_/zlTzyTSWByGhWz6t_m2pBHU
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCahOnlQAKCRA5rdye4jrr
CPgvAP9vP/2tZ0xQIpnQi2FStlNOIAARLuaaq8OumvWatFobdAEA2/zAnLEWhO4f
nHAiy8I8Q5aFMZq0CB0L7VlqL7ixgAI=
=ai7D
-----END PGP SIGNATURE-----

--Sig_/zlTzyTSWByGhWz6t_m2pBHU--
