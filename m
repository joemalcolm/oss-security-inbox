X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3342" "Thursday" "29" "April" "2021" "12:36:56" "+0200" "=?utf-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@isc.org" nil "90" "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil "4" nil nil (number mark "U       ondrej@isc.o Apr 29   90/3342  " thread-indent "\"Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22113 invoked by uid 550); 29 Apr 2021 10:52:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14066 invoked from network); 29 Apr 2021 10:37:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1619692620; bh=5WeRcEYbucBoE0KGH1MsMx/+U7AuH8/TNOjkJk8Q0fA=;
	h=From:Subject:Date:In-Reply-To:Cc:To:References;
	b=K4YJ09TpCNaMzPU/S2KUSPcwquNj8CHlp6tX0JYLfq0WtMzVPoOy1JTG62YAzSMgO
	 i2md2gMW1R9vBjp0gJ2Csk0bzoLoTkBTrT/2y26NvtAAiqg31OWPAi3aMFwRLnZYsD
	 TBEguVhbnRScdMA7AFcGDboT+t+daAaBNgPbwpUY=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org 54325160082
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1619692620;
	bh=YL9RJjXgHOKy/Hw8G7aTRA5f7txAC2EgETaDE4uWcPk=;
	h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
	b=HEa4JW98T2InrWmNwZkW4gCfC/Ega2wKorF61Xn0ZnQirwA6OL0Z3ui0eeIUxyFJY
	 BPy4qXNU2Hus66iXpc2BVetxOI5t39zrXPhZxGzKRnZZDazamkQnXtH3Xw1sFuUwC4
	 2X3O9LL0SQTo66b/jtWaG5lD6GusUun7eqe8LJ0c=
From: =?utf-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@isc.org>
Message-Id: <10CA3DFF-8822-4BB2-8659-8C311199769F@isc.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A7A1BEC9-FF4B-47B5-B7D1-F76E236F922D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Date: Thu, 29 Apr 2021 12:36:56 +0200
In-Reply-To: <4ba1f3b4-9452-c630-cf7a-aa2f7e8b5835@dereferenced.org>
Cc: oss-security@lists.openwall.com,
 "security-officer@isc.org" <security-officer@isc.org>
To: Ariadne Conill <ariadne@dereferenced.org>
References: <bb03954a-2db8-8c4c-3937-a3c59072abb4@isc.org>
 <4ba1f3b4-9452-c630-cf7a-aa2f7e8b5835@dereferenced.org>
X-Mailer: Apple Mail (2.3654.80.0.2.43)
Subject: Re: [oss-security] ISC discloses three BIND vulnerabilities
 (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)

--Apple-Mail=_A7A1BEC9-FF4B-47B5-B7D1-F76E236F922D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Ariande,

BIND 9.17.x was using the system SPNEGO since 9.17.2 (I think).

Also for older versions, it should be enough to use --disable-isc-spnego if=
 you can=E2=80=99t patch it (that=E2=80=99s what I am doing for Debian bust=
er).  It just won=E2=80=99t work with Heimdal krb5, but it compiles just fi=
ne with MIT krb5.

Cheers,
Ondrej
--
Ond=C5=99ej Sur=C3=BD (He/Him)
ondrej@isc.org

> On 29. 4. 2021, at 12:34, Ariadne Conill <ariadne@dereferenced.org> wrote:
>=20
> Hello,
>=20
> On Wed, 28 Apr 2021, Michael McNally wrote:
>=20
>> On April 28, 2021, we (Internet Systems Consortium) disclosed three
>> vulnerabilities affecting our BIND 9 software:
>>=20
>>  CVE-2021-25214: A broken inbound incremental zone update (IXFR)
>>  can cause named to terminate unexpectedly
>>  https://kb.isc.org/docs/cve-2021-25214
>>=20
>>  CVE-2021-25215: An assertion check can fail while answering queries for
>>  DNAME records that require the DNAME to be processed to resolve itself
>>  https://kb.isc.org/docs/cve-2021-25215
>>=20
>>  CVE-2021-25216: A second vulnerability in BIND's GSSAPI security policy
>>  negotiation can be targeted by a buffer overflow attack
>>  https://kb.isc.org/docs/cve-2021-25216
>>=20
>> New versions of BIND are available from https://www.isc.org/downloads
>>=20
>> Operators and package maintainers who prefer to apply patches selectivel=
y can
>> find individual vulnerability-specific patches in the "patches" subdirec=
tory
>> of the release directories for our two stable release branches (9.11 and=
 9.16)
>>=20
>> https://downloads.isc.org/isc/bind9/9.11.31/patches
>> https://downloads.isc.org/isc/bind9/9.16.15/patches
>=20
> These directories only have patches for CVE-2021-25214 and CVE-2021-25215=
. A patch for CVE-2021-25216 appears to be missing.  In some supported bran=
ches of Alpine, we erroneously followed a development branch of BIND, so I =
am trying to determine if there is anything I need to backport to cover CVE=
-2021-25216.
>=20
> Thanks in advance for any advice you can provide on this.
>=20
> Ariadne


--Apple-Mail=_A7A1BEC9-FF4B-47B5-B7D1-F76E236F922D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEw2Gx4wKVQ+vGJel9g3Kkd++uWcIFAmCKjEgACgkQg3Kkd++u
WcLz5A/9GuCSGyngMpgZfqDPVg0qYgoOukyoCWcakaWvwdzNAivObI0zkXL1NHYf
FR4ZOGfHSgYbF0i7UhwZXDyFDnn2zjNV+C3IcEDieSZS81ds+4eBHEEItAEq9JOE
YTYy1kXfKPqA79fQbmA/x8g4aI+bD3Dw3dMl5RhAt9bflEsQGhxFPjadaZ12HDRV
CmaZ1+/eVvdQ52LHvFwzw1FiCzNY5UPOb3Jh9eYlvR3OiLl0CH24bGMblOnblrEH
Satd/vVgqB4xDVH9MLRA2qNHhE3ZcjnLeWl0e8H08awbnU4i7e/SkNIu74Lny64x
fj/VyEjgLwP0kePClLPgPpu5bGHFzGUTBt517AGgHS/1IIVi683cRcy1FqH08iPa
YfCDsIKVJNLg+dLhyf6RuLG8c3k0U8Pz+9qvrQlKsW7kWskyhvplTH/b+kC37Mbn
+/C0uB0iaY+76RFDJmD+2FxOT/AViLlYJkIUwNAvOrf585XyNnPJXLvxRmbsANrl
FD7B0z86oeJJbsECp3PzD/f5Z2KoC8aHLb6hUwt56K2TUC3flD/w9x5LiLK95Djc
IcaGL/A7/CE0egtt1llELy+nCXfWvJFyiFEuirvdjQ/MQ0SZNkP/PlQnVH9q0qiv
Vvufa5zxNXB63ElX3iPFog75a50+hnZW7an0KMMEupeWOjAjM/4=
=sFfN
-----END PGP SIGNATURE-----

--Apple-Mail=_A7A1BEC9-FF4B-47B5-B7D1-F76E236F922D--
