Received: (qmail 30521 invoked by uid 550); 19 Apr 2023 14:36:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7556 invoked from network); 19 Apr 2023 14:18:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1681913915; x=1682000315; bh=er10UB05oMT3uSpxVTBPJ/GP/61qIsANiuJ
	6UhRiMwU=; b=Uqrtlg8tlrd3/iSuDYexByk4Qalb1i9sEXrnaCYo+DIFToib0UG
	9WWRAyK5AGLAyAc/M5H2aKifKapMOVlPVPQG42t+4fzKHwwFLumbHu6rY+owEqaC
	SlzzOQB3mq82RasEoXGuZzrC7s5KO11D+wi2FlmWmamm5PoHG6eu2V5GMSPDzqvI
	Ag542gdlgXoCoz46ovK48Bzkg6Kh88YWgAynW1X+lVp5EeKzjFcEDYAVm6espRnr
	Id5WwaZ8jUwWLl6MDRQ3SGMTyPyPhxeIS3ScNLZcIJTlKBXUyiMzdo9E8215Phyr
	zwEwhmmkTS3KMkes7W8/ODwMsw7lraJ0V2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1681913915; x=1682000315; bh=er10UB05oMT3u
	SpxVTBPJ/GP/61qIsANiuJ6UhRiMwU=; b=D9dlWypyJp9VsLDwL+pndOvy6Pply
	8BbdcqjYr2TUfsKXOTyNSAWA5OVE5iHW3Grl3kONON5s0MbRiCS4bClk5IG4LsYs
	7Bz0KK4UDZWbcB1alFANnC+3MovpQ2DCbWp6AVxT/XSYAUd7PWFNQSve8Pq8uV0Q
	hSM+1xo6jGsEV+WgoMGVz3h0l4ui0P8f8+kSYt7wE7XQ/aOStgRt+3O/s+PjwAD9
	ptVUi/9oHWr11LIg4hCGRXGKIFAk0FYMGXLKlEitztWZdUqgef6S162y/XpB87QK
	oEuOQL9mKyvtDLU0L0ruscU74e48UJiaIlTKmUTEQyqq2CpnirmyvoHKQ==
X-ME-Sender: <xms:Ovg_ZOmBC8sEuM-USfrPdxNMQIu8iuJtifyCXOkJ78jO-YZmp3Nujg>
    <xme:Ovg_ZF3CX-MwpqtL5HiRkrHTkewsz6TlZ_t2jRbvpold8dZcqX8Ysp7ERJHprVpA4
    nAs9x6t3JJcL1Q>
X-ME-Received: <xmr:Ovg_ZMqngaOdwd3Vs_u0RNBgtrVnnPNAXhbktFUWeeQg2M649r5jheIC4VE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedttddgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpedvtedtfeeggfehieefvedukeeiteejffffheduudfhvdfhveehhfehveeiveduheen
    ucffohhmrghinheptghprghnrdhorhhgpdhgihhthhhusgdrtghomhdphhgrtghkvghrih
    gvthdrnhhopdhtihhnhihhrghsihhnshgvtghurhgvthhlshgtvghrthguvghfrghulhht
    rghffhgvtghtihhnghgtphgrnhdrphhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgr
    sgdrtghomh
X-ME-Proxy: <xmx:Ovg_ZClZDzoslDbEEXAL8XduTDvOmiRzNwN5E2ya_-jvgivclx7iOw>
    <xmx:Ovg_ZM2Qs35a5YpI6fWOoZiVfOBX1YqkJ4fifvFoTMYT9AKv8oBGaQ>
    <xmx:Ovg_ZJtxbwpDuRgnEpF2j_yqyXkXgCCcIj4gNma9MV_uQuwCXxNT_A>
    <xmx:O_g_ZNgDRRMEq2CrnMymjE_FHKbSrrKWEvc8Egw4-fBVAD_CBHyh7Q>
Feedback-ID: iac594737:Fastmail
Date: Wed, 19 Apr 2023 10:18:27 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: sjn@pvv.org
Message-ID: <ZD/4ODBjTesPMECg@itl-email>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WOR7oQxRZ4U1nnUU"
Content-Disposition: inline
In-Reply-To: <20230418154630.eoheygqyom3c7ovw@stig.io>
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

--WOR7oQxRZ4U1nnUU
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Apr 2023 10:18:27 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: sjn@pvv.org
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Tue, Apr 18, 2023 at 05:46:30PM +0200, Stig Palmquist wrote:
> HTTP::Tiny v0.082, a Perl core module since v5.13.9 and available
> standalone on CPAN, does not verify TLS certs by default. Users must
> opt-in with the verify_SSL=3D>1 flag to verify certs when using HTTPS.
>=20
> We grepped trough CPAN to find distributions using HTTP::Tiny that
> didn't specify cert verification behaviour, possibly exposing users to
> mitm attacks. Here are some examples with patches:
>=20
> - CPAN.pm v2.34 downloads and executes code from https://cpan.org
>   without verifying server certs. Fixed in v2.35-TRIAL.
>   https://github.com/andk/cpanpm/commit/9c98370287f4e709924aee7c58ef21c85=
289a7f0
>=20
> - GitLab::API::v4 v0.26 exposes API secrets to a network attacker.
>   https://github.com/bluefeet/GitLab-API-v4/pull/57
>=20
> - Finance::Robinhood v0.21 is maybe exposing API secrets and financial
>   information to a network attacker.
>   https://github.com/sanko/Finance-Robinhood/pull/6
>=20
> - Paws (aws-sdk-perl) v0.44 is maybe exposing API secrets to a network
>   attacker.
>   https://github.com/pplu/aws-sdk-perl/pull/426
>=20
> - CloudHealth::API v0.01 is maybe exposing API secrets to a network
>   attacker.
>   https://github.com/pplu/cloudhealth-api-perl/pull/2
>=20
> ... and more. We have generated a list of over 300 potentially affected
> CPAN distributions.
>=20
> More info in our blog post:
> https://blog.hackeriet.no/perl-http-tiny-insecure-tls-default-affects-cpa=
n-modules/

IMO this is an HTTP::Tiny vulnerability.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--WOR7oQxRZ4U1nnUU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmQ/+DgACgkQsoi1X/+c
IsEFIA//RdaVhPHarVRDfEJbfGXjTycwL6Jh1vhk0v9L5gFwFtvWECvvecCKI8UC
1z/1LotjcEWj/JYt/UeOdaCt+ga1WFuWwkG3bhHVSMRL5HYYxgERRcmWefXTZguV
/NtDTWexqKAZs8FRj+L4/lLHAEgBjzjMloshTfmdDxd8eBei1SnC7bnSUnHVW+ut
GT2fV2rsF4bsVZ5S0uPxqv5f0McFKp9c1Do04V97fHJKhEToyo+6gbHEI2Cq4Uwp
KjYvKU8NcQdHtWWklBMk8NAdSFdi+FSSVfaCyPePbE/Z3zFV9mjSt6u0DWkTU1xP
EX2CylekUOn4i6fi02NT4IMI5ECgCMhRgQ3qppduPgyMNxOoGS3w8JOd0obswHJm
kK/yxB2AtOhWanfUPrIvHDu1cn/bLdWRDtt57lLSmAjLtRqn2u5saZxO/KaH5w+R
79TMnMWh0SZeWrjvkC7yl1cKOMj3qjQVyZkZxFAweo7rHNJaJkjvcuT5obSLLXD4
yw9qgCZgvnRLvEVc4fOb3mWA5Jkh9d/OiNrC7GfWpz662utSLLYzMp99pIURojoN
7Bvq8D9zshQgmRE55ctsXsBWwhSN24IH9VBSRyU4FBnimre3AzKjIYJkir2ikGvG
uZdPK+PRqSs0+F/lGUXvL8G6RfTbOlrwaq1osSBmR35uqTBk3gs=
=Hu5o
-----END PGP SIGNATURE-----

--WOR7oQxRZ4U1nnUU--
