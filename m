Received: (qmail 29751 invoked by uid 550); 25 Feb 2026 20:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3261 invoked from network); 25 Feb 2026 20:04:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1772049839;
	bh=dFBs+9B0y2YeMiGb4d69FL51uw+C/Iq7dbsLdKMmuYw=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=s6FUgVcbVd8goq94ebkOO6DqjA/o8YwDGJROPpacKSeOc0p7SiIxTBFRt2Y/uEhbp
	 IBc5Bx3DTwEMFnL2M23yTfXSz+G2asPNN1U1qJBWl900jc0Hg42NEfxlomk8yMBfui
	 NAA8C9hHvEHdHYGB9zaF7K15iK9LbPmqasD7bDJ5M+7cO1S2QVLx+2Y5PQV6AC1DBM
	 I2MOOQZFFcBn6MznwHcQprT3J3WfPQbs/7N7tUZZVJsON9DpM27dm6cA9ss08E0MV/
	 EO1C4+qVKz4LWCoJ7zjv5cz+g8D1gGE370DS9q8v9jGnP6t/FZuZzE2HcN7cxt8/62
	 ksEqIP5aDKxUA==
Date: Wed, 25 Feb 2026 21:03:54 +0100
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20260225210354.2bbf0d04@stinkedores.dorfdsl.de>
In-Reply-To: <20260225194709.3XDsVdwv@steffen%sdaoden.eu>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
	<20260206172730.GA12303@unix-ag.uni-kl.de>
	<877bso8mhf.fsf@josefsson.org>
	<20260224011702.27987-1-justin.swartz@risingedge.co.za>
	<B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
	<27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
	<20260224203337.GA17345@openwall.com>
	<a0bad9ebbf4507c4@orthanc.ca>
	<CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com>
	<4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
	<20260225165449.GA23380@openwall.com>
	<20260225194709.3XDsVdwv@steffen%sdaoden.eu>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/iICPOdcgLqzeh.7mxO+Uvhr";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] Telnetd Vulnerability Report

--Sig_/iICPOdcgLqzeh.7mxO+Uvhr
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Am 25.02.2026 um 20:47:09 Uhr schrieb Steffen Nurpmeso:

> It seems to me one reason to use telnet(1) arises from the fact
> that there is no nc(1) around.  busybox has one, but it is not
> feature rich enough.  And the one of LibreSSL, which is, as it
> says, a swiss-army-knife, is very often not available at all.

IIRC this issue is only about the telnetd telnet server daemon, not the
client. This service is only in use if enabled in inetd (or
replacements) by the administrator.

--=20
kind regards
Marco

Send unsolicited bulk mail to 1772048829muell@cartoonies.org

--Sig_/iICPOdcgLqzeh.7mxO+Uvhr
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEpXefSZn9R6zNZtTQE76RLz2tRfAFAmmfVaoACgkQE76RLz2t
RfALig//b4TdN45k4GhnTruo5f7zD3Abp9pR+iA84KGclOUISOT/PVFAmWNP8yj0
umYPLhGv2kjsP+EVQZLBbTnEoR7mTXV+S3iEGfmAyoY8/ldii2ZH47//KpSwJAB5
rARaZvSi/ghcpXp5NLT/ptOyPWvevoltx5A9jRSH2SmTc8taYZOPdoQtu7fBIraG
+nf0/JMKgVim8UmGE8ZPWFYOY8rNg6HE1/O59yl5cMsw6xUSHRm83xbzofaJ+h5o
PIEKctDhZ3siiTe6mvxkFMCbf2/Z/Kdiqh8l0VIch/mI3eXIMgfX12TZq/acR4ww
PkwlbQUXmoelyz+5NAGz3kBRu4r0MrCREBajIukMQJ84BTn9dEZUW+9NcKp+Glcf
ztH7BmU2fxgFN47zEPXWIYI//T583wZyFvwVy8sYH/gIWk8OS28uy79uOpK5hpUp
HfVDuYBskdK4e3H0TD7cK/1y+OjFr+99XoglKGxpP++KGMKn2q/mnKROIBGOegxL
HxlR+XvDbqMfkKIWuI+7hIf6Vnkc2XIuKcSfmXEmAQSduCbNxs99JPSawpH9z5aV
+icaJgcX1gs+FycIr29/vHTBM36miWjw/YQdmoGzbfsLz2MaqO0FFWF43CCv5IRX
GWo2R+yTulf4Z4fRKAz3bTNfOJKw0YbvFxTWCOF2w8aDJdteE+E=
=ztM3
-----END PGP SIGNATURE-----

--Sig_/iICPOdcgLqzeh.7mxO+Uvhr--
