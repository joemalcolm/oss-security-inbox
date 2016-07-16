X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1844" "Saturday" "16" "July" "2016" "19:14:58" "+0000" "Jesse Hertz" "Jesse.Hertz@nccgroup.trust" "<1A3BE2DB-669B-4519-B07B-F1F51C5BA6D5@nccgroup.trust>" "47" "[oss-security] Re: Multiple Bugs in OpenBSD Kernel " nil nil nil "7" "2016071619:14:58" "[oss-security] Re: Multiple Bugs in OpenBSD Kernel" (number mark "U       Jesse.Hertz@ Jul 16   47/1844  " thread-indent "\"[oss-security] Re: Multiple Bugs in OpenBSD Kernel \"\n") "<AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>" ("<35D91F81-1E00-4305-8DED-848D88C8CD58@nccgroup.trust>" "<AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9673 invoked by uid 550); 16 Jul 2016 19:15:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9622 invoked from network); 16 Jul 2016 19:15:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1468696507; bh=L8ae/asruMgrFKRAo93Zjp37nQUmbzb/ZBEyYdXN9oE=; h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version; b=bIRJ674NgqXIiJACAijWv9QYeYvvZkAsSnm+pBF3MJc5+pMOWTXFI25+TWZWWsIjutNEM53lhGCG1Gc5HWILHZYqQa+5WRXQSWUkh8ymIY4HKwoiB837cwZ74prxfsjXxGE7xOGlK846sHBYZvJY87fZ2OgPRqIVcx2ag3KiHLg=
X-MC-Unique: TAkGftsuNCCnP5Z9IpysCA-1
X-PGP-Universal: processed;
	by lon1srvpgp01p.nccgroup.local on Sat, 16 Jul 2016 20:15:00 +0100
From: Jesse Hertz <Jesse.Hertz@nccgroup.trust>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Thread-Topic: Multiple Bugs in OpenBSD Kernel 
Thread-Index: AQHR3hQFSyYzmyvBYUCpie/5A5eo7qAYXwmAgAMAugA=
Date: Sat, 16 Jul 2016 19:14:58 +0000
Message-ID: <1A3BE2DB-669B-4519-B07B-F1F51C5BA6D5@nccgroup.trust>
References: <35D91F81-1E00-4305-8DED-848D88C8CD58@nccgroup.trust>
 <AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>
In-Reply-To: <AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.1.120]
signature: OK
Content-Type: multipart/signed;
	boundary="Apple-Mail=_83B23BC4-02D0-4402-BD98-FA1F3AE06F1A";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
Subject: [oss-security] Re: Multiple Bugs in OpenBSD Kernel 

--Apple-Mail=_83B23BC4-02D0-4402-BD98-FA1F3AE06F1A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi, can you please assign CVE=E2=80=99s for the issues mentioned.
> On Jul 14, 2016, at 5:23 PM, Jesse Hertz <Jesse.Hertz@nccgroup.trust> wro=
te:
>=20
> It appears that me using HTML emails may have made the attachments unread=
able on the web interface or for some users. Apologies. Here are the attach=
ments again in a plaintext email.
>=20
> I would also like to note (thanks to tj@openbsd for pointing this out!) t=
hat with regard to the bugs requiring kern.usermount:
>=20
> =E2=80=9Cthese bugs are now root-only in -current since the kern.usermoun=
t option
> was disabled and will be removed entirely. may be worth a mention on your
> write-up. https://marc.info/?l=3Dopenbsd-cvs&m=3D146851081629533&w=3D2=E2=
=80=9D
>=20
>=20
> <kevent_panic.c><mmap_panic.c><mount_panic.c><thrsigdivert_panic.c><thrsl=
eep_panic.c><tmpfs_mknod_panic.c><ufs_getdents_panic.c><unmount_panic.c>


--Apple-Mail=_83B23BC4-02D0-4402-BD98-FA1F3AE06F1A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXioeyAAoJEPhkPVYKhDWb3bgIAKPpsdYFNgqmzzI6EK1VUeOO
hCsfkAfmyj8kS/7Uk3DSjlSgYce11eb+qG4j4TDogYJk95zlseMVI+fOKTxbb3Dg
lP5pRne4Y3JaYMj+yF4zChCmbqHW10IImZdsJq95YRdLMeRjsq2oJEUZXfuiXPxl
e7Dj2cNgdLCMF//sgTiPwMi+L48aqTmYuTGvBNHIlQZRIdcoRTkmyHOfpVf4oJPD
X4VxqjnroY4QmIxIhFTsGg3IrVD59DuKo01Mv022RfyT331T/SdOWLCzVTo9WMUL
ZFREnJmxjiVgud0vShH8rBS8YmhkdT7ICKfc3HTDuxg/txDrvR1/3Ce1yCnSEGU=
=p/qG
-----END PGP SIGNATURE-----

--Apple-Mail=_83B23BC4-02D0-4402-BD98-FA1F3AE06F1A--

