Received: (qmail 27982 invoked by uid 550); 11 Apr 2024 13:44:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9898 invoked from network); 11 Apr 2024 09:13:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spwhitton.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1712826811; x=
	1712913211; bh=VDKnq8MjRVb7zLD443A4e44f+y7SURRffKzqtMhsqc0=; b=c
	G3gpshEqLfSgb78pU7qETTbGeXIs6nI1aF6xv80NztVjLc3uoDY30dJuVDYj/eay
	vXEfOdAtXn9C+Xl5uirJ0uwRK5BQrqUAD1ERy3Oi3TSUvXeDt+xojL+NkMjpnQpi
	E8GIQ1oSPAKZiN85pqFqtKhWN5hKp4T/rNxcxgXzfCR2ftXqYS3kP3LV6xRTG531
	G657RJNd+A6h3ZMqVhHQf+FoomKjnzv2L+QWnG/c4jM1fxK7TIhWo246rhm0PHbl
	X90Pp139815jvh6sLKoRqOCcvktY8BlGkE4YL29/jupXmr0ukO3kgHrhw+3Kmrka
	f6RS8kEJX1mYRv+/FpXkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1712826811; x=1712913211; bh=VDKnq8MjRVb7zLD443A4e44f+y7S
	URRffKzqtMhsqc0=; b=MsXW0fzbG6AwqAoMFYxnu9uQV61LX7HzUI69aIe24zDQ
	sjZXRwVtCNen09+OThP8wqjUaB1OTxV74lTONCETmcPjQyfnbLpbjkvktR8B8Y3g
	439QgQclssqDrdqh8Pj9E4Mg0xldhTi93WiUaRX/MjXRGiH5etDW1xoiRmqFDb74
	r803DwzeGf8oTnZugs8KRCmebCYaoVg5Jwk6iZnE6eH64ezRFHxU2CYU7AczHe56
	894LBTVoekLCZ5RcoXeECcMEO2ffs4WhBfTu0SIv7T2BVamt6FG90mHkAs4EkkNo
	8jLel04A2RYyhWeBW4Wkb7q/+JJOvEjzk+NEbH7lLg==
X-ME-Sender: <xms:u6kXZjCFpMQe-8I0AvgeefoWMDKIaFltoNaHc4LP7gLOs7PKZXbyMw>
    <xme:u6kXZpjx6zkIxkX198J4KwynxApf2M0xVNjI7M_Ki58CrFUrtRvZU7JGvVrn5HGBZ
    DitN5tHrtnjWMsi-A>
X-ME-Received: <xmr:u6kXZunFBCQGMgDmD-e8hZpVZuJHpyrAOBUTdZSGZ56yGHIPaQytbpkqmkYOAGz40Mqfsuf843MIow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehkedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufgjfhffkfgfgggtsehgtd
    dtredtredtnecuhfhrohhmpefuvggrnhcuhghhihhtthhonhcuoehsphifhhhithhtohhn
    sehsphifhhhithhtohhnrdhnrghmvgeqnecuggftrfgrthhtvghrnhepveefheelfffgtd
    evgfefuedthfdvgeehgeeihedutdejkedtffdtieeuieeujeelnecuffhomhgrihhnpehg
    nhhurdhorhhgpdhmihhtrhgvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepshhpfihhihhtthhonhesshhpfihhihhtthhonhdrnhgr
    mhgv
X-ME-Proxy: <xmx:u6kXZlwGh2VQgwFV8PvPK6cs6MlE34QXaGjgOp7pZeSHlwm8pUTBSQ>
    <xmx:u6kXZoQhSGucMwJGKR0s4lmvFWqj6nzpKdyecrrg5Ng0Q0t6qPuxMw>
    <xmx:u6kXZoZ5aVopjbqCc_GkTLpkrhAeyiBjQDn64H-vvh0w-LVEJpPqUQ>
    <xmx:u6kXZpSzPPBJ_HhJrIN9H_7vwWiQTHM2HLxtipUqv17vlx_1gdvI1g>
    <xmx:u6kXZuOgseDitOI3lGhLvoZIMlXo88RoYOWCU45MZVr7DFvJQV5nJrPJ>
Feedback-ID: i23c04076:Fastmail
From: Sean Whitton <spwhitton@spwhitton.name>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: oss-security@lists.openwall.com,  emacs@packages.debian.org,
  emacs-devel@gnu.org
In-Reply-To: <Zhafa3wcZONJX-_k@eldamar.lan> (Salvatore Bonaccorso's message of
	"Wed, 10 Apr 2024 16:17:15 +0200")
References: <874jccjpvy.fsf@melete.silentflame.com> <87y19nu22i.fsf@localhost>
	<87bk6he8h4.fsf_-_@melete.silentflame.com> <87o7ahe85l.fsf@localhost>
	<Zhafa3wcZONJX-_k@eldamar.lan>
Date: Thu, 11 Apr 2024 17:13:26 +0800
Message-ID: <87y19kcle1.fsf@melete.silentflame.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed 10 Apr 2024 at 04:17pm +02, Salvatore Bonaccorso wrote:

> Note that the CVE assignment (by MITRE as assigning CNA) for
> CVE-2024-30203 is explicitly as follows:
>
>> In Emacs before 29.3, Gnus treats inline MIME contents as trusted.
>
> associated with:
>
> https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=3Demacs-29&id=3D937=
b9042ad7426acdcca33e3d931d8f495bdd804

This commit doesn't fix anything at all, just fyi.

> If you think the CVE assignment is not valid, then you might ask for a
> REJECT on https://cveform.mitre.org/ .

Okay, I'll do that, thanks.

--=20
Sean Whitton

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJNBAEBCgA3FiEEm5FwB64DDjbk/CSLaVt65L8GYkAFAmYXqbYZHHNwd2hpdHRv
bkBzcHdoaXR0b24ubmFtZQAKCRBpW3rkvwZiQAlBEAC8DAT6MA2SN9FbTFWhtKZq
im0N65ds0UX35A6kGFDH3DAb+DMGKwrp/cB393MppOpFDknZ0Wwv9CdCDuOsFGuY
U4rcgDSPJBBDNkJf+UO0neo9wCNicQDWIx/8hYwqAg2U/cYjx49fnm5ITWfHTEUB
ZPT4dk1RIOdmiz7fhxigCDP86f6KLDXijAn66w6BUYv7Mn7CzYg2FB1XeEKkXpJj
IXSHi8mqnMxLaVB3igMws+G9yoIDdKuHay4gFFxp7uI1sgXbjtCYHRFV9ZHA5y25
+xoAzPjjxkqtF2PiwDKQLZhg4Ef3ACWb2ZMaB4kPmXzfMoNm4ZQ45kIEwzbL3VAs
PLmx52WiUPisvwouOnGOVHzRCqvElhKvPOq6q6uCoqhDe1qhGh6K6kzimhz3PY0q
xIfLqIWfdNJhH/o6krg+V3pMxqD/i0BUHlejrR9fyMjdDFK0MTLM5E7j1W8RewQb
CFmIqU7SfdTrJmS7seysCs+Qex2AH/D0kxfDgWYqbDUAZT0YGUmsDH+ssIXa5dqj
rEE7ksrz+4fviNZQKs6zbQACSJYxSMatYtwAuKQ0OnDjWGtAVUCkabMCapP/Thpu
FFsXnLtQ12b1/MdwLeG2dEOTrSSWV3hxk8IPL+9sRd629JBP4MaYttMB9Fy8kF4V
7+4XPBdvZRX8hSBHBd2cqw==
=/D6w
-----END PGP SIGNATURE-----
--=-=-=--
