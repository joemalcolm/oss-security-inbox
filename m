Received: (qmail 3507 invoked by uid 550); 3 Apr 2024 14:20:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5640 invoked from network); 3 Apr 2024 14:09:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	In-reply-to:Date:Subject:To:From:References:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=0ZguPymMk0tIQEIpw9GT4wrQp7eOSO4Kyo9OYqsYVC8=; b=SX1t+BMmLi/PM/mpL1/675Etwq
	sILG1xbYgDHxbfBpwJPbuyIHBHE0iiDIYQyQnP4wfkKlUuPGTqf9ag4kHZkdaLAkTijHxDnhs7cGd
	xisBv89ZeWF4UyNiANdhXKG+RX94rTF5d7D0UvSHWRfNDiYU5Rgkpzjehq5VFVi7LR7wzeAFSGhbn
	I6oPebiPHZHaFHXj8w+N6Xc/10Blr9iSLGM1KLsEVC6AyoVmYuxOws7GOnvlqsjuuSxVC+l7Uu+eK
	gy0aOQlo/XaVpnZ/X/6EZB4xhgWOavny9dx0EyYQPiZNjp5s2PnT19wa4m/VCtgbi85xYLndOrHYG
	4FL9SvGg==;
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
 <CANnLRdgMaDewcaKVq9OdiNBq-AsF-JchQsMLY0xuY033P6j=rw@mail.gmail.com>
User-agent: mu4e 1.10.8; emacs 29.3
From: Pierre-Elliott =?utf-8?Q?B=C3=A9cue?= <peb@debian.org>
To: oss-security@lists.openwall.com
Date: Wed, 03 Apr 2024 16:07:45 +0200
In-reply-to: <CANnLRdgMaDewcaKVq9OdiNBq-AsF-JchQsMLY0xuY033P6j=rw@mail.gmail.com>
Message-ID: <87cyr6tu5c.fsf@daath.pimeys.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Debian-User: peb
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Stephen John Smoogen <smooge@gmail.com> wrote on 03/04/2024 at 15:38:08+020=
0:

> On Wed, 3 Apr 2024 at 09:07, Nick Sal <specialroumpa@proton.me> wrote:
>
>> Hi,
>>
>> Assume we filter SSH access only to a public domain subnet using the fil=
es
>> hosts.{deny,allow} as seen below.
>> Would this prevent an attack if a malicious payload was *not* sent from
>> the allowed subnet?
>> Trying to figure out if an attack like this was still possible, for the
>> few days in March the backdoor was active and undetected in rolling dist=
ros
>> (e.g. debian testing).
>>
>> /etc/hosts.deny:  sshd: ALL
>> /etc/hosts.allow: sshd: "a_subnet"
>>
>>
>
> Does Debian still link hosts.allow/hosts.deny libwrapper with sshd? [or
> does sshd pull it in from another source?] I know some distributions no
> longer use this method to limit controls.

=E2=9D=AF lsb_release -a
No LSB modules are available.
Distributor ID:	Debian
Description:	Debian GNU/Linux 12 (bookworm)
Release:	12
Codename:	bookworm

=E2=9D=AF libtree /usr/sbin/sshd
/usr/sbin/sshd=20
=E2=94=9C=E2=94=80=E2=94=80 libcrypt.so.1 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libz.so.1 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libcrypto.so.3 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libcom_err.so.2 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libkrb5.so.3 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libk5crypto.so.3 [ld.so.conf]
=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libkrb5support.so.0 [ld=
.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libresolv.so.2 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libkeyutils.so.1 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libkrb5support.so.0 [ld.so.conf]
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libcom_err.so.2 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libgssapi_krb5.so.2 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libkrb5.so.3 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libkrb5support.so.0 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libcom_err.so.2 [ld.so.conf]
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libk5crypto.so.3 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libselinux.so.1 [ld.so.conf]
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libpcre2-8.so.0 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libsystemd.so.0 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libcap.so.2 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 liblz4.so.1 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libzstd.so.1 [ld.so.conf]
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 liblzma.so.5 [ld.so.conf]
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libgcrypt.so.20 [ld.so.conf]
=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 libgpg-error.so.0 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libpam.so.0 [ld.so.conf]
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libaudit.so.1 [ld.so.conf]
=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 libcap-ng.so.0 [ld.so.conf]
=E2=94=9C=E2=94=80=E2=94=80 libaudit.so.1 [ld.so.conf]
=E2=94=94=E2=94=80=E2=94=80 libwrap.so.0 [ld.so.conf]    <------------------
    =E2=94=94=E2=94=80=E2=94=80 libnsl.so.2 [ld.so.conf]
        =E2=94=94=E2=94=80=E2=94=80 libtirpc.so.3 [ld.so.conf]
            =E2=94=94=E2=94=80=E2=94=80 libgssapi_krb5.so.2 [ld.so.conf]

Seems it does.

--=20
PEB

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEE5CQeth7uIW7ehIz87iFbn7jEWwsFAmYNYx8PHHBlYkBkZWJp
YW4ub3JnAAoJEO4hW5+4xFsLk7gQALkrtNrpJR4KIVik7dGW3Gpqv6WawK/wufyA
mejRCtBO03kOblPIy2Jo73ub4z5fhNk2J/Ibj2IwK0QQ9bVuMpO+GLrCxXfYfMJk
1pU4sOJHNqjjhf6J2hcnEbBVfxtTU4QxlmMh06iVYrVmIDKnr/T4uqVnLVPaH8/v
ExylyRs1Jr/yiCzhT4D1QiWEAu8VZdiULQB+V2z/8YPmtiCN5xhL2daSY0w4yBCf
QBleaQEGlCxo8C/5FDS0H89uiphg6/iNFjqZhSL9AkSSpxy1cBByqR9nB8B0nCCL
aBdQ/QrSf5b5fyBGpCqWYaqcNHA4a07Uev4RJAehXFGQkzLlQQ7fRUq1YqVq2IMb
5F7P+1pDs8d7A+VbzGNMsegs1FkP/Gy4yHDiHRVSbE5rGPqqAlpa0eV934ssMp6U
OduThPgdWsnUGj/T4DYWrgVYYCd75SCKGGDG7iRjFduXOGFPPyLk68Ck5eS8/pH9
e8AThWrZnaxF9Sep+3fLZHo5MWKcnHQSfkNXxZjfB4mEBzHXwtGnp2FzCIZUoFtQ
4Je4Xtu+wKocYyDgfOKydPOY7kR/lYongu90yqefzpcPQMY59JqBdvc5JMkdnxI/
VmgTcdzoYIldW0miiGZ4DcnVWOCqMRecsTdACd7+VE4dg49WcYQcfS/ziMzglH2w
0c5yEnRI
=sVgr
-----END PGP SIGNATURE-----
--=-=-=--
