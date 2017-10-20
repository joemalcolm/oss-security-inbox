X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2440" "Friday" "20" "October" "2017" "15:37:58" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20171020223757.GA28323@hunt>" "61" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102022:37:58" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        seth.arnold@ Oct 20   61/2440  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17814 invoked by uid 550); 20 Oct 2017 22:38:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17796 invoked from network); 20 Oct 2017 22:38:11 -0000
Message-ID: <20171020223757.GA28323@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
 <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt>
 <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 20 Oct 2017 15:37:58 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 19, 2017 at 08:32:55PM +0000, Robert Watson wrote:
> Scripts depend on the underlying functionality of the various utilities
> like rsync that they call. I'm having trouble understanding how a script
> could ever be deserving of a CVE. Maybe I'm wrong. I wish to be educated.

I'm not sure what 'script' vs 'not-script' has to do with anything.
'Script' really just means "interpreted programming language" and says
nothing about the threat model in use.

This ftpsync script and similar scripts are the primary tool for mirroring
Debian, Ubuntu, and other derived Linux distributions, to the mirror
networks that support many millions of computers.

Probably other programs use rsync without --safe-links when they should.
I didn't know the option existed until this thread was started (seriously,
rsync(1) is a HUGE manpage) so I'm grateful to the original reporter
for sending it along.

> We are overwhelmed with more vulnerabilities than can be fixed quickly
> already.

Yes.

> Are "just to be safer" type things really a wise use of our resources?

Yes. I think we all wish to see software that's less likely to fail.

> Does a proliferation of a large number of low-caliber problems make
> monitoring these lists more trouble than it's worth? Does it cause
> high-impact problems to be lost amongst low-impact ones?

It's up to you how you prioritize your time. For this issue, I updated my
own personal mirroring script and a co-worker updated our wiki page:
https://wiki.ubuntu.com/Mirrors/Scripts
These steps took a few minutes and are unlikely to cause problems so it
was an easy choice. Filing for a CVE for a wiki page feels like a waste of
time so I'm not going to bother. The page is fixed and users can adopt the
change if they wish.

Thanks

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZ6nrFAAoJEPMhclmdjS6XB30H/00tqyB9MkxBhQ5YvltxQraE
6FPKdsbc2cd4QvgIYM5l3DY8ENLX6dAtopieuAKTUA13sKYbKeps1XMahoDIHQiM
CBtEzYooupZoo7DvZfUBGIIfLaBv0X50P8JmoFaMQDTlU684cG0aoHmOjVQVLauk
0F2KVgR0oOWVErMYVgndCND1vqe7B7ANN97YFRDiF0wBKszZ8OBesjqUmLZwBL1Q
HZEL2Wu8nqI74Bay+Bh9/QLxbJ/cTbcjzgcLm02iIeHbotQHnAfB0zxdRrLFrMoL
ICaDIO2UktU6dTNxw4m2EoDUB3qyOhZyfXQrFaQ9JGXMqEu6GNH/O0enbOUaG6c=
=JHgu
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
