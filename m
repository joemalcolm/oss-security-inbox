X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1782" "Tuesday" "19" "June" "2018" "09:59:53" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180619075953.GA8469@f195.suse.de>" "46" "Re: [oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues" "^Date:" nil nil "6" "2018061907:59:53" "[oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues" (number mark "        mgerstner@su Jun 19   46/1782  " thread-indent "\"Re: [oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues\"\n") "<20180618090836.GB8123@f195.suse.de>" ("<20180618090836.GB8123@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14193 invoked by uid 550); 19 Jun 2018 09:14:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5407 invoked from network); 19 Jun 2018 08:00:07 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180619075953.GA8469@f195.suse.de>
References: <20180618090836.GB8123@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
In-Reply-To: <20180618090836.GB8123@f195.suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Tue, 19 Jun 2018 09:59:53 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cantata: cantata-mounter D-Bus service local
 privilege escalation and other security issues
To: oss-security@lists.openwall.com

--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> A) The mount target path check in mounter.cpp `mpOk()` is insufficient.
>   A regular user can this way mount a CIFS filesystem anywhere, and not
>   just beneath /home by passing relative path components.

This was assigned CVE-2018-12559.

> B) Arbitrary unmounts can be performed by regular users the same way.

This was assigned CVE-2018-12560.

> C) A regular user can inject additional mount options like file_mode= by
>   manipulating e.g. the domain parameter of the samba URL.

This was assigned CVE-2018-12561.

> D) The wrapper script 'mount.cifs.wrapper' uses the shell to forward the
>   arguments to the actual mount.cifs binary. The shell evaluates
>   wildcards which can also be injected like this:

This was assigned CVE-2018-12562.

--HlL+5n6rz5pIUxbD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlsot/kACgkQFMQFyXGS
NVNeGhAAg7wtXY0eIroDOj4s9BXfL/BKcMaTxSGM2vnIF3zbK4eQeOHVFWuLb0Xp
e3oMuEsSXc1v2vTaRzlitK+94aJg6BL6EKBzgDJ4vLGGgUBkiSVQnvh1oRv/JJ/b
Ihu5THzk1AoNGs+5WoEeBEwOBVmUJ0FXNg8egwFx5QPo0KzG7ZTp36m9SwxLiWe3
roNdvGBn8nUQ/H6P+SbKbKETU9M9vcllPPK79VG483cbW291uHRpkaYwkrpl6Oai
Bw/9/qPuY27ANgtxI4Ln/Wlam0D9FTylj/NQIrq6b7/yjluRp2InYAXOoqs5Gz7P
jBj4e+BWVq5xIsp5dgpTn7Xq8bb1sSvtdyha9/U07tINk6Zaze2JeLG8Kp8d1PdY
1mjWLUBnRIw74OBOUfX1xw5NxOjs2yMzziBXwtLA7G3+lawZVtwXDUDzEZc6YXyO
W7vqcnMqHjBcd8HVVAF1ZEBeMzzqXIv8ptsBygz+fLWLEXVlWi5xNEHvc4zs1Y2I
8I7A4hyDLYxZowKvf5ujwpp0EsNhMzSItqaV4r2wtsYH5f1A38oZhHq99Ic2JfCe
D0rHwP+Coe6B7XwjGXQCHa/pBf2N8HY4yQ/q9mWy81kR9DNmj15G00OWSRhLgwoz
a38p9mb6/pBNaOcGv41G8mUCYhkyJuy+TsSjqqPFANU3d73gOoM=
=r80y
-----END PGP SIGNATURE-----

--HlL+5n6rz5pIUxbD--
