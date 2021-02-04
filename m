X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1058" "Thursday" "4" "February" "2021" "16:46:32" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20210204164632.07072b24@fabiankeil.de>" "36" "Re: [oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" nil nil nil "2" "2021020415:46:32" "[oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" (number mark "U       freebsd-list Feb  4   36/1058  " thread-indent "\"Re: [oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable\"\n") "<20210131131308.47c79861@fabiankeil.de>" ("<20210131131308.47c79861@fabiankeil.de>") nil nil nil nil nil nil nil "Re: [oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15398 invoked by uid 550); 4 Feb 2021 16:20:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32041 invoked from network); 4 Feb 2021 15:51:31 -0000
Date: Thu, 4 Feb 2021 16:46:32 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210204164632.07072b24@fabiankeil.de>
In-Reply-To: <20210131131308.47c79861@fabiankeil.de>
References: <20210131131308.47c79861@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/Uc=NfzGI+AoOXOJ_wb=J7cB";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: Re: [oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable

--Sig_/Uc=NfzGI+AoOXOJ_wb=J7cB
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2021-01-31:

> --------------------------------------------------------------------
> ChangeLog for Privoxy 3.0.31
> --------------------------------------------------------------------
>=20
> - Security/Reliability:
>   - Prevent an assertion from getting triggered by a crafted CGI request.
>     Commit 5bba5b89193fa. OVE-20210130-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20217.

>   - Fixed a memory leak when decompression fails "unexpectedly".
>     Commit f431d61740cc0. OVE-20210128-0001.

CVE-2021-20216.

Fabian

--Sig_/Uc=NfzGI+AoOXOJ_wb=J7cB
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYBwW2QAKCRAFiohV/3dU
nQ9YAJ42RVLiBBdG8pEW72ESYSMsDQ0g/gCgunJmS5YKcJCZpgBqR7Mc+SIWgKM=
=aTbS
-----END PGP SIGNATURE-----

--Sig_/Uc=NfzGI+AoOXOJ_wb=J7cB--
