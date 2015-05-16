X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3033" "Saturday" "16" "May" "2015" "22:21:23" "+0000" "mancha" "mancha1@zoho.com" "<20150516222123.GB14372@zoho.com>" "85" "Re: [oss-security] about this openssh heap overflow" nil nil nil "5" "2015051622:21:23" "[oss-security] about this openssh heap overflow" (number mark "        mancha1@zoho May 16   85/3033  " thread-indent "\"Re: [oss-security] about this openssh heap overflow\"\n") "<20150516234714.1aff6d98@pc1>" ("<20150516125812.22c2523d@pc1>" "<20150516211007.GA14372@zoho.com>" "<20150516234714.1aff6d98@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13856 invoked by uid 550); 16 May 2015 22:21:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13835 invoked from network); 16 May 2015 22:21:48 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=Sl65kbafvwK2rj16CkEBAKso+ze3M94+7lAsKDl60Gml4wdTdb8JMihSQDrfuQEjrAIbfqHwW6Ui
    PoYBdOUSDYmxNvtn6B2DqImnxLa977k+IZjM1ZWkDkL3oWTLGzTf  
Message-ID: <20150516222123.GB14372@zoho.com>
References: <20150516125812.22c2523d@pc1>
 <20150516211007.GA14372@zoho.com>
 <20150516234714.1aff6d98@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aM3YZ0Iwxop3KEKx"
Content-Disposition: inline
In-Reply-To: <20150516234714.1aff6d98@pc1>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Sat, 16 May 2015 22:21:23 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] about this openssh heap overflow
To: oss-security@lists.openwall.com

--aM3YZ0Iwxop3KEKx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 16, 2015 at 11:47:14PM +0200, Hanno B=C3=B6ck wrote:
> On Sat, 16 May 2015 21:10:07 +0000 mancha <mancha1@zoho.com> wrote:
>=20
> > So, we're dealing with an OOB *read* triggered by a crafted config.
> > By the way, if an attacker has write privileges to your config you
> > have bigger fish to fry.
>=20
> Uh no. Has nothing to do with the config (you may mix this up with
> another issue I recently reported to ssh regarding config parsing, but
> that's unrelated).
>=20
> It's an OOB triggered in the client by a specific banner string from
> the server.

My git repo was out of sync so 26e0bcf766fadb4 came up after:

$ git log -i --grep Hanno

After a git pull I see 77199d6ec8986d4 is the fix for the issue you're
talking about. I stand corrected.

> > Notices are already going up describing this as heap buffer overflow
> > with "high" risk. [1]
>=20
> That's of course bogus.

Not everyone will realize that.

>=20
> > Serves as a good reminder that context and phrasing are critically
> > important when publicly discussing bugs with possible security
> > impact in order to avoid tsunamis of the-sky-is-falling posts &
> > articles.
>=20
> One take away from this story for me - also after criticism I got on
> twitter: The term "heap overflow" seems to be prone for
> misunderstanding.  Some people consider every out of bounds thing an
> "overflow", some think that only oob writes should be considered
> "overflows.
>=20
> To avoid confusion I'll call similar issues "out of bounds read"
> instead of "read heap overflow" in the future. Probably a wording less
> prone to misunderstandings.

Good idea.=20

>=20
> (address sanitizer calls every oob read a heap/stack/global buffer
> overflow, that is the main reason I used that term in the past - I
> often sticked to the wording address sanitizer used)

Another take-away might be to be extra careful when discussing potential
security issues with critical security infrastructure such as OpenSSL
and OpenSSH.

--mancha

--aM3YZ0Iwxop3KEKx
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVV8LjAAoJEB4VYy8JqhaD48YQAIHh/9Bz0lWMZNw8ADNquSC2
x459zQS1SmHvGB3a8IYIDXNkRGCqHMH65sKLksGfqGV07v4XuTHxyuq0URHPSlET
9AfQ/eCOlI2WOHO4a7AVIE0464Rba1mSm7rhRTKQCNo69BEMYuOdDXq3qwzewNMv
6UFY4y3s9WyyszjlCZhW6fgevHijnW1h8xiFOhdYbokckI0hJIQBl3iFFnHFjIDy
hjtHf/hcygL2UiEA54b0iKKSem2izU4vkRiSH/DsBr6HmO4x6NQhSUJu/sumIRGI
qjWItKLkIFo4B+zMquX4/HRfGViX9nSrXOT59+6VHbD9bm6FdJbcCHBB8apJS318
ykPht+m7ZsP35eyP5pxJCjASxyHz3ip+xGpxwr8cuMIsxWnSExH8vIgRUHXPTm84
/7qw1P9j2TRpoCEvKqUrqdwRnAUJYRl+24ZSlLT/UruA27TubR8RkTl+3llhzMC/
pI5BTtVfJc/E/Wtu7P8OLk46a/VPvp2br0Or6+stEGWHntZG6ixOGNdI/OzVyV/Q
MID15/M5MXrfRiaI5THQHmthRjrbum7nUmIwRIkrng/+UgQDNknaRUBWtW4HvnfD
3nh505aNGaHsmLq+WYAUmdcIH0U/ySB7k7qaV7d9X6IgPrJNxGxbQiFR/tsSdEdf
Au58aATlXOmKunBPeSQ9
=Jb4G
-----END PGP SIGNATURE-----

--aM3YZ0Iwxop3KEKx--

