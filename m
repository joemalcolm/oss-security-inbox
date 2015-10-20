X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2047" "Tuesday" "20" "October" "2015" "00:27:44" "-0500" "Brad Knowles" "brad@shub-internet.org" "<76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>" "57" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102005:27:44" "[oss-security] Prime example of a can of worms" (number mark "        brad@shub-in Oct 20   57/2047  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29907 invoked by uid 550); 20 Oct 2015 09:38:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19871 invoked from network); 20 Oct 2015 05:28:10 -0000
X-ASG-Debug-ID: 1445318876-061c414fdffead0001-Ebmqpw
X-Barracuda-Envelope-From: brad@shub-internet.org
X-Barracuda-RBL-Trusted-Forwarder: 216.194.196.20
X-Barracuda-RBL-Trusted-Forwarder: 216.194.248.141
X-Virus-Scanned: amavisd-new at mail-sterling.his.com
Content-Type: multipart/signed; boundary="Apple-Mail=_9725292B-4940-4C51-8966-3D1694D80D54"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Barracuda-RBL-IP: 172.16.1.6
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.2
X-ASG-Orig-Subj: Re: [oss-security] Prime example of a can of worms
In-Reply-To: <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
X-Mao-Original-Outgoing-Id: 467011663.968165-3a68d810b6922112787cf028356de7f0
Message-Id: <76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
X-Mailer: Apple Mail (2.2104)
X-Barracuda-Connect: smtp-nf-202.his.com[216.194.196.20]
X-Barracuda-Start-Time: 1445318876
X-Barracuda-URL: https://spam.his.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at his.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.01
X-Barracuda-Spam-Status: No, SCORE=0.01 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC2_SA022a
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.23649
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
	0.01 BSF_SC2_SA022a         Custom Rule SA022a
Cc: Brad Knowles <brad@shub-internet.org>,
 Seth Arnold <seth.arnold@canonical.com>
Date: Tue, 20 Oct 2015 00:27:44 -0500
From: Brad Knowles <brad@shub-internet.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--Apple-Mail=_9725292B-4940-4C51-8966-3D1694D80D54
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On Oct 19, 2015, at 11:16 PM, Kurt Seifried <kseifried@redhat.com> wrote:

> #!/bin/bash
> for i in `seq 1 100`;
> do
>    openssl dhparam 2048 -text >> $i
> done
>=20
> will generate 100 2048 bit primes. If you can ideally simply commit the
> files to the following github repo:
>=20
> https://github.com/RedHatProductSecurity/Diffie-Hellman-Primes/

PR filed to update code to generate 4096-bit primes as well.

I=E2=80=99m wondering if we might be able to take advantage of a larger-sca=
le effort in this area, by using something akin to the @Home methods, but m=
aybe generating large numbers of primes using a custom public AMI and some =
CloudFormation scripts?

--
Brad Knowles <brad@shub-internet.org>
LinkedIn Profile: <http://tinyurl.com/y8kpxu>


--Apple-Mail=_9725292B-4940-4C51-8966-3D1694D80D54
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.28

iQIcBAEBCAAGBQJWJdDQAAoJEKOyg2+mWTCTO8AP/RuzUxUH133pqp8/vFfjDHWr
CjcRSeS31tBC91wnRZoeIMkDABQusxv+70YO5+3+W3OqTePhABh2Cu5buey+k6zQ
IOoRsRyil4/d8EYn+BBUAqrCNwvB4SnlFBPedMaozUpkQCF/6Z1PxwUJGxxoh0ir
+ybqrwLVq5ktBglJ7Po3Swho2vkMC+/UNnjTBP5qM9jBobSbXxdw+z2/43LjaFbR
TsmVd8sx1tP5MsupBv5DPc638nz5uriRrkNlVbD7Cd9vAxXNmdrSYo/bMTm23iLL
nKDfgUfc9gaIgxNiNqP0EVK8ZqboYUmXZcUf0pSUylM/kk/9eW8z4wtTEJYqsPGG
DM7a80dqpfPag538qmGNHxXr2NC1XChopYCII5LiLjScd7qvOXoN5NMFL44cweEe
EwF69RNeqScri8UN+/NSXlAvqURjoTdMTxxrk20CXBoTV7I97GsOPorR4UUyr6xq
Ie+sTw+t2hgW869Qb74t+n696V4tYmdZimr0WGjlQzdc19AwkBZwqVzUXUH7p1yg
WiYY9Bjw/RZDBKGtv4sXOFI7D+8ptSTvcP4239I4fdyesei4WxtW25Wfe/44X6EM
1k3IAO4rP5SSNyntQedjQEyqIf2W5hjgemtOleNPIiAqPNp915Ssyu1Uqj0yDgCK
Ouobo6z5YktlGBP6TLDl
=Xx67
-----END PGP SIGNATURE-----

--Apple-Mail=_9725292B-4940-4C51-8966-3D1694D80D54--
