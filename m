X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1845" "Friday" "31" "July" "2015" "12:21:31" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150731172130.GA30077@boyd>" "51" "Re: [oss-security] RE: strings /libbfd crash" nil nil nil "7" "2015073117:21:31" "[oss-security] RE: strings /libbfd crash" (number mark "        tyhicks@cano Jul 31   51/1845  " thread-indent "\"Re: [oss-security] RE: strings /libbfd crash\"\n") "<5457C7B6.7050205@internot.info>" ("<5457C7B6.7050205@internot.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5587 invoked by uid 550); 31 Jul 2015 17:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5563 invoked from network); 31 Jul 2015 17:21:45 -0000
Message-ID: <20150731172130.GA30077@boyd>
References: <5457C7B6.7050205@internot.info>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <5457C7B6.7050205@internot.info>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@ubuntu.com
Date: Fri, 31 Jul 2015 12:21:31 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] RE: strings /libbfd crash
To: oss-security@lists.openwall.com

--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2014-11-04 05:21:42, Joshua Rogers wrote:
> I'd like to expand on this:
> http://openwall.com/lists/oss-security/2014/10/27/4
> and mention that 'ihex.c' is also vulnerable to the same thing, as they
> share the same code.
>=20
> > :10010000214601360121470136007EFE09D2190140
> > :100110002146017E17C0001FF5F16002148011928
> > :10012000194E79234623965778239EDA3F01B2CAA7
> > :100130003F0156702B5E712B722B732146013421C7
> > :00000001Ff
>=20
> is an example of code that will crash it.

This was never fixed upstream. I've opened a bug and attached a patch:

  https://sourceware.org/bugzilla/show_bug.cgi?id=3D18750

I think this deserves CVE assignment since the srec.c issue was assigned
CVE-2014-8504 and it is very similar in nature.

Tyler

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVu66aAAoJENaSAD2qAscKZucP/AjoUuh2auj+IHWJbyDaW/1Q
rx/e+Xty2QXpS2A4G377sBF6y2uuUU5F0e2hl1avOhi+V5jiKvxh/d3t8ZyfLx6/
6KK/3ZkbUzqMmWEa3boSIomMBugQjLXm8nE9FCBOIhrVKpqD7CEZfVecmJOOSkUR
yzrzOK3425gTqsTTMdhnQwfLpN7v5SzNPhlkhFrf0aF2MoFSctyHeAhpGnQrW5vy
qzAH6/43OU++xCg8qfTTIuZObDh9XndIc17L8BPUo6oBB8VAwhA700UPWH6Cpr0N
MlGAE23kuk+S6pRSrE4xEKHXT05/zqI8sh4+IYC+OuR5+arpGr7KJCzQ+azyd05N
yIGvqeobC5O8YkIScbO6xfP0H86An5XDOmpjrbuguDWy6YZdMzIWkxFtCIwCx11c
+D+YnrXqfLi2pGDmB+KLV/iT/MAKH9WZ/WXqw0yPFWUlbNSBrnVSBdQJBf7zrY+4
2SJOCpT+zoqbQ6lSgmArM2uWMeRLw3oBHfGsHaWF3fFv0tf7aY7UbB4yIgL07qxw
UVCA3qywjuPFQdgvYKV3NLNrf9aB0s70L1kbikhnFDa57OhzTfJEyKRJ77Iu0NBJ
gHOfOJ1k1iFpDz+1HAa+lSlrOP/jQsMABjY3Dym/rYnAAML5Hwj+9VouZf2Me0JL
oa3ZlC48/G3VHcgnEMA8
=MbKH
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
