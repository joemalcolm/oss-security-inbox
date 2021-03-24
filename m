X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Wednesday" "24" "March" "2021" "06:31:10" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" nil "42" "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil "3" nil nil (number mark "U       freebsd-list Mar 24   42/1444  " thread-indent "\"Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11956 invoked by uid 550); 24 Mar 2021 05:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11935 invoked from network); 24 Mar 2021 05:33:29 -0000
Date: Wed, 24 Mar 2021 06:31:10 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210324063110.6af05039@fabiankeil.de>
In-Reply-To: <ae651bbb-c98f-9cb8-5392-5f47b254264a@oracle.com>
References: <20201129165312.64bd840f@fabiankeil.de>
 <ae651bbb-c98f-9cb8-5392-5f47b254264a@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/2r5qy0DHY80ACWnO.nKmf2k";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29
 stable

--Sig_/2r5qy0DHY80ACWnO.nKmf2k
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Alan Coopersmith <alan.coopersmith@oracle.com> wrote on 2021-03-23:

> It looks like Red Hat has assigned CVE ids for these issues now, but
> not yet told Mitre to publish them:

I ran into issues getting CVE ids for Privoxy 3.0.29 as described in:
https://seclists.org/oss-sec/2020/q4/234 and
https://seclists.org/oss-sec/2021/q1/90

I've sent CVE ids to this list in February after I finally got them all:
https://seclists.org/oss-sec/2021/q1/101

CVE ids for Privoxy 3.0.31 and 3.0.32 were assigned within days, though.

In related news Canonical seems to have published an advisory for
multiple Privoxy releases including 3.0.29 on 2021-03-22 which claims
that "An attacker could possibly use this issue to cause a denial of
service or obtain sensitive information.":
https://ubuntu.com/security/notices/USN-4886-1

Obviously the memory leaks can be used for denial of service attacks
but I'm not sure what the "obtain sensitive information" part is all
about ...

Fabian

--Sig_/2r5qy0DHY80ACWnO.nKmf2k
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYFrOnwAKCRAFiohV/3dU
nYW4AJ9nM1KkLsgeR2EH/vEcRu4xPYDvUgCgqM/J7q25TsBHarpqYF783tPT9cU=
=BcQw
-----END PGP SIGNATURE-----

--Sig_/2r5qy0DHY80ACWnO.nKmf2k--
