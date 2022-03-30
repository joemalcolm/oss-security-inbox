X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1257" "Wednesday" "30" "March" "2022" "20:11:36" "+0000" "Seth Arnold" "seth.arnold@canonical.com" nil "37" nil "^Cc:" nil nil "3" nil nil (number mark "        seth.arnold@ Mar 30   37/1257  " thread-indent "\"Re: [oss-security] SpringShell and recent OpenJDK updates\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] SpringShell and recent OpenJDK updates" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11691 invoked by uid 550); 30 Mar 2022 20:11:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11670 invoked from network); 30 Mar 2022 20:11:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1648671103;
	bh=WkYZg4NXq04ZP55WSZhvA3UNPKX3JTn2rvu9p0sNLk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=ZQtTdE3VoxNpdLzH4N3aFUJcSrGCMcrW9Sh+hL++SJ4upX3WB2fYejRDbxpHiAfzW
	 CVRyAlo1g6CpG9l0F6onFV8kKAvjyKUwalyBCG7SQb4vuc0IwuxPClHZn1ordjTZ51
	 aG9LBD0LNZIyANSHD83v6AlRMgyst/AqE8bv+48MfHsZH4tgv9oLwE+/l2ni2Q0uNo
	 WYyOEaDtFRqGbZwOPj4AUwNoWCIKygAaueThnUveA9lerSg8wJs15EUuK9QkAVadT+
	 JKMZ3dgz1JgpTMJYPRE8bt4eB9jxSFmoSNAJ5bN71/yQJROCgrIXl8xqYagXcemfu0
	 aNHDsRWZL4tkw==
Message-ID: <20220330201136.GA3061879@millbarge>
Mail-Followup-To: Jeffrey Walton <noloader@gmail.com>,
	oss-security@lists.openwall.com
References: <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
Cc: oss-security@lists.openwall.com
Date: Wed, 30 Mar 2022 20:11:36 +0000
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SpringShell and recent OpenJDK updates
To: Jeffrey Walton <noloader@gmail.com>

--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2022 at 02:31:41PM -0400, Jeffrey Walton wrote:
> I saw Ubuntu patched OpenJDK 11 recently. [1] Was that due to SpringShell=
? [2]
>=20
> Or stepping back a bit, did the SpringShell folks work with distros?
> Or did they really drop a 0-day?
>=20
> [1] https://ubuntu.com/security/notices/USN-5313-2
> [2] https://www.cyberkendra.com/2022/03/springshell-rce-0-day-vulnerabili=
ty.html

Hello Jeff, as far as I know, Ubuntu received no communication from
anyone about SpringShell. These are just bugfixes.

Thanks

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmJEuXUACgkQ8yFyWZ2N
Lpfwugf7BM6vsOPr5vxhafMpqa9v+Lv7uaKT/wgDtOXfWo13V4O6Ja9RrEUN58Op
3FW1r4TtPwLOKz1vUCnlKPs1GiI7X4jIFbDWWneQLrtLFAa75vkVAp3jHmVpdCtj
GDy3HDYZSF3hC/injgRo/wEz86A4V2dvST18TsVzd+B7itXnM5HSMD1FvqQDPFdY
o5y9E+nUFVrO2SWzrm9R+5wC0rUMFMggKeZ7DaVRcS7RnnfsD/xeXxb8HbxSF99T
kN/Yt5q9Cu+cAQd6Rg4VQ3VA3ZC4seragZLSL1VtDnsV1lMlz8C/UkgiBIVDwm/8
JEGX8w2BAuvToSHPYwK7oMx/yJdqsw==
=xOTL
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--
