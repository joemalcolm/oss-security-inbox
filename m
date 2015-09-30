X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1795" "Wednesday" "30" "September" "2015" "12:51:00" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150930105059.GB8507@kronk.local>" "55" "Re: [oss-security] CVE Request: twig remote code execution" nil nil nil "9" "2015093010:51:00" "[oss-security] CVE Request: twig remote code execution" (number mark "        alessandro@g Sep 30   55/1795  " thread-indent "\"Re: [oss-security] CVE Request: twig remote code execution\"\n") "<20150821123957.GA29111@kronk.local>" ("<20150821123957.GA29111@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24012 invoked by uid 550); 30 Sep 2015 10:51:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23942 invoked from network); 30 Sep 2015 10:51:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=u0IIf2bVaEehJaZu1Adl4eqzy+Vil2Fpa5R9y3+vLMM=;
        b=Tq0Kh1B2i8ihXCn5eM6Nv+HkLGen2O0jsI6vq6hPi0nHijUEaJu2s1qeN2xPjoZaSZ
         25yTxa6WlD2JMVCcYu6ORtx64TKpUNczNl6JKoWHa7oo8bnHRUs7JI0j9eHlOw5KD7Gq
         8PxZ5JG84VOoo9yMzUmBeHq4VR+6x7smJqn4J4F4Z3aj/gQSbbtEP4hLDBjAZhwrI/Hx
         KdIKO/OVUNYaNlgyuJrMuvyVihp2QnQaVwkNq/EZuR4cl0UbbAYEsoLpYUNDNyX3y8aT
         NxdIcrYu1oU6slLter6MkiecdLvJlVo618RyPRrUoNC+bdHarAG/5hjkXpf0U4/LkP19
         Zagw==
X-Received: by 10.194.234.71 with SMTP id uc7mr3329593wjc.105.1443610260755;
        Wed, 30 Sep 2015 03:51:00 -0700 (PDT)
Message-ID: <20150930105059.GB8507@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <20150821123957.GA29111@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline
In-Reply-To: <20150821123957.GA29111@kronk.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Wed, 30 Sep 2015 12:51:00 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: twig remote code execution
To: oss-security@lists.openwall.com

--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 21, 2015 at 02:39:57PM +0200, Alessandro Ghedini wrote:
> Hello,
>=20
> the symphony project released a security advisory for the Twig PHP librar=
y:
> http://symfony.com/blog/security-release-twig-1-20-0
>=20
> The linked GitHub pull requests provides the fixes:
> https://github.com/twigphp/Twig/pull/1759
>=20
> AFAICT there are least two issues: a remote code execution fixed by the "=
fixed
> sandbox security issue" patch, and at least another issue regarding acces=
s to
> "reserved macro names".
>=20
> The RCE deserves a CVE IMO, but I'm not sure about the other one (or if i=
t is
> indeed only one issue).
>=20
> Can CVE(s) be assigned for the above issue(s) as you deem appropriate?
>=20
> Thanks

Ping?

Cheers

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWC76TAAoJEK+lG9bN5XPLUWIP/RVsidRXtCiWASN0DUwsgGwY
ndGCLct+6aYOGVV5zbHB5c1o/qKJg7n9AZNhL5JrkeKUUDpUCkVaYZLu+ymXD8r8
qFe4L/smDdkPK0Na4Gd4kCYIwlOhft9SY+n0biErIi6rEee0F07wAI5KyiH0DSAA
lThCVFJtWA6e7WT3C7zajFoZzLz5GU2cQVhUW7nte1HQYoXUa6DYfEXNQZunrQXT
cRDhwZ8v6Ugk2fjieUurmWsengZYRDbp/pLEIAUAgVtJmb5YXyovoMlZtwDzIzyP
YFWiwxQg6CN97H9CzyVVwjW+OwVFTgomnSnCNIhtnbu+gqT7TKdwZeymmmHqiVX+
aQwXag+nushRzShr/C9IwtsVTM9dabpC9fMMY+25NkxdyHhWrvO1eqIQdXSTLt+g
2RhsyIuZNSpUuQB+z2DvDjTncHKXt/KjBFsVATJ905YCIZy2RADa0bgEEJnqVJh3
cQE6qAN2hItLR4t66IWd21EfiRSKIKn6P+TpBMB42PjDY2CbCb84EkpBakiabKkb
j9vJn/Ry0XAqXlJZpL/qtfRkxS6Hr9SErhuGJmVJ4hRsyFv+l4hUXuDuB80p5vtV
ITgNroIgt8uRzoQ/JJUx9nsi8sR/44pOutZ0JwrpUcQH1YJivhURM8acBdFEHpdE
5dD6Bvnshxvku8G2bv/+
=F/UY
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
