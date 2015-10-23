X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2454" "Friday" "23" "October" "2015" "17:30:23" "-0500" "Brad Knowles" "brad@shub-internet.org" "<3AE0D41C-293B-4118-A3D6-78BF130850E5@shub-internet.org>" "63" "Re: [oss-security] Duplicate CVE: CVE-2015-7703 in NTP" nil nil nil "10" "2015102322:30:23" "[oss-security] Duplicate CVE: CVE-2015-7703 in NTP" (number mark "        brad@shub-in Oct 23   63/2454  " thread-indent "\"Re: [oss-security] Duplicate CVE: CVE-2015-7703 in NTP\"\n") "<562AAC40.4000002@redhat.com>" ("<874mhidqhp.fsf@redhat.com>" "<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>" "<CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>" "<562AAC40.4000002@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11398 invoked by uid 550); 23 Oct 2015 22:35:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7943 invoked from network); 23 Oct 2015 22:30:41 -0000
X-ASG-Debug-ID: 1445639428-061c41417edbe00001-Ebmqpw
X-Barracuda-Envelope-From: brad@shub-internet.org
X-Barracuda-RBL-Trusted-Forwarder: 216.194.196.20
X-Barracuda-RBL-Trusted-Forwarder: 216.194.248.141
X-Virus-Scanned: amavisd-new at mail-sterling.his.com
Content-Type: multipart/signed; boundary="Apple-Mail=_7E816F51-D779-4BEB-90E0-C298E5681D6B"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Barracuda-RBL-IP: 172.16.1.6
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.2
X-ASG-Orig-Subj: Re: [oss-security] Duplicate CVE: CVE-2015-7703 in NTP
In-Reply-To: <562AAC40.4000002@redhat.com>
X-Mao-Original-Outgoing-Id: 467332222.96658-71270d8e746896629cd90d4e086d1fb3
Message-Id: <3AE0D41C-293B-4118-A3D6-78BF130850E5@shub-internet.org>
References: <874mhidqhp.fsf@redhat.com> <20151023160608.06B6D52E093@smtpvbsrv1.mitre.org> <CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com> <562AAC40.4000002@redhat.com>
X-Mailer: Apple Mail (2.2104)
X-Barracuda-Connect: smtp-nf-202.his.com[216.194.196.20]
X-Barracuda-Start-Time: 1445639428
X-Barracuda-URL: https://spam.his.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at his.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.01
X-Barracuda-Spam-Status: No, SCORE=0.01 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC2_SA022a
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.23761
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
	0.01 BSF_SC2_SA022a         Custom Rule SA022a
Cc: Brad Knowles <brad@shub-internet.org>
Date: Fri, 23 Oct 2015 17:30:23 -0500
From: Brad Knowles <brad@shub-internet.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Duplicate CVE: CVE-2015-7703 in NTP
To: oss-security@lists.openwall.com

--Apple-Mail=_7E816F51-D779-4BEB-90E0-C298E5681D6B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On Oct 23, 2015, at 4:53 PM, Florian Weimer <fweimer@redhat.com> wrote:

> This is not the case.  <security@ntp.org> was notified on 2015-08-20.
> As the flaws were of low impact and there was no reaction, we disclosed
> the issues here:
>=20
>  <http://openwall.com/lists/oss-security/2015/08/25/3>

And I followed that up by taking your post from this list and forwarding th=
at to security@ntp.org on Tue Aug 25 15:42:13 UTC 2015.

If anyone has any security issues with NTP and you would like to discuss th=
ings with us privately, our current daily-use operational key is:

sec   3072R/0066B2FD 2015-08-12 [expires: 2017-08-11]
      Key fingerprint =3D 0E21 6278 E81F 12C9 DD2A  AEF5 AE63 639D 0066 B2FD
uid                  NTP.org Security Team (2015 Daily Use Operational Key)=
 <security@ntp.org>
ssb   3072R/C17304B1 2015-08-12

> I don't know what else we can do to avoid duplicates.

Good question.  Sometimes, you only discover after-the-fact that your XXX i=
s someone else=E2=80=99s YYY, and so you have to be prepared to deal with t=
he occasional collision.

--
Brad Knowles <brad@shub-internet.org>
LinkedIn Profile: <http://tinyurl.com/y8kpxu>


--Apple-Mail=_7E816F51-D779-4BEB-90E0-C298E5681D6B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.28

iQIcBAEBCAAGBQJWKrT/AAoJEKOyg2+mWTCTGIkP/0o2By5taYCPajHKzMRPeFZ/
DDauS0PnzcmsR1neRihVP2o2i7CGlza4CEqIZNgg9LWLfxHxXJDvlMSapNnJHyFZ
5TQf2OlduVbTcoJDwMV4I8l3pHtCAdpy4eiTmzCqdYp4eMhc5mxk1bWrNdqM8YpJ
Z4jtt0WyCZoiH7DBNGPkKGqNFcVsidTqs5ceZ9SzhzNC7Pg58sHDAKKslRc1xkI+
OSErx784NVWy2hgPsmkJHSmY2okriqHO5FOQyl/eLyQIVPHjWM7do46DtvPnw7B5
5PZEwfGyGq+z+60o1Cg22Z7MDFYSGQG2Cgek4o2DCQKRFx3RwCjfYp+J/9k0SSQK
P7FyKLky+AVSh1LTbEmrYGglKwVuxY+zz8xZX2C3pLUTgBqJtW9Q7i3pwwucRa42
fgDjR9TA3kDZ7nrdvznVmVbeEd+N78NiByaWaIh/olD9sqXoUg8k6kT1mvGKRZPH
P+r07M3wngzS6pM5M9ckKF0Izi6ESH0hW9be74YL19ncjo/YiiCcnIEfWJuwtGGB
lWI/b73zIRcug0NJSWXM/nyMvj2Mzns7LL74X4cCVct/sYl1Oq+WU09dTD7/IyjY
9a70JAA2LUYvMHWGuToC7j6c67mENWcImJuTmDAt4D4LRmmldwO064us2AxekirR
1TweJ0W8gwEYWsK/c/G+
=l9CU
-----END PGP SIGNATURE-----

--Apple-Mail=_7E816F51-D779-4BEB-90E0-C298E5681D6B--
