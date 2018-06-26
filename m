X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1802" "Tuesday" "26" "June" "2018" "12:02:28" "-0400" "Joey Hess" "id@joeyh.name" "<20180626160228.GA30329@kitenet.net>" "44" "[oss-security] CVE-2018-10857 and CVE-2018-10859: git-annex private data exposure" nil nil nil "6" "2018062616:02:28" "[oss-security] CVE-2018-10857 and CVE-2018-10859: git-annex private data exposure" (number mark "U       id@joeyh.nam Jun 26   44/1802  " thread-indent "\"[oss-security] CVE-2018-10857 and CVE-2018-10859: git-annex private data exposure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14325 invoked by uid 550); 26 Jun 2018 16:19:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28008 invoked from network); 26 Jun 2018 16:02:47 -0000
X-Question: 42
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=joeyh.name; s=mail;
	t=1530028948; bh=0W0BN8wHKxT3pnsuohUNgV6Roms+gK0qIBA+lm55LHk=;
	h=Date:From:To:Subject:From;
	b=FiVlyDKOlIzCKYSPfoHmtnUYG3aZopfrOnJFLr7v7B5IPFjSnyEDhcguxflL29bTs
	 JjEtF8oul+tofUh4VG0jlpX60Knepan+0qQbBcEvwjhMhJhoUar2NixnSsouIJDwtY
	 ojs8Yr/4vWUDNdK5oyvCyeWaVM+kmIIcCssLyXEY=
Date: Tue, 26 Jun 2018 12:02:28 -0400
From: Joey Hess <id@joeyh.name>
To: oss-security@lists.openwall.com
Message-ID: <20180626160228.GA30329@kitenet.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: [oss-security] CVE-2018-10857 and CVE-2018-10859: git-annex private data exposure

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2018-10857: Some uses of git-annex were vulnerable to a private data
exposure and exfiltration attack. It could expose the content of files
located outside the git-annex repository, or content from a private web
server on localhost or the LAN. Joey Hess discovered this attack.

CVE-2018-10859: A malicious server for a special remote could
trick git-annex into decrypting a file that was encrypted to the user's gpg
key. This attack could be used to expose encrypted data that was never
stored in git-annex. Daniel Dent discovered this attack in collaboration
with Joey Hess.

git-annex version 6.20180626 fixes these problems.

https://git-annex.branchable.com/security/CVE-2018-10857_and_CVE-2018-10859/

--=20
see shy jo

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEKKUAw1IH6rcvbA8l2xLbD/BfjzgFAlsyY5QACgkQ2xLbD/Bf
jzjKrw/+Mw2qB8TpXwJ2vf7E6lRhUr2VnyEuvKcSFQO/PbmbLCOVDlpv23AaMMRS
5NsYly1TLD2ZjM/cx4dIr5I7ROfnQidMUPsKz3oKt0NtMVxFgdqPieoVXcfy61Z7
ZpSKJFPqXTK2odCVYoLXgo32VSBf+gt6cop0Ll8xoadY8sbt5Ik5VAn00YznRwy5
S4Tp46CIgAp1LARa7SZukQTZns+ixf02GLC1nWrZhqEJWxm1a4RayDB9zYw4MAzE
1E1ToSVJBCSv/WKwmXmguBCZIKtuMyTLGzfNMFY4Blt2/7sPLfrD6z6vTdyHhoHK
YDFkgfX8NtkLhiaC7x9HgGX1cMdxkmn8hHsMLzkg04OiBh2y45wCqo1QvkxvluXc
miGBk1hcOKi4WiN3Yxf8WaWgFWLxRV9FthZMGASwMiy2c9QHWYJzBWHKikqbx0YV
gE5UIwUcA+c0IUF0lw4XWP1IRUCGG5O0FqSZ2mDxWGLy41kOesp51tgGMmwlJlfy
J9IFWjMMwlEDgCzbMPHgWO7ABeWuU0599uAl6NlDgQffXNGqQmjOzLnDuRkFfgCv
ONZK0ufAFYh9pjK/E8twgIH6QN84tye6zk+hHyHK6YZSTXtWX6yMVXyxyi8AgiVw
I1EFl9HrMPLvcqmByIMEiHQdyvLqJCFHJ122gI4tXQQ4ts9IJEY=
=E/Z7
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
