X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2689" "Wednesday" "17" "March" "2021" "13:12:38" "+0100" "Wolfgang Frisch" "wolfgang.frisch@suse.com" nil "67" "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil "3" nil nil (number mark "U       wolfgang.fri Mar 17   67/2689  " thread-indent "\"Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14323 invoked by uid 550); 17 Mar 2021 13:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13829 invoked from network); 17 Mar 2021 12:12:50 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1615983159; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sHMXLv54nztmgiUoOT/fOrylBZMIH+9kAE2gemE0klc=;
	b=ckm2iC13+WFsNGeKOANAmGVyoRQ/n2Cbhf8pV/QJSL2P+3vkgiDUPAIHKDtI/zUKeJxYBX
	8gwB5u1WWqYmxxuFA6gxRXb20PaACv7EFnw7mCs1zpaH1FBcLO2B72FaOeIwT/t/VotZse
	OHCHH4cOmt1h8CWIZWF1NY/CxTbNqqQ=
To: oss-security@lists.openwall.com
References: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
 <YFHVuDKj+oMwxBZX@kroah.com>
From: Wolfgang Frisch <wolfgang.frisch@suse.com>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <209aa35a-1730-012b-7dc9-cdd700d5598c@suse.com>
Date: Wed, 17 Mar 2021 13:12:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YFHVuDKj+oMwxBZX@kroah.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qUj7he3KzRomdqwN9SxxM47q9wvlzTwr1"
Subject: Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in
 ext4_es_cache_extent

--qUj7he3KzRomdqwN9SxxM47q9wvlzTwr1
Content-Type: multipart/mixed; boundary="h556DAFYZO6m39AzQkyz5NIc1LP9cLwlo";
 protected-headers="v1"
From: Wolfgang Frisch <wolfgang.frisch@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <209aa35a-1730-012b-7dc9-cdd700d5598c@suse.com>
Subject: Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in
 ext4_es_cache_extent
References: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
 <YFHVuDKj+oMwxBZX@kroah.com>
In-Reply-To: <YFHVuDKj+oMwxBZX@kroah.com>

--h556DAFYZO6m39AzQkyz5NIc1LP9cLwlo
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 17/03/2021 11.11, Greg KH wrote:
> Are you sure that SUSE didn't already assign one to this?
>=20
> And if not, why not

I chose not to assign a CVE after consulting with security@kernel.org=20
and proceeded to handle the issue as a regular bug. Local denial of=20
service bugs that require specially crafted file systems and the=20
elevated privileges required to mount them, are generally not considered=20
security issues worthy of CVEs by the kernel community. It's a=20
borderline case but I have no issues with this new CVE assignment.

Best regards,
Wolfgang


--=20
Wolfgang Frisch <wolfgang.frisch@suse.com>
Security Engineer
OpenPGP fingerprint: A2E6 B7D4 53E9 544F BC13  D26B D9B3 56BD 4D4A 2D15
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nuremberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Managing Director: Felix Imend=C3=B6rffer


--h556DAFYZO6m39AzQkyz5NIc1LP9cLwlo--

--qUj7he3KzRomdqwN9SxxM47q9wvlzTwr1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEYqBDpiSp/H/7pxro7t22gcnlyyMFAmBR8jYFAwAAAAAACgkQ7t22gcnlyyN8
xg/9HobsedmX7lJyPXCZyMTdK5F8iNyUNqqSSEnzGeDzxLan/UO7dC78uC8iFfbNil3sORJGx/lw
75TctrmKWWfrRq05pdwCn1iXrmiUuVdeb1GhJ2tdXshaedsSsPxHWHK40+Vnzu/X4V+RYbF0I0Ju
fLt+i+SJlVZwkvQtHpd1CEIE7oks/aSuyUfM7T6gaj/Pi+TUeVp3NSFThiayu0WsVvjOvjTh1mQo
BG8fvTiXzgt2RiAoIIzI13MWvc0kzN6Q2vTcJRO/auwi1HKOuvGpR1FpjCxJKK7NJfqVmFnMFdZY
XCD91GNx4Xbpg6BQ87+nAvKL5HSJ0GYXJvEty2yc+Sqa8wkFGlGCFXw3FwXbFVknxwMWBIx4lUPt
3uyrQ9Y18FBdF1VlMzRlIXxSv8GoqMFIdWTaPLE07IR3ebf0yRPj0Atwnsa2RonFXExCOlgJ2QY6
mESxU6K9VZpHP3yqWxeeUYGk4+i35et+hPOgm/e1GDu/edew5arnRQlGSKzwxLxmQaIi6ELI483B
6E2somnBWwxYRCY5yKYd6ewiR2tbBqi25cIrRO0saNzddzbqpJsj5E2eq5/xOzOVP/TppjD3oCpL
FbSCYMB+6+65oFQBUl9THMMA+V++9TGwh8b237ioz69gmhM3DKIs8zliCCcOjnlsiaECuLVqPtLs
rIg=
=S6/D
-----END PGP SIGNATURE-----

--qUj7he3KzRomdqwN9SxxM47q9wvlzTwr1--
