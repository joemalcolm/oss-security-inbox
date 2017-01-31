X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2649" "Tuesday" "31" "January" "2017" "19:21:58" "+0100" "Thomas Deutschmann" "whissi@gentoo.org" "<006d8bdc-f460-0572-b584-8271c9c11056@gentoo.org>" "69" "Re: [oss-security] Re: Firejail local root exploit" nil nil nil "1" "2017013118:21:58" "[oss-security] Re: Firejail local root exploit" (number mark "U       whissi@gento Jan 31   69/2649  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<1207006894.2769604.1485695665647@mail.yahoo.com>" ("<20170104131248.GA28596@suse.de>" "<1207006894.2769604.1485695665647@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3797 invoked by uid 550); 31 Jan 2017 19:26:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17709 invoked from network); 31 Jan 2017 18:22:22 -0000
To: oss-security@lists.openwall.com
References: <20170104131248.GA28596@suse.de>
 <1207006894.2769604.1485695665647@mail.yahoo.com>
From: Thomas Deutschmann <whissi@gentoo.org>
Message-ID: <006d8bdc-f460-0572-b584-8271c9c11056@gentoo.org>
Date: Tue, 31 Jan 2017 19:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <1207006894.2769604.1485695665647@mail.yahoo.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="l8x8RGVhLk18kGt5FRmi6FQ7Xv3Nu220m"
Subject: Re: [oss-security] Re: Firejail local root exploit

--l8x8RGVhLk18kGt5FRmi6FQ7Xv3Nu220m
Content-Type: multipart/mixed; boundary="bw1KARmEEVc40auijIcsxK2loR01JV8nM";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <006d8bdc-f460-0572-b584-8271c9c11056@gentoo.org>
Subject: Re: [oss-security] Re: Firejail local root exploit
References: <20170104131248.GA28596@suse.de>
 <1207006894.2769604.1485695665647@mail.yahoo.com>
In-Reply-To: <1207006894.2769604.1485695665647@mail.yahoo.com>

--bw1KARmEEVc40auijIcsxK2loR01JV8nM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 2017-01-29 14:14, Ion Ionescu wrote:
> The first fix for CVE-2017-5180 in Firejail version 0.9.44.4 and
> 0.9.38.8 (LTS) was incomplete. Changing .Xauthority to .bashrc in the
> exploit code, the problem is still there - credit Sebastian Krahmer.=20
> New releases are out: 0.9.44.8 and 0.9.38.10 (LTS). Please assign a
> new CVE.

Associated commits which already appeared in v0.9.44.6:

https://github.com/netblue30/firejail/commit/38d418505e9ee2d326557e5639e8da=
49c298858f
https://github.com/netblue30/firejail/commit/b8a4ff9775318ca5e679183884a6a6=
3f3da8f863

Backport for v0.9.38.10:

https://github.com/netblue30/firejail/commit/903fd8a0789ca3cc3c21d84cd02824=
81515592ef


--=20
Regards,
Thomas Deutschmann / Gentoo Security Team
C4DD 695F A713 8F24 2AA1  5638 5849 7EE5 1D5D 74A5


--bw1KARmEEVc40auijIcsxK2loR01JV8nM--

--l8x8RGVhLk18kGt5FRmi6FQ7Xv3Nu220m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJYkNXKXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/Ik84QAJqULAkWUYptmZ0yXEk/aU0g
4eo95UQJOkqsnEMvzcbRWSfM2Pqkxq1iVcI0PpiongvsSuChoxTGIB8y1GNKpC9k
G2xR/7csdhdatucu7Fz2zLGniP4shVJnFgnzSpfwQy85MwSW8NzJs0NSustBxPYk
lBoyt5ktqVK3Sbamc5Q3q/NGUCEdqUsYpZHjYquvf79jR/+2vP5PdLWLn6dM8ZF4
P7noiueRd5DktLIAIXoGOSIEGvM97eD1j5+aJY1+k5BRwm5q30Zy83cDeM99fo36
4dAYqpCRNUXfL0yAwKgJ7+H4dje1rafyAXTX7kEPkCzX3gRxOyR9l2p9izycNRsC
oww2KvmQG3SmxyMLdtHpHAXUKOIj3z2tDWUwQ9sjVvG24bdJ0xTfNkFX3TqV/LGT
yqio5ecAkjEFGjfhBupoh1jP/gW6MZypZLTxf7IzwUJIBuCajNvdbed8MEiq6H9k
wR7RGCygpWaGoJbf1evEu1AfRqG5uD8qC+et5tb7AUekVUtXr6Q4hkaSOHnCrXru
8NT/inl332UDtlpU8EiJBWHjrd0pSRvtMeQ9f7u1U5KEp777qG3o7bisAS6Q5PzM
NgTfRrNZbsG4AKAu50Xfu97ME3Nb29d09ml720cTdgB07vNJqM+PNXMisMw6g5Tp
z8OEbsl/+wG+w7oWS9H4
=2b0N
-----END PGP SIGNATURE-----

--l8x8RGVhLk18kGt5FRmi6FQ7Xv3Nu220m--
