X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Thursday" "14" "July" "2016" "21:27:36" "+0000" "Jesse Hertz" "Jesse.Hertz@nccgroup.trust" "<9DD65BAF-CD30-48C7-8BE6-4D740A14AD0C@nccgroup.trust>" "28" "[oss-security] Re: Multiple Bugs in OpenBSD Kernel " nil nil nil "7" "2016071421:27:36" "[oss-security] Re: Multiple Bugs in OpenBSD Kernel" (number mark "U       Jesse.Hertz@ Jul 14   28/1072  " thread-indent "\"[oss-security] Re: Multiple Bugs in OpenBSD Kernel \"\n") "<AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>" ("<35D91F81-1E00-4305-8DED-848D88C8CD58@nccgroup.trust>" "<AC2FF540-C9A4-4A44-97D5-10E9E0874B24@nccgroup.trust>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32688 invoked by uid 550); 14 Jul 2016 21:28:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32521 invoked from network); 14 Jul 2016 21:27:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1468531661; bh=RXdFDZtdv9NXwTrgrf7WHcby1z/6xYscPRqlNUGOQzQ=; h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version; b=ZpGHNz8bY+891hrq3IYKukL+q4uFuSGHAiD157PtbH1dPOqXiDmO6dfjW/2eiNARAGiILQbToyi8RA8/mSmiK/eCTKXJnBGAifYyrHlKflF7CEeI4kuZUMhJdZtU29xiWJRW5OJcsSLOpMYOyZ14UnMBt6IhuwDTlFsJ5Bbj3Wc=
X-MC-Unique: Aj8LbXg_MJWe1WiiXPH64g-3
X-PGP-Universal: processed;
	by man1srvpgp01p.nccgroup.local on Thu, 14 Jul 2016 22:27:38 +0100
From: Jesse Hertz <Jesse.Hertz@nccgroup.trust>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: #NA-Disclosure <na-disclosure@nccgroup.trust>
Thread-Topic: Multiple Bugs in OpenBSD Kernel 
Thread-Index: AQHR3hQFSyYzmyvBYUCpie/5A5eo7qAYXwmAgAABIgA=
Date: Thu, 14 Jul 2016 21:27:36 +0000
Message-ID: <9DD65BAF-CD30-48C7-8BE6-4D740A14AD0C@nccgroup.trust>
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
	boundary="Apple-Mail=_287544FE-F348-4C96-B890-A39FF4024915";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
Subject: [oss-security] Re: Multiple Bugs in OpenBSD Kernel 

--Apple-Mail=_287544FE-F348-4C96-B890-A39FF4024915
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

For those still unable to view the files, they appear to be viewable on htt=
p://seclists.org/oss-sec/2016/q3/68

--Apple-Mail=_287544FE-F348-4C96-B890-A39FF4024915
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXiAPKAAoJEPhkPVYKhDWbnIUH+wfUxFWsliKAyiqBbiudqmID
DKfvJLqnwYLlGfHR1+hakNbilFfjy936gi2eIABwChMZ3YzUFE0sHa8aWxlI/jaW
mJNVIfUogRIbdqXri97cJ3ZuWJVse6zCMUbot4h/C2PxztAXAF4Ija4g1GKefYMY
jPE036YvIzQWYXBv/tg03TAzEJ9bwdAZstMJqzU4qY845dUBlfSQEKbOwjMd+Jv6
cKa2OUUsIxkko61jAMJYqeRK8FdNQSi1ZDcJAqRe+qUPqYyAjvWN6DB8A3kfBJlo
AjD2G5vCsZGpPWDf3kEvZZLUcjPVWaHBaQSTcyKLwSU4oVEpvY8TT8eOXzFrqdI=
=KdRz
-----END PGP SIGNATURE-----

--Apple-Mail=_287544FE-F348-4C96-B890-A39FF4024915--

