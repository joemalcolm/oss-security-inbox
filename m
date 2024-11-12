Received: (qmail 30587 invoked by uid 550); 12 Nov 2024 18:08:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9956 invoked from network); 12 Nov 2024 17:17:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1731431867;
	 x=1731518267; bh=ijnLtDgvmWOar4/me3j4PwWALwrWFCx/YAIFNwDgOBw=; b=
	lS+Fn4zYVlZXHHy+GfYpm/GzyedEGFcQHnVIZlu9zNgjMGUHl6XkWtqxutBuBMD0
	JWMy6u+dboC5tq1FbfOgiqzrU+lIm7rfI5QjhH6VldPD7a6HO7TYzZI+ZInPG3q6
	2fgBU+WsaBuUdO+H7OJhHyBM8Kf/8PJVhng6AOUbSpapTPBZdpsgEIBWOtLagXai
	aCNeCv/9XJsm9hM6S9oteY8HSIhdQdHjhdncf6gb7bbnXxuAXr+m9CYXlSwQb7O/
	n9P5vE4DT+5qwILyBeRzG+MlhUFcVkDW2QDjaUmVtwKEcrVJR+bcgmxJwf6v4gUy
	xoS30AbiuUlOUErXRXKTsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1731431867; x=1731518267; bh=ijnLtDgvmWOar4/me3j4PwWALwrWFCx/YAI
	FNwDgOBw=; b=kPskJuplgj0NZxMxMWgPy410eOS/88O0doZx2uri4jNyd1Hr+kQ
	d+hch0Y3U7WKRFt/y5I9/fuvQG24+EVLjTcjEkgufFeVAfCnZ5fyf2uyd+D/Q+wm
	qB8YAeI2I/c5yZ6Wn9RW62RLg2iyOBQ22fN0b5hjhzL9DBkMLaeiwG7sPC25fuLc
	a35TdwcJVfqc3aTOSqScr1m//c2ohXYYhggqStVL7eAk5I5kyAmzHoIi1VJtMqqY
	VQY9NMY5i7GepezFf0c+84OmzXJHs1I3CDYJGMbLze+9lU4hNAKijILvLvqj8igy
	WgIhdo+ir0hJAuSJ5oVcn0rVLDfGPpINg7Q==
X-ME-Sender: <xms:u40zZ7Rx02M1_2f6Bgx1-R7cLUQQqmzspx4yrAzuliQ1d2KQo-J91A>
    <xme:u40zZ8w9FavlOqOON5rqXruL7P5cnMK60jmb-Dr1FTeQPL_hkXwlURkhQOnQe62Pa
    SOr-DmlfSjEKkQ>
X-ME-Received: <xmr:u40zZw3wAMX71O-kTKaIsDr2XyAR1L9OY3v44jpWctvEw7Wy9qi0Ho5Bf2EZk1YdS6eozQbJm3ygGC7p9-KctwPG66ZWNkyRLk4RTr9pHGZg2UH5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeggdelhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecu
    hfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhish
    hisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeduieelfeeu
    tedvleehueetffejgeejgeffkeelveeuleeukeejjeduffetjeekteenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhi
    sghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopeehpdhmohguvgepsh
    hmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhp
    vghnfigrlhhlrdgtohhmpdhrtghpthhtohepgigvnhdqrghnnhhouhhntggvsehlihhsth
    hsrdigvghnrdhorhhgpdhrtghpthhtohepgigvnhdquggvvhgvlheslhhishhtshdrgigv
    nhdrohhrghdprhgtphhtthhopeigvghnqdhushgvrhhssehlihhsthhsrdigvghnrdhorh
    hgpdhrtghpthhtohepshgvtghurhhithihqdhtvggrmhdqmhgvmhgsvghrshesgigvnhdr
    ohhrgh
X-ME-Proxy: <xmx:u40zZ7BP8Y9x5dbJFapL0dHJOItfObf9Zv2RypGXR1F5z9w9JycH9Q>
    <xmx:u40zZ0jS2mlypibJLGqdReyo0kREI8cWJSe2Rv-7Op18NIOHwYUtZw>
    <xmx:u40zZ_rUXnY2Q4DAgLwzaMQXbPhRai3aMcvoWedDMJRIBIKZTOAH0g>
    <xmx:u40zZ_jbzi78V9kDhB31SeBie1useTaol-G3oKh9H2g8C_RA3KAAZg>
    <xmx:u40zZ8fxEqtbaIIiEkkRym-hjm-q_J1YFGm6IqvbgCPbYX-i6R4jR-kS>
Feedback-ID: iac594737:Fastmail
Date: Tue, 12 Nov 2024 12:17:32 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, xen-announce@lists.xen.org,
	xen-devel@lists.xen.org, xen-users@lists.xen.org
Cc: "Xen.org security team" <security-team-members@xen.org>
Message-ID: <ZzONuZFo1-AXNOFd@itl-email>
References: <E1tApeV-001S2c-2H@xenbits.xenproject.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7Jj9SHbtbfH3XlO5"
Content-Disposition: inline
In-Reply-To: <E1tApeV-001S2c-2H@xenbits.xenproject.org>
Subject: Re: [oss-security] Xen Security Advisory 464 v2 (CVE-2024-45819) -
 libxl leaks data to PVH guests via ACPI tables

--7Jj9SHbtbfH3XlO5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Nov 2024 12:17:32 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, xen-announce@lists.xen.org,
	xen-devel@lists.xen.org, xen-users@lists.xen.org
Cc: "Xen.org security team" <security-team-members@xen.org>
Subject: Re: [oss-security] Xen Security Advisory 464 v2 (CVE-2024-45819) -
 libxl leaks data to PVH guests via ACPI tables

On Tue, Nov 12, 2024 at 12:05:47PM +0000, Xen Security wrote:
> Only PVH guests can leverage the vulnerability.  HVM and PV guests
> cannot leverage the vulnerability.  Note that PV guests when run inside
> the (PVH) shim can't leverage the vulnerability.

Is this unconditional (perhaps because the relevant data gets zeroed out
by the shim), or does it only apply when the PV guest can't extract data
from the shim's memory?  For instance, 32-bit PV guests aren't security
supported anymore, but the PV shim isn't supposed to rely on the
security of the shim itself, only of the rest of the system.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--7Jj9SHbtbfH3XlO5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmczjbQACgkQszaHOrMp
8lNKRQ//fncRGpQS3i56xefRQVPTv0stbt6+FFFlM//dfnsbm3VBG6UNGKvU0wx3
mLCt6zBq1GvcApEyWPaoDUKAp8d+GKlBzMITEvsA7udAp48dAPcMel0/SE03faxW
P4g9MuLmiQuXDbjlhA+mwVNSxqrV+R9fDp0IstFy2XgnpWC1pjImtaUYITS2E1NK
QlSUWNVmnqrlKdbxxSGmJUYE2MDJ5C7QVsdra4jcCIjpkcQrpmyxNx6HM3EJRc7V
0PUd+XP8PYnpU4SSFgOmYXEhVDJGTISE1XIGDnhF8zzLVU5IPZLLNGu2kZyz1T2x
vxgsDb8FSsqleGIZXNZeNYLHzCKcEWrhxJCuH0El221MnIb0QP6iSKP1EQfNQShX
lUcJFNng63latxvebGUNpZ4GSkG21gpIF/0be2KZNCt1a8cUQM+A1/YCAf0e+idP
SX37fovtsg2wP+Z4R0vUCkacgj37PaCp40Fe7nRxcSan1wsCF40hnfJ2qENuWp8N
skEFG3u4yZ7onaayoQYi/LIAe1tj9oa8FnXbB2YwWwySS9W5YPZAGg7HlCtZapNN
PAPcou8vGFseKRVHbU5ojY33g3Ok72nd8Ge2djJopeQNDF4RkH7NauxFbxP3UDs+
RZ9jhJDHijOQHU20kmUEUudro7gZAMkkKzuNkTVt+BcZA0h/9Xs=
=72sK
-----END PGP SIGNATURE-----

--7Jj9SHbtbfH3XlO5--
