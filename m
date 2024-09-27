Received: (qmail 19873 invoked by uid 550); 27 Sep 2024 00:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13321 invoked from network); 27 Sep 2024 00:23:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1727396607;
	bh=495VcIpvA+XZHandvgguRDILKLt2EPV8m9EB/d+3/RE=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=k+6yPu6GZ/GmvlDrlMeXL4Sy1IjT7INnn1p42RYSV+HW/ZPIj5Ven4Tm8/tvxJdI3
	 4T7MxZ/ZdqWJR3xNHZwBDh3HbQ+es4JsxoN2fNXrIk1olHfslYFjaLJK0uc1lyUmLx
	 E56J67J1FAn25l8Y+ayiOkSj+XAaxoHZjz7xkDm8un3ym768ji5/xSSZmL+DH66HUm
	 rxwMLGMeM1m62QT4YP0v6TQz7ac/5f3bWc8uVquD+QXvCrr84pdVfZDFYmmBVyfxbK
	 4Bh98r4y6Ri2GZYgjU36odGKAM4iZi7mUSl4665KwHet4FmNWByNoQxXAo2zDY2EPZ
	 YJxmOcmqU/MhQ==
Date: Thu, 26 Sep 2024 17:23:24 -0700
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZvX6_CRRRbCHSkzZ@aeon>
References: <20240926221125.GA10895@openwall.com>
 <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
 <20240926234952.GA12532@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eVMDXJ87//D+9746"
Content-Disposition: inline
In-Reply-To: <20240926234952.GA12532@openwall.com>
Subject: Re: [oss-security] CUPS printing system vulnerabilities

--eVMDXJ87//D+9746
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 27, 2024 at 01:49:52AM +0200, Solar Designer wrote:
> Thanks Alan!  On Twitter, Alan further clarified that "once it was clear
> the info was out there, the distro makers wanted to end the embargo so
> they could publish advisories telling users to disable cups-browsed
> instead of waiting for patches to be available - those with VINCE access
> had hours of prior notice, not just two."

I don't believe this is how distro security teams saw it. Once a
vulnerability is leaked embargo no longer exists. In this case, the
original disclosure report was fully leaked online. Since the embargo
was broken and PoCs were posted, certainly nobody would want the
originally agreed to coordinated release date (CRD) of October 6th to be
kept. The intention of holding to a same day CRD (20:00 UTC) was to
stage the available patches for release and limit impact.

--eVMDXJ87//D+9746
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmb1+voACgkQszvZgG6F
IMbC+w/8CNL8PyMZcjy27rM/R5mLfXcpXhV4vafrTHMQ4aTrMKbHp2tC4hFE3eOn
OzVwQCMnCbUjSGx5HzMm9KbEbN+U7jzYsDk1DAr2Qjhl+uErtYn+HRekrw4tlFXW
ZuzofnOtvZcfQuvoWZPusKFI6fQovLHAVTUZHSCAiG3zrMDKt2ViqkUPmrGQE6d6
euOW5eJ6YUX1xbiJZ26BYubR8J9IrwzE+Nd0ahd+LQH9WBoU5xtWZ3OJnEuunhwR
E0EmccxesrnN3G9zjm6E8l9KsHkhUljT1Yr0IrFKsCOidK4HyWyamp8TwfXNxNCV
5fZeIumi7cohpiN7nFq6buoHwIyrX6MzYI+xcPVEFblW2eGKTGiwxVH3notij+dQ
ntsjMhwbyr/JL1SEnpRKo0Ldm2lOxgRP/2lgdGi09uqOkErUbAsvxCoSibvcMpuc
mQIxmpbLK6AvIIsLTOMtXEVxJMl7s/scuHPs77atYx3zShfZtyIwOFTZ6UlTwbBb
M8lqvxZXKcqcftrM97aIqRxj9CwkPknINueLi7kFw3nG1raC79s/Qa3UYdfdLyWY
5Q709J67+H6YPPVPPKUKzCCxsrx06WDTAwiJoE0PyXDBrunPZOYmo4U5M4wH1mkR
n6eaQH8xmSTusJjuYn+lLkzQ/Z3ki5guxJ+v+LC3kuxUYnG1oVY=
=h7Bt
-----END PGP SIGNATURE-----

--eVMDXJ87//D+9746--
