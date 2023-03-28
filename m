Received: (qmail 15570 invoked by uid 550); 28 Mar 2023 21:09:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15551 invoked from network); 28 Mar 2023 21:09:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1680037728;
	bh=euq4ZDIY8rX44Wv34LKhqBe1iXadPIvJLQxRnc53Syc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=V67dw/pmEU3Tg0iUp422/uMZtKKjmqsTEOpB3ag2nkcCMjxummgZ/U4ygdK1vhd9u
	 kX2M4fbS+bHAzbqEFAG81wNN7UrvBxsrNVpcEbqIAOTaFh5iwXewSPG+40V9dP/jpD
	 3bzj6rGsRPs+JPxyQz2zy5CNdM1Ofks5pFcTkvJ6s4LDKNz3ZE6ldo36KtB04IaAEb
	 oL+LhVu57BeAYFv+HdWFcB1jtllKnEzs5jNI+7uw1IqWiq0fiknS78gGrGBhE2EJpG
	 BBtmQWd3YvrGiNtDlNYYCGVqWfrvclb7yDARKUhuXt7pEuzjlLYJR3539gf3GeQYBu
	 F2TaodBCnYLcg==
Date: Tue, 28 Mar 2023 21:08:46 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20230328210846.GD3145972@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAOvp68HCA1VXqCpnM9hMOo=BTCghgXfy85e6QxzUVFsaykiwvw@mail.gmail.com>
 <20230328140022.GA11153@openwall.com>
 <20230328202230.GB3145972@millbarge>
 <20230328204149.GA15059@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hoZxPH4CaxYzWscb"
Content-Disposition: inline
In-Reply-To: <20230328204149.GA15059@openwall.com>
Subject: Re: [oss-security] CVE-2023-28464: Linux: Bluetooth:
 hci_conn_cleanup function has double free

--hoZxPH4CaxYzWscb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 28, 2023 at 10:41:49PM +0200, Solar Designer wrote:
> Kristian isn't on the list for a couple of years now.  Two others are
> currently subscribed for Gentoo.

Aha, then I'm quite out of date. Thanks :)

--hoZxPH4CaxYzWscb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQjV1oACgkQ8yFyWZ2N
Lpc1+Qf/a4V2s9wksEOGAzb7zN9eLRLOEbY3028rQ8nugclTZi7HDRhQQdaSHfNs
TrYTdR+i08U7fDBz1wwuw6uBDFKh43ogob6Xiyov226ADX5/y/iBoyKdibtKUZVT
plo7R24YjEPl86LP6zpgkckNPOu9zc3ex820p4QTMHdkJi9XEjSk4G/gjJWA3RKf
/pqyogAf9eYtQT8m+xLZxuOImiE2dkxBm3ax8m6yV5RVGk9Y1WQQ+n/S2LC3Hs/m
goXqIY+s6k7sU1btbebyAhEF0u48zpA+b/wRGbPFiwOROEJ1wwIxrmeKJ+Gj01JA
DSeI0eToFAz0ex8wrEDKb4SmYEQIyg==
=X9Mu
-----END PGP SIGNATURE-----

--hoZxPH4CaxYzWscb--
