X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2794" "Monday" "19" "October" "2015" "15:06:28" "-0500" "Brad Knowles" "brad@shub-internet.org" "<ECA0E8CA-EDCB-4814-8A41-F74C4CC9ECF8@shub-internet.org>" "68" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101920:06:28" "[oss-security] Prime example of a can of worms" (number mark "        brad@shub-in Oct 19   68/2794  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26027 invoked by uid 550); 19 Oct 2015 20:25:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15457 invoked from network); 19 Oct 2015 20:06:54 -0000
X-ASG-Debug-ID: 1445285201-061c414fe084070001-Ebmqpw
X-Barracuda-Envelope-From: brad@shub-internet.org
X-Barracuda-RBL-Trusted-Forwarder: 216.194.196.20
X-Barracuda-RBL-Trusted-Forwarder: 216.194.248.141
X-Virus-Scanned: amavisd-new at mail-sterling.his.com
Content-Type: multipart/signed; boundary="Apple-Mail=_828AA61A-1C94-48AA-8915-A54C46252430"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Barracuda-RBL-IP: 172.20.10.2
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.2
X-ASG-Orig-Subj: Re: [oss-security] Prime example of a can of worms
In-Reply-To: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
X-Mao-Original-Outgoing-Id: 466977988.247604-edbe59ba0b054e299f8bb45d0960b7c1
Message-Id: <ECA0E8CA-EDCB-4814-8A41-F74C4CC9ECF8@shub-internet.org>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
X-Mailer: Apple Mail (2.2104)
X-Barracuda-Connect: smtp-nf-202.his.com[216.194.196.20]
X-Barracuda-Start-Time: 1445285201
X-Barracuda-URL: https://spam.his.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at his.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.01
X-Barracuda-Spam-Status: No, SCORE=0.01 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC2_SA022a
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.23632
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
	0.01 BSF_SC2_SA022a         Custom Rule SA022a
Cc: Brad Knowles <brad@shub-internet.org>,
 CVE ID Requests <cve-assign@mitre.org>
Date: Mon, 19 Oct 2015 15:06:28 -0500
From: Brad Knowles <brad@shub-internet.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--Apple-Mail=_828AA61A-1C94-48AA-8915-A54C46252430
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On Oct 18, 2015, at 11:06 PM, Kurt Seifried <kseifried@redhat.com> wrote:

> A small
> number of fixed or standardized groups are used by millions
> of servers; performing precomputation for a single 1024-bit
> group would allow passive eavesdropping on 18% of popular
> HTTPS sites, and a second group would allow decryption
> of traffic to 66% of IPsec VPNs and 26% of SSH servers.

I think this may be a bit of a slippery slope here.

How many machines would have to be vulnerable for a given group to be consi=
dered big enough to be =E2=80=9Cweak=E2=80=9D and therefore worth of having=
 a CVE issued?  Would that number be 1%?  5%?  10%?

At what point is it more dangerous to generate your own DH groups on system=
s that do not have sufficient uptime, versus re-using an existing DH group =
that might be considered =E2=80=9Cweak=E2=80=9D?


There was a time when 1024-bit DH groups were considered sufficiently safe,=
 and 2048-bit was overkill.  At what point does 2048-bit become =E2=80=9Cwe=
ak=E2=80=9D in the same way that 1024-bit is today?  How many years in adva=
nce are we going to build into the system, so that we can have people =E2=
=80=9Csafely=E2=80=9D transitioned off 2048-bit DH groups and onto whatever=
 the next new thing is?

I mean, NIST is having a hard enough time getting people to stop using MD-5=
, much less SHA-1.  And if SHA-1 falls this year, how long before SHA-2 fal=
ls?

--
Brad Knowles <brad@shub-internet.org>
LinkedIn Profile: <http://tinyurl.com/y8kpxu>


--Apple-Mail=_828AA61A-1C94-48AA-8915-A54C46252430
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.28

iQIcBAEBCAAGBQJWJU1EAAoJEKOyg2+mWTCTWRsQAKaOS+XJlOCAaW2kzSAb5Xoo
OT3yr2ui1K+VHzklNMMmg8nudKySrB9nLs1Go+XdnwNSbxs+moMSmMz56vIlRS9v
7fCJHCJZjwPTOJin0NikiqK2v9f6KQPFfHCugolTTGylQoSn4zmE5PqEDWZKAgN9
ObYUoaHEGW2OlYrtrzj1NYKWAy6JG1dsH2dQeaKGeIRUVotIi7B2vw4m1h9q1PO8
uj/yb6T9qYIXE7ELvp2W9fP9PWxn6hTc8I78ZXD0slc8rGmHQ1nTh0kTbfQm9euc
GLM712C6+cB/esOCx3tuiiutHmK+5N3jzK7UwxCyOYqF1cK6MRNR5vuflJ66GQ4t
9flZn3IMw9K1VWspzfAnm/XeNnW3/ej404LMxjhxMxKfbKJdOFb2qxCibXBljVnY
WsQN3Xa9p5VFAlFxDSNdY/UJvms1V+DXIF9MAV9ichm0ohY0IQNMvH7IR4PLobtw
L0BZwjg32yAii22iNk2JhhRo+/5aZHtEmLz1daPUZaasvMW8wF8WKRSAL3BaMs5v
fEr5AyZvkCQiCPM9aILaGX8+y6gHJiMd305rgQNXegAdL3wdPr0U7aTNJKpR/IR3
OjctmiQWdu7yDvbe+mtRVyWu5NPnEc9XtKRUANfWGX9pLkThBahINMC3pqGd45mc
3gVJtm7mr5YOwLvnRDK3
=0M7s
-----END PGP SIGNATURE-----

--Apple-Mail=_828AA61A-1C94-48AA-8915-A54C46252430--
