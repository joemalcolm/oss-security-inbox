X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1850" "Monday" "21" "September" "2015" "19:09:14" "+0200" "Christian Hoffmann" "christian@hoffie.info" "<560039BA.50907@hoffie.info>" "50" "Re: [oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation" nil nil nil "9" "2015092117:09:14" "[oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation" (number mark "        christian@ho Sep 21   50/1850  " thread-indent "\"Re: [oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation\"\n") "<56002AE1.1030908@hoffie.info>" ("<874miorksk.fsf@redhat.com>" "<56002AE1.1030908@hoffie.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16181 invoked by uid 550); 21 Sep 2015 17:10:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16156 invoked from network); 21 Sep 2015 17:10:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hoffie.info;
	s=sarchoo; t=1442855392;
	bh=YgpCEMhJngdOUWJctDfaDbZHBaOGbbKG8Xv7pTSPJxs=;
	h=Subject:Reply-To:References:To:From:Date:In-Reply-To;
	b=tYslvZ1ijZoxq2V589fA3963wLGdwtObu16JiVtXzqxQnImE3fsjzYuL5qSCXdjiS
	 YCxnYn78iNRl5CEBNJQtp9f0xIm61B/5CuFT0jOUZ/8XqsiVJQCV8RoeBCUAmtWLhp
	 dZMts8rG9PfpBG1Cn3XMOcoxt+oDDwEeQP42BrN8=
References: <874miorksk.fsf@redhat.com> <56002AE1.1030908@hoffie.info>
Openpgp: id=D8A734AC7557E8C1764238362C1F41CF361CB280
Message-ID: <560039BA.50907@hoffie.info>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <56002AE1.1030908@hoffie.info>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="cHQmbiWsfv6n2JhbRwqJ0P2vbgXWiwhJA"
Date: Mon, 21 Sep 2015 19:09:14 +0200
From: Christian Hoffmann <christian@hoffie.info>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: zarafa-autorespond suffers from a
 potential local privilege escalation
To: oss-security@lists.openwall.com

--cHQmbiWsfv6n2JhbRwqJ0P2vbgXWiwhJA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 09/21/2015 06:05 PM, Christian Hoffmann wrote:
> So, for now, I don't think a new CVE should be assigned. Either Zarafa
> or me will send an update shortly.

Zarafa was quick and has updated the ChangeLog accordingly:
https://download.zarafa.com/community/beta/7.2/changelog-7.2.txt

As expected, this issue has been assigned CVE-2015-6566.

=46rom what I can see, no new CVE needs to be assigned here.

> On 09/21/2015 02:58 PM, Martin Prpic wrote:
>> https://bugzilla.redhat.com/show_bug.cgi?id=3D1263006
>>
>> The issue is noted as "zarafa-autorespond suffers from a potential local
>> privilege escalation" in the zarafa changelog:

Kind regards,

Christian


--cHQmbiWsfv6n2JhbRwqJ0P2vbgXWiwhJA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWADm6AAoJECwfQc82HLKAp38QAMG1Q/tscdMbF8vFR4791nLK
f/BhU+a/SDEyyWiM6qHKrB74NfWe3k4t+J++byrT50My+jkvJew4VcBzIg1/PENV
hyFWmwPl0lukbkV1+BDBDiIiqJ7bDSXd07XCdedhTbLWC5tgcGgmFVrTFNspqtes
0VUDhbflp0s6q7MneqPsdJzDo2AbtshF+vI9JeoZ50s8O5H3z/tYYqTJ0deAeHnQ
amR4zj7Wrc9fhgJhtRukNB2DY+Kw6CC8xfa1IObYLNWBD9zjNX1ezkoDqA8RyoRC
w74ErL4QGkU6UpLkAqQ052NlwPe0QJwmraLKoiXZZsHeNLPhSMB3yUvWJDlnSBBr
KFzIUnbxjMa+KOBJbsMpTTtsrKD6z1Fw+/2UkXafk0n9Cr9Vvn2cv5BldJHUmcLu
bwl3t2/56FesMNFRb5PxMJweWv1bnGitivc3e62lL5ykOXPNUsA70PntHdXFgWsT
Eo/OfTqpASIoh0Jh6Y9UhSQ+v+cMHZaueIgrKkVNSGSHiN+gGQDFb+LGKc8n24bH
JWzEWFoS+t0mBzwPZMO5Wy1tyslGVK8oJVbX1U1Z4WsQWZNmS/V/cEC0As1n28y5
ELnDOBsf2IYu1uUPfuBNg53mSdJPiMce2rvXH2Zv9eM3bZni+UBRDWU+Q//LrydK
H1+YgU8pUjFGX+8DxsRI
=0pmm
-----END PGP SIGNATURE-----

--cHQmbiWsfv6n2JhbRwqJ0P2vbgXWiwhJA--
