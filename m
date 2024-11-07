Received: (qmail 28310 invoked by uid 550); 7 Nov 2024 21:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6085 invoked from network); 7 Nov 2024 21:04:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1731013461; x=1731680127; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=+Z+j55KdhEuz/yZBxNTpmFU+/fOi+1tjfDVBDvpzFH0=;
 b=kIdrr69LmwOXNdiib/f+0iJ1ppkcOf5t87gtMHpDG5cBq+95He4KjNS9UuTiZ3rGP09v90k8
  8XvQ/TBQ94p61iRXPVytZwgiVD0KysRSOoItZGVC8l+hyzBBrxF1y7r64AvFNowx4STiG85THC
  2nWIM0CrstgY4V8xNZYwU4eNYvKD7DZlP0CGwGJuHSIZ2fj1v989rd7BW966b5ryyiCdojxjia
  WKk+q848JduGHkSK9J5ETelk6VuGfyPM5e2/T9rzL2qG/8WRKDrQKdmSc0KzT91hOTgk+gn3Od
  nchc1wbqJNuoG7bVsmc7cuHzGRny7aP2A/YkBPbWWbQtqQ9Q==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1731013461; x=1731680127; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=+Z+j55KdhEuz/yZBxNTpmFU+/fOi+1tjfDVBDvpzFH0=;
 b=O/ThTog6vys1LlVLNS97oxE6hyaUUdhFXLAFMqLoN5FciSby3ysCPgP31g4jkAscgERJSsqO
  5cGsH6iQxuuUAA==
Date: Thu, 07 Nov 2024 22:04:20 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
In-Reply-To: <20241107041658.GA10363@openwall.com>
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
 <20241107000819.z6Ygg103@steffen%sdaoden.eu>
 <20241107041658.GA10363@openwall.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-623-g805238bd9b
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] shell wildcard expansion (un)safety

Solar Designer wrote in
 <20241107041658.GA10363@openwall.com>:
 |On Thu, Nov 07, 2024 at 01:08:19AM +0100, Steffen Nurpmeso wrote:
 |> David A. Wheeler wrote in
 |>  <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>:
 |>|> On Nov 5, 2024, at 11:12 PM, Solar Designer <solar@openwall.com> wrot=
e:
 |>|
 |>|> ... over the years we gained things like ...
 |>|>=20
 |>|> find . -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 grep text --
 |>|
 |>|The "-print0" and "-0" options have been widely implemented, but
 |>|POSIX 2024 finally formally adds them. So I urge using them where they
 |>|make sense, as they counter embedded linefeed characters in filenames.
 |>=20
 |> To add that the POSIX core developers mention (APPLICATION USAGE):
 |>=20
 |>   It should be noted that using find with -print0 to pipe input to
 |>   xargs -r0 is less safe than using find with -exec because if
 |>   find -print0 is terminated after it has written a partial
 |>   pathname, the partial pathname may be processed as if it was
 |>   a complete pathname.
 |
 |Shouldn't that behavior be treated as an xargs implementation bug or at
 |least shortcoming, and fixed as such?  I hope POSIX doesn't require it?

Now, i am not a POSIX core developer.  POSIX.1-2024 was developed
for over a decade (even almost one and a half) with many hundreds
of issues fixed through discussions in regular meetings.
A first thought is that the now really included (four decades too
late!) sh(1)ell's "pipefail" option was agreed upon long after the
text above appeared for the -print0/-r0 addition.  If that is true
the above text is anyway a correct statement less the partial
pathname because the undesired "termination" will not be reflected
in the exit status of the pipe.

 |In other words, if the input stream to "xargs -0" doesn't end in a NUL,
 |xargs must not process the last maybe-partial string.  I've just checked

Other than that i would agree.

 |GNU findutils xargs (not the latest version, though) and it does have
 |this problem - something we'd want to fix?

=46rom a glance "git show master:findutils/xargs.c::process0_stdin()"
of busybox also does

                int c =3D getchar();
                if (c =3D=3D EOF) {
                        if (p =3D=3D s)
                                goto ret;
                        c =3D '\0';
                }
                *p++ =3D c;
                if (c =3D=3D '\0') {   /* NUL or EOF detected */

 ...

So then the above paragraph even reflects code reality.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
|And in Fall, feel "The Dropbear Bard"s ball(s).
|
|The banded bear
|without a care,
|Banged on himself fore'er and e'er
|
|Farewell, dear collar bear
