Received: (qmail 9419 invoked by uid 550); 19 Jul 2022 00:19:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9374 invoked from network); 19 Jul 2022 00:19:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1658189931;
	bh=Z66FsO1UBdUx8DcGfsq9QMnyOSzoAftiiGJ3VyHMFQ8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=terQbGpZRae9ajKXzKBXO7S1nj9lyBvjwvdsesZy98jxHWHCOK1yP+3eOxvdF5CyB
	 WV8ct6shqmWdVVGt+7OdwzZME6lhjMiv+tuSkSSrH2qYJuuVVeV7VZPbM0wtafGRwA
	 4F7ecUjR2GUu7CRvKDHJ0oTguW4Ee9duzdjcHL7f9CvIQMblvcy5VIy9kOQpvNz6d4
	 r0M+keYebgpJqoa8HJau21x4UCec59pNsQu6NNpUqucaFSlvOWL8HTtSmb5gODaDhK
	 ZdLHqNhefb4SGx45zlDzkWtfGkVO9VIzUP/MaN/ZNlEEZkxaAwwJIMUB27ElxHCrXR
	 ykfRe8cGxnxqA==
Date: Tue, 19 Jul 2022 00:18:48 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20220719001848.GA1516019@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
Subject: [oss-security] snowflakedb security contacts

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, if anyone has friends or acquaintances at snowflakedb, please
direct their attention to:

https://github.com/snowflakedb/gosnowflake/issues/619
"Please add a SECURITY.md file and security policy"

I don't know if what I found is actually an issue but I'd like to give
them a chance to see it privately before telling the whole world. I've
not had much luck with the Usual Methods so far.

Everyone else: *please* take five minutes to write down how you'd like
people to report security issues. Some people subscribe to the "security
bugs are just bugs, report them like any other" philosophy. Some people
want a chance to look at potential security issues privately, first.

Whatever you'd like, please just write it down someplace obvious.

Thanks

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmLV+GgACgkQ8yFyWZ2N
Lpek+Af9GEx/78Wo4nlAxfrAqT+K4BJkto+HKjjqXxz+otIfcSYQUqcKjxJa5SS2
rTcLgqdmMXefGLZ/9kF9xXVVH8h+1VzDX2ib9fUGR5LuTZH3WPkrNM8xkL84viE7
PK6du49xLDjWXqMJX00zVBAE3dMXoLzqhXPUU5XMbKFx/NtDvkKRB9jFDXhKNidd
d44yF0qYNByIzLRA0WTM9gwGZsMiRNtVwOpZ8AguB5/3AANp9MLUPGAlbcuWTmHC
wPsgWWsDw280v6QZiIboexi9ywJ7YqYDbqDlR2W5TgNN2UdaBQ4Mw8jtFHFZp14c
WCDwyGUztxpel13P6KIy19Y7276liQ==
=BzDF
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--
