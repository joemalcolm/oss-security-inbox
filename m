Received: (qmail 5196 invoked by uid 550); 29 Mar 2024 20:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23867 invoked from network); 29 Mar 2024 20:17:45 -0000
DKIM-Signature: a=rsa-sha256; b=lNhU1jN80Q/EOZGX+IiJA+aBZxL9vlvcRwW8ZLDuCqfiARVrRZNWcHlJq1NdG0h67ksYPYWTSe4kqIwKrbrArIJTN2SbqgpjXEF+dbgg3Pe+OGTMaPOOxHXrbwFfHt8jn6tUFH7UTVRupAQ4a15uExULXUsqLJ0krouDJHBR1/oiW8YVWd+D+ost2RG/hr5dT/GDnSRBUKU+mR+N+37oDh8VmyvAbqB8btAbRhaTM4LqS5Aa4XDukBE+i0dTGMGhBSEDqW1f4r3xJiKsckoSSPjiW7pY7mM9Jia3y46WI/hfn11wNghEi1atc3fKLP8nwRW8CKAc3xC8pyF449IBPw==; s=purelymail2; d=levitati.ng; v=1; bh=EvjJAzASdUfgx3nv3P17v8j2Kvd8UKhZ3SxpdAyxLfA=; h=Received:From:To:Subject;
DKIM-Signature: a=rsa-sha256; b=cXj/wdFoc8Qc5qWx2TfRaerBvF7HUHZn5EEAx9+8EseuMG6TeOH03C/rTPxWSZ0SFIRG47B8AjN/B/0hJYHA1MUSGx/VKMdCH/FaykcJzcPajOXlgjChcpxBIyG9qlZhxXxqTRKzb/+tsgG/lmBtltf9iRtj5GRB2I5wz/Kf4aoAK6jo+1MDZyjFbKxwQRoecgK3z5/45VBz9U1vSxl6auq+Dzzq0yisvmnobkmHJsC3dDaA0b+BVAidvqSQdlPMM/h56+HCu70n6Vy/UwWE3ikyOrl0zS1tfKgTbw6jFa28j6JT7dN5jhpSxYavE6PE8W82z/fJ0L0zRwpzv4g2xA==; s=purelymail2; d=purelymail.com; v=1; bh=EvjJAzASdUfgx3nv3P17v8j2Kvd8UKhZ3SxpdAyxLfA=; h=Feedback-ID:Received:From:To:Subject;
Feedback-ID: 25799:4744:null:purelymail
X-Pm-Original-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Date: Fri, 29 Mar 2024 21:17:29 +0100
From: "Rein Fernhout (Levitating)" <me@levitati.ng>
To: oss-security@lists.openwall.com
Cc: "Alexander E. Patrakov" <patrakov@gmail.com>
In-Reply-To: <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
User-Agent: Purely Mail via Roundcube/1.6.5
Message-ID: <2b0cea4ac146cfa257c60538909e03c4@purelymail.com>
X-Sender: me@levitati.ng
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

> P.S. in the detect.sh script, the "set -eu" line plays a bad trick: it
> aborts the check if sshd is not actually linked to liblzma.

Or if sshd is not in PATH. (/usr/sbin/)

On 2024-03-29 19:59, Alexander E. Patrakov wrote:
> On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund <andres@anarazel.d=
e>=20
> wrote:
>> =3D=3D Affected Systems =3D=3D
>>=20
>> The attached de-obfuscated script is invoked first after configure,=20
>> where it
>> decides whether to modify the build process to inject the code.
>>=20
>> These conditions include...
> <snip>
>> Running as part of a debian or RPM package build:
>>     if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D=20
>> "xx86_64";then
>=20
> Could you please confirm that the Arch Linux binary package was never
> actually compromised?
>=20
>> openssh does not directly use liblzma. However debian and several=20
>> other
>> distributions patch openssh to support systemd notification, and=20
>> libsystemd
>> does depend on lzma.
>=20
> <snip>
>=20
>> Observed requirements for the exploit:
>> b) argv[0] needs to be /usr/sbin/sshd
>=20
> I have checked, and found that Arch Linux does not apply any patches
> when building OpenSSH.
>=20
> P.S. in the detect.sh script, the "set -eu" line plays a bad trick: it
> aborts the check if sshd is not actually linked to liblzma.
