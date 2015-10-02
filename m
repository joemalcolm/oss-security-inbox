X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5593" "Friday" "2" "October" "2015" "18:58:31" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201510021858.31300@pali>" "165" "[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)" nil nil nil "10" "2015100216:58:31" "[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)" (number mark "U       pali.rohar@g Oct  2  165/5593  " thread-indent "\"[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)\"\n") "<20150930071507.90DE21BE293@smtpvbsrv1.mitre.org>" ("<20150930071507.90DE21BE293@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17482 invoked by uid 550); 2 Oct 2015 17:37:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21673 invoked from network); 2 Oct 2015 16:58:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:user-agent:cc:references:in-reply-to
         :mime-version:content-type:content-transfer-encoding:message-id;
        bh=14iqWNn8CmzTPtQGzPYIXyWD8VhkTNsmDTcoERx6Roc=;
        b=q4KzJxQcj1PPXA3IdA0715FmcXQbQuHPTlCkrCelGVfzPra2L9K7a0ZwxV80ah+jGL
         r0ppN1x9ZUlCJ5ZC+jlmN5fWi3A4+xq0EILfu+S6Q/1AzyZaYYznZ1F6tBBV6b5rvnGH
         6Q6XhIMu2tlCe3ulFydL5/oBQRD0eWt0i6cc9NSWZhmsBH5I2/3HrjZ8BP8+SbRvzI4p
         7VTq6BrIPPdKxgAXDBSU4e67skcTdYTyMEFKTzuPlCigv5+sqQpkjKJe8IYlxSuTT2zp
         pnyj2I4ZwH2LNY0ETjX1uUsGAhNFrcfN9OlrZHsPNyJuq4FajyspYQJ/2TV3YrAE/lF2
         SRrw==
X-Received: by 10.180.87.37 with SMTP id u5mr5705081wiz.42.1443805113379;
        Fri, 02 Oct 2015 09:58:33 -0700 (PDT)
User-Agent: KMail/1.13.7 (Linux/3.13.0-65-generic; KDE/4.14.2; x86_64; ; )
References: <20150930071507.90DE21BE293@smtpvbsrv1.mitre.org>
In-Reply-To: <20150930071507.90DE21BE293@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2086626.93s7OWSfOd";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201510021858.31300@pali>
Cc: oss-security@lists.openwall.com
Date: Fri, 2 Oct 2015 18:58:31 +0200
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)
To: cve-assign@mitre.org

--nextPart2086626.93s7OWSfOd
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wednesday 30 September 2015 09:15:07 cve-assign@mitre.org wrote:
> > Probably nobody has normal usage for inserting nested comments
> > into email address in To:/Cc: headers...
>=20
> It may be reasonable to assign one CVE ID for the Email::Address
> issue; however, the decision may depend somewhat on this information
> about normal usage. See below for a question about the behavior of
> the patched version.
>=20
> > Because input string for Email::Address module comes from external
> > source (e.g. from email sent by attacker) it is security problem
> > all software application which parse email messages by
> > Email::Address perl module. For example: RT: Request Tracker,
> > CiderWebmail, ...
>=20
> The documentation says it "locates email addresses in strings" and
> this might not always mean "from external source." Thus, one might
> argue that it is not a vulnerability in a general-purpose utility
> such as Email::Address, and instead is a vulnerability in each
> individual application that uses Email::Address without changing the
> $Email::Address::COMMENT_NEST_LEVEL package variable to satisfy that
> application's threat model.
>=20

Standard usage of Email::Address module is to parse From/To/Cc headers from=
 emails. And standard is also to use that=20
module without setting $COMMENT_NEST_LEVEL variable... So because I was thi=
nking about this standard usage in other=20
applications I think that one CVE ID could be enough.

> However, we think one CVE ID may be enough if, realistically, no
> application ever needed $COMMENT_NEST_LEVEL to have a value of 2,
> i.e., changing from 2 to 1 does not break anything.
>=20
> We think there may be two distinct cases of nested comments:
>=20
>   A. each nested comment is either entirely before or entirely after
>      the address
>=20
>   B. the nested comment is inside the address, similar to the
>      "Wilt . (the  Stilt) Chamberlain@NBA.US" example from
>      RFC 822 section A.1.4
>=20
>=20
> In case A, if $COMMENT_NEST_LEVEL is reduced, is correctness
> affected? Or does the module always still find the correct address
> string (and typically faster)?
>=20
> We would guess that correctness is affected in case B.
>=20
> As far as we know, case A sometimes occurs in real life. The example
> we found is online.microsoft.com address strings, e.g., do a web
> search for either of these:
>=20
>   jsmit@online.microsoft.com (Jan Smith (MSFT))
>   evanba@online.microsoft.com (Evan T. Basalik (MSFT))
>=20
> As far as we know, case B essentially never occurs in the standard
> format of an address string, although it might occur in something
> like:
>=20
>   Wilt . (hide address from spambot(s)) Chamberlain@NBA.US
>=20
> All of the above discussion implies that the CVE ID would be assigned
> for the concept of "the default configuration is unsafe." This is,
> for most purposes, largely equivalent to the concept of "the
> computational complexity of the comment-parsing algorithm is too
> high."

One important note is that Email::Address is not fully RFC compliance.
And some strings are not parsed correctly according to RFCs...

For example string

  "jsmit@online.microsoft.com (Jan Smith (MSFT)), evanba@online.microsoft.c=
om (Evan T. Basalik (MSFT))"

with nest level 2 is parsed as:

$VAR1 =3D [
          [
            'Jan Smith ',
            'jsmit@online.microsoft.com'
          ],
          [
            'Evan T. Basalik ',
            'evanba@online.microsoft.com'
          ]
        ];

and with nest level 1 as:

$VAR1 =3D [
          [
            'jsmit',
            'jsmit@online.microsoft.com'
          ],
          [
            'evanba',
            'evanba@online.microsoft.com'
          ]
        ];

(in both cases first value is name(), second address())

Next, string=20

  "Wilt . (hide address from spambot(s)) Chamberlain@NBA.US"

with nest level 2 as:

$VAR1 =3D [
          [
            'hide address from spambot ',
            'Chamberlain@NBA.US'
          ]
        ];

and with nest level 1 as:

$VAR1 =3D [
          [
            'Chamberlain',
            'Chamberlain@NBA.US'
          ]
        ];

Probably there could be examples when email address (not name) is parsed
differently with nest level 1 and 2, but those provides examples just
provide same output for email addresses. Here I'm not talking about
correctness of that module, but about differences (nest level 1 and 2).

Btw, Email::Address module is not written by me. For it is black box as
it generates some perl regexp at runtime which I did not try to fully
understand. So I do not know how exactly parser works and it is hard for
me to answer how parser is changed if nest level 2 is changed to 1. I
just discovered that performance problem with nest level 2 on some
special strings (which I sent in previous email).

Personally I would classify changing nest level 2 to 1 as security fix
for default settings. Email::Address is not fully RFC compliance so even
before it returned in some cases incorrect result (according to RFC).

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart2086626.93s7OWSfOd
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAlYOt7cACgkQi/DJPQPkQ1L5/gCgykMfihRsXDVa8ymgPnq8ikvf
crUAn2ZPBYpsBxqIqpzuX4n2I4ArnH+W
=m0iP
-----END PGP SIGNATURE-----

--nextPart2086626.93s7OWSfOd--
