X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3277" "Thursday" "7" "July" "2016" "16:27:08" "+0000" "Seaman, Chad" "cseaman@akamai.com" "<026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>" "86" "Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "7" "2016070716:27:08" "[oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       cseaman@akam Jul  7   86/3277  " thread-indent "\"Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30092 invoked by uid 550); 7 Jul 2016 16:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30065 invoked from network); 7 Jul 2016 16:27:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com; s=a1;
	t=1467908829; bh=yu/HjTWieBTidyRD6LeaCSSDho4ZsPb9SRUcQFkdYz0=;
	l=3369; h=From:To:CC:Date:References:In-Reply-To:From;
	b=yi4fhdeAoYogKXqY+aaH51K6ZwknruoQ40FxV91+IGtCOpT4wq7mthbh1TbsTadhi
	 tzA4K5G22VAHKmDRceY9nTQmjavaQv9DNYwCbYA53/R8U6KYGZoT2BDPSfBhPunm3V
	 26CMZ7v/nxtnhcq0wzrEg+8NbDP2IcNX/AVKztVs=
From: "Seaman, Chad" <cseaman@akamai.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "huzaifas@redhat.com" <huzaifas@redhat.com>, "cve-assign@mitre.org"
	<cve-assign@mitre.org>
Thread-Topic: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS
 amplification attack
Thread-Index: AQHR2GxoVF6G0srNb0Wm0Wr8HaAocg==
Date: Thu, 7 Jul 2016 16:27:08 +0000
Message-ID: <026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
 <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
In-Reply-To: <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-pgp-agent: GPGMail 2.6b2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.132.69]
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1AC08BF9-92AF-492D-A902-FE315099276C";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
Subject: Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS
 amplification attack

--Apple-Mail=_1AC08BF9-92AF-492D-A902-FE315099276C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi All,

I=92m Chad Seaman @ Akamai, the researcher who found, researched, and wrote=
 the paper on the IKEv1 and IKEv2 flaws that could lead to amplification at=
tacks.

The opening e-mail states that IKEv2 is not believed to be affected, I can =
confirm that in some cases some implementations are indeed affected.

There was some doubts about IKEv2 being affected and I was contacted by a C=
isco engineer as well as one of the RFC authors, we constructed multiple IK=
Ev2 probe payloads and did a series of secondary scans that specifically ta=
rgeted IKEv2 hosts to confirm these results.

Where hosts should respond once based on IKEv2 RFC specs, hundreds of thous=
ands reply multiple times, roughly 110,000 reply 21 times or more per singl=
e probe, some of the worst offenders responded thousands of times.

Regards,
Chad


> On Jun 14, 2016, at 10:34 AM, Paul Wouters <pwouters@redhat.com> wrote:
>=20
> On 06/13/2016 10:40 AM, cve-assign@mitre.org wrote:
>>> Its not libreswan which is flawed, but its the protocol which they are =
trying to implement.
>>=20
>>> which implement IKEv1 are flawed, since they follow this protocol
>>=20
>> Many protocols could be described as "flawed." The IKEv1 protocol amplif=
ication concern does not make it flawed in a way that would lead to a per-p=
rotocol
>> CVE ID assignment.
>=20
> Then you should pull the CVE-2016-5361 which deals with retransmission am=
plification in IKEv1
>=20
> We are maintaining the
>> CVE-2016-5361 ID assignment for the upstream announcement of "libreswan =
3.16 vulnerable to DDOS attack. Please upgrade to 3.17"
>=20
> That statement on the libreswan website is clearly referring to CVE-2016-=
3071 not CVE-2016-5361.
>=20
> and
>> accompanying upstream patch, as described in the http://www.openwall.com=
/lists/oss-security/2016/06/10/4 post.
>=20
> Which again clearly refers to CVE-2016-5361 and not CVE-2016-3071
>=20
> So again, please fix CVE-2016-5361 or drop it.
>=20
> Paul


--Apple-Mail=_1AC08BF9-92AF-492D-A902-FE315099276C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXfoLcAAoJEC57VEfLhVK+v1oP/3rIw3i9t5YNGNuLt+sLSqmw
1BgNi3Y4FZduq2nAao33FrPbtAsBqQlSoqd4pZs3SF4rzhdI/nWcg7qCzI6xhqOo
KnMPCGsImtSuSEKdQPXEDGWecPNCyLmF3Q11zPXfQkxV7XpzSoKn37LFqtHiUs6D
SwB7fp3tKouCMBmND26cQPD2Mmhvh3xx6WLcpa2y6PJ1FFgH/SindaGoHw7olJ16
V62ZqnWk/rU+uWui9NwtJKZMtx2Mq82aDDoQDfDafLUAUD6tblf9Te0dsdGZ4Bb9
uR/yBk+l/tYT4arM4mxzoIRB4QzOBOtwB1vUaBrtCpFngH8dwxNiRF3nBU84hSb5
wFIV6GWyI5BEzbHvU2WZEsP9wUmMYa7SUShUt6zwQvvVW/NzREZidHWVbwLge0iE
+cP8jdpho0e7kt6/1b+cUKUXkpydS1Rn39b4nu5W6Q/5a8fTRZ1UpN3W8BtKO2xJ
kEiYWQCrgzLMqvSk4KS9WIME+WAP5rc7SvJtlYIpIIPK5iWCOfGtByW7pwtlx8Wb
33r4Q11KhXoPb+DxAP4ng0w15u0DUkNUwnaOEujyswy45a6+JTNV8ftLOjw/ad1s
on5QIiUpm3gPmeei8ZU9DAl3QRWiG/SNGRGtGUwIsO/VuR+/+3LT5GcrCnEq3X7X
30nxSTC7gSYSeVotHMqI
=65j+
-----END PGP SIGNATURE-----

--Apple-Mail=_1AC08BF9-92AF-492D-A902-FE315099276C--
