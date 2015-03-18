X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3776" "Wednesday" "18" "March" "2015" "09:40:53" "+0100" "Christian Rebischke" "chris.rebischke@gmail.com" "<20150318084053.GA2859@trudy>" "106" "Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases" nil nil nil "3" "2015031808:40:53" "[oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases" (number mark "        chris.rebisc Mar 18  106/3776  " thread-indent "\"Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases\"\n") "<20150318081747.GA18610@openwall.com>" ("<20150317000005.GA3041@openwall.com>" "<20150318081747.GA18610@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23717 invoked by uid 550); 18 Mar 2015 09:55:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11986 invoked from network); 18 Mar 2015 08:41:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:date:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dTSqdmxw2bXDilg7ZWD8TB4nZ+JWXULnaZjrozCZl3E=;
        b=RF4LvaFExAnoEPR4iezJDBu6h1I/aAkOMNvjYHYYSQM9HP5qyKROck6JBxInZcZun2
         ihDueSL30ANmPdNieSQM9t+VzJDu1aXC4zKm1N2o+gO06HpIKFNicNDn9aahR2JZ6oml
         NqPFS30ZojF034fr8lTgMXrHaEUdvr4kWFUJg1mUWSiNrjdiOdRTUypvtrEkD7q5vmvw
         F1+l+o8dZUEvvYvt/4pYqFRFusTZfKBAmrUMsQ8kkBg8wI8rYv0zbPpqHLHCbITxls6r
         I7SQ46Jn426R6xfdfHbCP2B5LbkyGtsnMftt3hlT+nEPVVF7RsF/ZoTUBdQE1G6fCRAS
         AIJg==
X-Received: by 10.180.8.10 with SMTP id n10mr4591560wia.79.1426668058049;
        Wed, 18 Mar 2015 01:40:58 -0700 (PDT)
X-Google-Original-From: Christian Rebischke <Chris.Rebischke@gmail.com>
Message-ID: <20150318084053.GA2859@trudy>
References: <20150317000005.GA3041@openwall.com>
 <20150318081747.GA18610@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <20150318081747.GA18610@openwall.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Wed, 18 Mar 2015 09:40:53 +0100
From: Christian Rebischke <chris.rebischke@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL
 releases
To: oss-security@lists.openwall.com

--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,
I should mention that I forgot to include one CVE in my tweet: CVE-2015-029=
1.
I am not sure if this CVE has high severity or is low, but should be accord=
ing
to openssl bug guideline 'high'. Seems so that this CVE is a Dos vulnerabil=
ity:

https://twitter.com/ramosbugs/status/577935589397278720

@Sh1bumi @ArneBab @hynek I have working exploit for upcoming CVE-2015-0291 =
1.0.2
server DoS. As far as I know not active in wild.

@ramosbugs alias <David Ramos> is the bug reporter of CVE-2015-0291.

So, as far I know, there are 4 openssl CVEs:

CVE-2015-0209, CVE-2015-0285, CVE-2015-0288 and CVE-2015-0291

Are these all CVEs or are there any other currently reserved high rated CVE=
s?

best regards,

--------------------------------------------------------------
Christian Rebischke

Website    : www.nullday.de
Twitter    : @sh1bumi
Jabber     : shibumi@jabber.ccc.de
PGP        : 0x8D8172C8
Fingerprint: A224 6F57 FD0A AC81 3971 EEBE 5EDA 916B 3A2A 7C49
--------------------------------------------------------------

On Wed, Mar 18, 2015 at 11:17:47AM +0300, Solar Designer wrote:
> Mark -
>=20
> It was suggested to me off-list that it'd be helpful to publicly specify
> not only the date, but also the time (and timezone) of the forthcoming
> OpenSSL releases.  Can you?
>=20
> All -
>=20
> On Tue, Mar 17, 2015 at 03:00:05AM +0300, Solar Designer wrote:
> > I think the limited public info on this should be in here ASAP, hence
> > the forward.
>=20
> References to commits for CVE-2015-0209, CVE-2015-0285, CVE-2015-0288:
>=20
> https://twitter.com/Sh1bumi/status/577904223444168704
>=20
> Mark's reply:
>=20
> <@iamamoose> @Sh1bumi those are all "low severity" classification, previo=
usly committed issues, which will be included in roll up on Thursday too.
>=20
> <@iamamoose> @Sp1l As per the security policy, low severity issues (and s=
ome moderates) get fixed in public as and when -- those issues are known pu=
blic
> <@iamamoose> @Sp1l CVE-2015-0285 is https://git.openssl.org/gitweb/?p=3Do=
penssl.git;a=3Dcommit;h=3De1b568dd2462f7cacf98f3d117936c34e2849a6b CVE-2015=
-0288 https://git.openssl.org/gitweb/?p=3Dopenssl.git;a=3Dcommit;h=3D28a00b=
cd8e318da18031b2ac8778c64147cd54f9
>=20
> On vendor notifications so far:
>=20
> <iamamoose> Per https://www.openssl.org/about/secpolicy.html we've provid=
ed details of the #openssl vulns to distros@ vendors on request, also now t=
o LibreSSL.
> <@iamamoose> @iamamoose we've also provided details today to Apple and IB=
M who are not currently distros@ members #openssl
>=20
> BTW, OpenSSL Security Policy at
> https://www.openssl.org/about/secpolicy.html specifies what kind of
> issues the three severity classifications may correspond to.
>=20
> Alexander

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVCToUAAoJEF7akWs6KnxJJgcQAI4eRItmvbVLh4GJtuMhcFkZ
UOcOS/IGz1OiGm08tyA0FqQvnQ0voSdRzDDyAYjOy+QTDwMvdKGaVR0ifUMWCHl8
RnKCrwUZg0sbSFnq7ON4kII0VZ4de3CxmNFtLgXT0In8mDjy3KV56WD+yiO1H5dt
Bia8xkZKwC1zf0/r1nhC0Dv+8XP/VHPEsRCG0fsBJqU34WShulH0PN3TeqnbdA1k
ox9j0cgdH6U7ffpbKXY4rWEgegdV0vvahuHkKpH6P4sxXKvBiX7Xwom5TCncc216
8ukxmqX6I2cku0npkYfEVEIdcuZM0/t/uxxlEBGGnaDHqFRrlER8GFU6q1Zqel3+
GjzWHJwy8/nYAckV+JdLVpITyr+d8KxnoLQA7oDPqLnxLOYssUSHGZKkrSP57ZUk
LlgscEsqImefRuSb9nksEkB1uiRXCAPQE4+oAC4QIcCFQ+HQKFon9tbd1G+B7CK8
yMFpt4F1cWV+sxLYdBxWSxFL72wTPjygsud8nk/a1w/EwXbq1DNf2ozuXm4qmcHy
HhTtIv9Sw1pHqhn3/lsmz3F+zZFywkeXyoPxituZWgJ45oCSt/X5nGHmHXlzQ7Ge
1sTIkWWi0WErZml8lRsQofmCaN6j6RRfNe6IDrJPuYl4DbinfzLh0KveqSxFCP2N
GQG6bYcFVSoSRkYdfQk5
=5qgZ
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
