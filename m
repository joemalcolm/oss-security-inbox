X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2505" "Tuesday" "31" "October" "2017" "14:46:59" "+0000" "Simon Waters (Surevine)" "simon.waters@surevine.com" "<AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>" "69" "Re: [oss-security] Security risk of vim swap files" "^Date:" nil nil "10" "2017103114:46:59" "[oss-security] Security risk of vim swap files" (number mark "        simon.waters Oct 31   69/2505  " thread-indent "\"Re: [oss-security] Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9486 invoked by uid 550); 31 Oct 2017 15:17:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15795 invoked from network); 31 Oct 2017 14:47:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=surevine-com.20150623.gappssmtp.com; s=20150623;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=YbrmUPAcON7T/Ss5rLc9MjSfbIds70srqUCL7WDUN8w=;
        b=oKDds12ETDfBsTxOjvNsULlBFhDciUtO3WAvuHtwb0H4ONVyC3vzW/g2vjo0Zq6/s1
         BF+A/hJMT6m8EZP9vI9rrku3UVuyYLCd+z0VTxkUNDleZ8PkwzqUxOnpErUH6ZCulhPB
         gz7RolhPFitYmF1n+DMe9CG/mkr2nCWpCrdan8YVlB5alXoEZwtp1rTr22pjyq1NNCd+
         731CSF+DUadFsGBpQIC1PUBAROoZc06ecFiYwvwV5P2U4xkaiRj5be8pzwRPWO+98gNQ
         +zg9PchiHFi8n+6y0la54PzSbH2gNABdHCDn3TRGyOxhaZVoxon03ZuwkKGRN0U53DxG
         gfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=YbrmUPAcON7T/Ss5rLc9MjSfbIds70srqUCL7WDUN8w=;
        b=YIdO83zYwG9KOpP58UzhC9fhJCL/U+qUOKbYTwzc8eEmVpQWTNYJgQK3RrgaAut+tx
         WFelp4whsY9fQxmoP8T0fQ7lWshIA16ju8/b8RarM5z4qxrFaR+uGtYtrQstXXwh6QaI
         wz3RclyS/O5l1eYXiiSbaSIOYK8OaIHiwgpjUsAGl4GKiSJzkjTfaCALcGvWvzIkqsZM
         fVeCg/LUhsOEseMfulP8geQ09/G7HHn5rddX2TBQXbxOSVihxD3rOXtibzVNqXD/PYhV
         oFdbFqxbjdSslQ3rSqkypV+imC2R7wP+bnbqmf7LVejehrfSo7JTP+5TNZ3vmS20wrgp
         yB4g==
X-Gm-Message-State: AMCzsaXt4t2PN+f0JTTVQGMLQzjZ0Rtju72QvFGmvTXhg2jXZ/dh3UdC
	ApzlPVKbIbK7QmJaPW/wPyabxu1dGd8=
X-Google-Smtp-Source: ABhQp+RqvjszzviNsMVRjW/fqGCl8Qe4XvjE5WaCGnbc8kMY4pBizlKjSxfwZcBBZoCMbOr4rHgsTw==
X-Received: by 10.28.122.22 with SMTP id v22mr2060287wmc.47.1509461222032;
        Tue, 31 Oct 2017 07:47:02 -0700 (PDT)
Content-Type: multipart/signed;
	boundary="Apple-Mail=_103176A3-D36C-4D6B-955E-ECE1FD25B7E6";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 11.0 \(3445.1.7\))
References: <20171031132352.2df6d2ad@pc1>
In-Reply-To: <20171031132352.2df6d2ad@pc1>
Message-Id: <AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>
X-Mailer: Apple Mail (2.3445.1.7)
Date: Tue, 31 Oct 2017 14:46:59 +0000
From: "Simon Waters (Surevine)" <simon.waters@surevine.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of vim swap files
To: oss-security@lists.openwall.com

--Apple-Mail=_103176A3-D36C-4D6B-955E-ECE1FD25B7E6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 31 Oct 2017, at 12:23, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>=20
> I was wondering how to best avoid this on my own servers and I first
> thought about saving the swap files to tmp ( with "set directory=E2=80=9D=
).

The specific website issue, the web server config can exclude dot files.

Apache ships with

<Files ~ "^\.ht">
    Order allow,deny
    Deny from all
</Files>

The obvious generalisations of this work. Although some sources also recomm=
end blocking in =E2=80=9CLocation=E2=80=9D to prevent requests with =E2=80=
=9C*/.*stuff=E2=80=9D  which are parsed by templating libraries or other di=
rectives.

To rub salt in most distros ship Apache with

IndexIgnore .??* *~ *# RCS CVS *,v *,t

Which means that if you use the Apache directory indexing approach these fi=
les will be hidden but not blocked.

I now realise the Alexa top 1 million will now be searched for remaining us=
es of RCS and CVS ;)

In a previous role the roll out scripts cleaned this sort of junk and told =
you if any new files had been added to the web application, this approach h=
as much to recommend it if you have the time to perfect your applications, =
and your roll out procedures.

--Apple-Mail=_103176A3-D36C-4D6B-955E-ECE1FD25B7E6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEErGVpFGUN9aPEC9zyNw2imAoTYf8FAln4jOMACgkQNw2imAoT
Yf/KBQ/9HydqwXPD+dZntHI06pu5BpesJ02ojdRKJgnVgkpjjsJV0ITFqyNcBJ2n
ZsJZHfmKuzlyeYlEXHSOO475dlM2IlyBdd2NkCa7a0ICHfAUp7q9COuDGXe942ty
WqBD5RAEPZ/yuaLqDtAuiZ4+7LXxKeAg/h3gvbybP826Gs/tJLS/2IvJjVBufdth
rKzeMMy1kM8Wruu0IKymzrY363VkWU9gHndzT70dweNgXaLUtOz4VRGSI9uvt/BT
xzSzicLKqJoVR8hF59dloKyluWjuA2xJo777rhZ2Zcy+cMBsNhF4rK0PxadhW3FT
AHjGU946OPyA3BIb8/rGyxv+pd2lhiPPZmETzQJh6C7vI4dxlQ6+4IKIHDrRPl90
VQrnkKmh0oKpGGNMBaPMKqHp/0dX2lPy4o9XptEOsyFxhl9rKE5QZUgse97kFrcP
oQOxsuOTNF/RHdFoUiBLZREsfuVMsvsR0Zf2g4bLrUKjEXGa7L5peTBCv0iXzYsP
mI9m5nv2gGIG6Wc0RHNqgseP8fxmgbNKhXihhHmm5BmBy0xBZJeAWM3Qb8XV2c0y
AO+WBpONEJeH7ClA5Y7yK2zr957+Lo/ETvudNQ3pv9eE3U5vHU+zsDVF4ExXxTAF
KFHj3vCZo+qU9uWIA3BnNzCItpR+e9d1rESws942kPmBHwQxJFc=
=jy6p
-----END PGP SIGNATURE-----

--Apple-Mail=_103176A3-D36C-4D6B-955E-ECE1FD25B7E6--
