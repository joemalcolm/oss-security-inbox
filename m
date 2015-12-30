X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3065" "Thursday" "31" "December" "2015" "06:29:55" "+0900" "Jihyeok Seo" "limeburst@member.fsf.org" "<A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>" "70" "[oss-security] Re: CVE Request: Squashfs 4.2 Race Condition" nil nil nil "12" "2015123021:29:55" "[oss-security] Re: CVE Request: Squashfs 4.2 Race Condition" (number mark "U       limeburst@me Dec 31   70/3065  " thread-indent "\"[oss-security] Re: CVE Request: Squashfs 4.2 Race Condition\"\n") "<20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>" ("<20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27955 invoked by uid 550); 30 Dec 2015 21:30:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27935 invoked from network); 30 Dec 2015 21:30:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=ufU85YlWFOyDwyi
	zJ2nmWcavt1c=; b=egpc2kso+Wskr4gAkBnOwojVjmEhsZ9SmgeBfjD2T0Y0tiC
	IVXvTAJAihPh7ei/uoDI8eaDILiEdjt9OW6W7GnzpQFHyNBf6Xtd3B8QY4LQNF8B
	lale663r0o0boQKk55KVTznYKc2KPDAs98nE4uhteH5OlrkM7TO3zZPfasNY=
X-Sasl-enc: /cAS+88oLyMLE6RRhguJ1brifR1vyc8rN0L/PJuD1z5i 1451510998
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Jihyeok Seo <limeburst@member.fsf.org>
In-Reply-To: <20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>
Date: Thu, 31 Dec 2015 06:29:55 +0900
Cc: oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <A1D60BD4-70C3-481D-87A2-5F1B40F0CF3E@member.fsf.org>
References: <20151230203723.D7A576C0192@smtpvmsrv1.mitre.org>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.3112)
Subject: [oss-security] Re: CVE Request: Squashfs 4.2 Race Condition

Privilege boundary crossing does not necessarily happen. However, since uns=
quashfs is often run with sudo (Squashfs filesystem containing files owned =
by root), it is a possibility. I do not know if this bug can lead to code e=
xecution.

However, firmware upgrade procedures (remote or local) which uses unsquashf=
s, on devices such as network routers, could be crashed with an untrusted S=
quashfs filesystem image and lead to denial of service.

> On Dec 31, 2015, at 5:37 AM, cve-assign@mitre.org wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
>> A malformed Squashfs filesystem can cause a race condition in unsquashfs.
>>=20
>> This is caused by the decompress thread attempting to access a shared
>> queue, resulting in a SIGSEGV.
>>=20
>>    struct cache_entry *entry =3D queue_get(to_deflate);
>=20
> Do you have any information about a scenario in which this bug crosses
> a privilege boundary?
>=20
> Do you mean that, because of the details of the SIGSEGV, there's a
> reasonable likelihood of code execution when a victim runs unsquashfs
> on an untrusted SquashFS filesystem image?
>=20
> Other possibilities in which there could be a CVE ID assigned include:
>=20
>  - if the affected unsquashfs code were also available as a library
>    that was used to build a program that was supposed to remain
>    running to handle multiple unsquash operations
>=20
>  - if the affected unsquashfs code were also used to support a
>    SquashFS filesystem that was mounted on a system, and an
>    unprivileged user could crash the system by reading from the
>    filesystem
>=20
>  - (again for this use of the affected code) if a system exists that
>    automatically mounts SquashFS filesystems found on removable
>    media, and inserting removable media could crash the system
>=20
>  - (again for this use of the affected code) maybe a scenario in
>    which the SIGSEGV ultimately leads to disclosure of private data
>    that wasn't contained in the SquashFS filesystem
>=20
> - --=20
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>=20
> iQIcBAEBCAAGBQJWhEAZAAoJEL54rhJi8gl51ikP/icQQJUyV/Zw43KeOs5BmVJg
> dWCI2KqVbhjDWW0esdrzL/LAzYMSvH+jXfNBZthzg2e5pFb3+YjkvKiejS5CZszT
> DTfWTFEfbjDKtIbrISqMAOM7SS9dCy3Zqu37VA1riqzpDRjD4PyoQTn5d95ck8Y9
> 1aPEEgkTv9Z+VbAv1ONvOK6vLeHXcyovkyXyBdJxPYoXXCQjn3CC6TAYW9HF9qrL
> AYgSLCogHI3e1PnjA+EHsBqRBYeh70nkH8yrYWj0WDxZFwmnMTb1p+KE5rOwJw/a
> Gpvq5cM4rtWdV//XFMdBsyg4q/hbJ1leY9W5invnAeeqe8wkVGuJCApS7neRB5pU
> TV9wvGudvn73hkE61yDSR6Hp2qUGcIYZ1FHK9+uSrYmO6zczJJy7F6lax90BmgWD
> bvJUvquYRCwV+OUWLMkN7vctY5BXTiM47wLIi6bJMUma65e3Q5TXHcBd6F3p8pCe
> 7OoNfuzqSDRU1FHz8oxuzLtVMIEzRT9sz9JMTo6ZtdLfzDZBet1qM9p9dXo8Nyej
> 2Kpm1jN2mlvlnHCQzN1XtweCM/eAbQaxM0/WZzhJ3ipIJQnMLCFSeZH7QS6BbuDC
> AAnHD8BIH70VYhmZrHLDaRrW08RYWtyaAdiJMeygsiFIxdNxpPUjmFOHHvElkzw1
> LhwDS57lxKg9o5p1S+zH
> =3DriOK
> -----END PGP SIGNATURE-----

