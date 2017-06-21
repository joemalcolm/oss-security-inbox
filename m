X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1723" "Thursday" "22" "June" "2017" "01:03:16" "+0200" "Franz Pletz" "fpletz@fnordicwalking.de" "<20170622010316.6a70d902@yolovo>" "48" "Re: [oss-security] Re: Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062123:03:16" "[oss-security] Re: Qualys Security Advisory - The Stack Clash" (number mark "        fpletz@fnord Jun 22   48/1723  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisory - The Stack Clash\"\n") "<87efud2ewm.fsf@example.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170620132204.GA6240@openwall.com>" "<20170621212835.GA28151@localhost.localdomain>" "<87efud2ewm.fsf@example.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23830 invoked by uid 550); 21 Jun 2017 23:06:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22026 invoked from network); 21 Jun 2017 23:03:30 -0000
Message-ID: <20170622010316.6a70d902@yolovo>
In-Reply-To: <87efud2ewm.fsf@example.com>
References: <20170619152843.GC7769@localhost.localdomain>
	<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
	<20170619203933.GA910@openwall.com>
	<20170620132204.GA6240@openwall.com>
	<20170621212835.GA28151@localhost.localdomain>
	<87efud2ewm.fsf@example.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-unknown-linux-gnu)
X-Face: (C&]]j"8g!1JH#PrAAuZTTtl6CAu?S]m6@'20~I5e*Mg%PO6AVO+K|]p:+ov4@ll/sA%_\%[?G:
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/DOFUEQKTQrLaD_wI0x/q3hr"; protocol="application/pgp-signature"
Date: Thu, 22 Jun 2017 01:03:16 +0200
From: Franz Pletz <fpletz@fnordicwalking.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--Sig_/DOFUEQKTQrLaD_wI0x/q3hr
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 21 Jun 2017 22:45:45 +0100
nospam@curso.re wrote:

> not sure it counts as a major distribution (probably not), but NixOS
> (https://nixos.org) is gaining traction and, as far as I understand,
> they are working on patches but they don't seem to be ready yet.

Hi,

there is an open pull request[0] that will be merged soon.

Unfortunately we can't yet fulfill all of the requirements of the
distros mailing list. That's why we had no prior notice.

NixOS does have an active security team[1] though.

Cheers,
Franz

[0]: https://github.com/NixOS/nixpkgs/pull/26750
[1]: https://nixos.org/nixos/security.html

--Sig_/DOFUEQKTQrLaD_wI0x/q3hr
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEijlhXc54rwguI/MDhG/e13kmF7QFAllK+zQACgkQhG/e13km
F7SfHhAApk1hRAGdBIfAAiybbu0eo5ZOPNfw07emIqx0h4N+8+deZqpXM3o11rp8
crK7cAuX1yDoBtBMw9IaUtNAMmLMF3EzhXMNwaxNTkhG0tCnIzNkyId7omASdryr
MKS/heUdKEacJMsHOzpJfwSeDyqoV6fG0WNriRJWOhPS8/TBW2nQANxjKJNGn7g7
QiMtiNE4h12pXh8H8Elb6iBxxnkSMBV9BvYMBuIg1N+9fsCn0JeloAATiCZDhhOi
qmbzKaTmNsVqw9ycgV1VmxxXoC2mB2MaNWcGuBOYFfziKTGoETvPZRVIlioFOOS5
I+f1mEwmXR09QI0flYrVWHUq3XEq4sfsgEl6CTQvSdUsucZjQK/K4Uf84IUjNgc2
UVIcmNk8B9oxBikAkmUbOs9gSGWk8bzzDrBM6H2PZwQI662HEo6/BDgR588aC0tB
VDSO+/PSoanmPiAkyxQbWbGXIXC6PInmfdw4VJLHQk3jKp6NYTLsGPoqyiqKuNoT
M6uS7cRQyg92zEMvl8dmuo5QiLMOocnM0RbS3LVfIx0b2KFWI93m2DoVP3mwgnJz
zuWKuVCiUqXNIU9SiWqMgLh/LtgiJBNubegsP42qMdfyAcCgUMkjvrtYQq8QeFjV
GkqSgijOQO8OB5K3DCzWPMweSgkalqpXGGPmSG/Mz7OHBkfb6rQ=
=KfQl
-----END PGP SIGNATURE-----

--Sig_/DOFUEQKTQrLaD_wI0x/q3hr--
