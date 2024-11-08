Received: (qmail 26541 invoked by uid 550); 8 Nov 2024 01:47:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14195 invoked from network); 8 Nov 2024 01:43:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1731030181; x=1731696847; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=hLL4bA9K1PChEgybibA1y8gwgTmOEkUzMtKj12KFziw=;
 b=Kfm7u4Eoy10NkocAK2aielR+nPnKtPNod/DcvVzgwNmGyTQVCLXn39G1L9GgeYVs1cFlHT7m
  Sw6EjJFPJUqrAJQ/D0RoAR0UTvQQZ3HJQuXdvdMk3uFpm5fqQVqgBlA4yDeqPG2vII9SqyuCQE
  ZhFiRiRxlZcSKnBvFZEslbo5K+nnZdASmpaeZ/MdvHhDFAtNXFTAGi1kbcZetR7G4gIQxAi4Cy
  14wotHRyuWofTX9tBMPAiGcqMc8dJiBCF5Zve5apSgF90IZHdlY4UjInit6SfFLczNT6bMK9Cl
  ncaYUK4LYH4BcLOD/DwSWJhYLa7E5z8Ev03BL2UkO/WwRk8Q==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1731030181; x=1731696847; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=hLL4bA9K1PChEgybibA1y8gwgTmOEkUzMtKj12KFziw=;
 b=mEbJD731fncyToA0OaG/bodS17XBc+VzvSQzCTk45Hm7fCIBJHuf+Q939fTIIDscIxfZ/tA7
  ty5n0mix7qicCA==
Date: Fri, 08 Nov 2024 02:43:00 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Mats Wichmann <mats@wichmann.us>,
 Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20241108014300.SX8oA-NL@steffen%sdaoden.eu>
In-Reply-To: <a0a83f75-de97-4cb1-9e8e-0cad322fd31f@wichmann.us>
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
 <20241107000819.z6Ygg103@steffen%sdaoden.eu>
 <20241107041658.GA10363@openwall.com>
 <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
 <20241107214159.XFJ1n5cL@steffen%sdaoden.eu>
 <a0a83f75-de97-4cb1-9e8e-0cad322fd31f@wichmann.us>
Mail-Followup-To: Mats Wichmann <mats@wichmann.us>,
 Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-623-g805238bd9b
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] shell wildcard expansion (un)safety
X-Spam: Yes

Mats Wichmann wrote in
 <a0a83f75-de97-4cb1-9e8e-0cad322fd31f@wichmann.us>:
 |On 11/7/24 14:41, Steffen Nurpmeso wrote:
 |> So it standardizes behaviour as it exists in real life
 |> applications.
 |> (This is pretty unfortunate.)

 |As I'm sure you know, standards workgroups tend to operate in accordance=
=20
 |with a charter that bounds their work.  These vary widely depending on=20
 |circumstances and the chartering organization(s), but it's not uncommon=20
 |for projects - POSIX being one of those -to be set up to standardize=20
 |existing practice to provide incentive for various implementations not=20
 |to end up diverging from such practice without good reason. It's a=20
 |little harsh to characterize operating in accordance with one's charter=20
 |as "pretty unfortunate".

Please see below.

 --End of <a0a83f75-de97-4cb1-9e8e-0cad322fd31f@wichmann.us>

Solar Designer wrote in
 <20241108001759.GA15331@openwall.com>:
 |On Thu, Nov 07, 2024 at 10:41:59PM +0100, Steffen Nurpmeso wrote:
 |> Steffen Nurpmeso wrote in
 |>  <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>:
 |>|Solar Designer wrote in
 |>| <20241107041658.GA10363@openwall.com>:
 |>||On Thu, Nov 07, 2024 at 01:08:19AM +0100, Steffen Nurpmeso wrote:
 |>||> To add that the POSIX core developers mention (APPLICATION USAGE):
 |>||>=20
 |>||>   It should be noted that using find with -print0 to pipe input to
 |>||>   xargs -r0 is less safe than using find with -exec because if
 |>||>   find -print0 is terminated after it has written a partial
 |>||>   pathname, the partial pathname may be processed as if it was
 |>||>   a complete pathname.
 |>||
 |>||Shouldn't that behavior be treated as an xargs implementation bug or at
 |>||least shortcoming, and fixed as such?  I hope POSIX doesn't require it?
 |>=20
 |> POSIX.1-2024 says, for xargs, on page 3600, lines 123174 ff.:
 |>=20
 |>   If the -0 option is specified, the application shall ensure that
 |>   arguments in the standard input are delimited by null bytes.
 |>   If multiple adjacent null bytes occur in the input, each null
 |>   byte shall be treated as a delimiter.
 |>   If the standard input is not empty and does not end with a null
 |>   byte, xargs should ignore the trailing non-null bytes (as this
 |>   can signal incomplete data) but may use them as the last
 |>   argument passed to utility.
 |>=20
 |> So it standardizes behaviour as it exists in real life
 |> applications.
 |> (This is pretty unfortunate.)
 |
 |Actually, to me the above reads like it merely allows the current
 |behavior ("may"), but encourages change ("should").  That's good.

Well it actually even says (on page 3606)

  FUTURE DIRECTIONS
    A future version of this standard may require that, when the
    =E2=88=920 option is specified, if the standard input is not empty and
    does not end with a null byte, xargs ignores the trailing non-
    null bytes.

but -- as can be seen -- people do not read (all) the docs.
A reference to the future in the running doc would have made me
silent.

 |My only complaint is that "ignore" doesn't suggest this resulting in a
 |non-zero exit status from xargs.  POSIX allows exit status in the range
 |of 1 to 125 if, among other possibilities, "some other error occurred".
 |So I think a non-zero exit status in that range on this condition isn't
 |too far from being compliant.
 |
 |>   ...
 |>|A first thought is that the now really included (four decades too
 |>|late!) sh(1)ell's "pipefail" option was agreed upon long after the
 |>|text above appeared for the -print0/-r0 addition.  If that is true
 |>|the above text is anyway a correct statement less the partial
 |>|pathname because the undesired "termination" will not be reflected
 |>|in the exit status of the pipe.
 |
 |It will be when "pipefail" is present and enabled, and even if not it's
 |extra and different impact - not indicating error to further commands
 |(which may or may not matter in a given case) vs. also processing of an
 |unintended file (truncated filename) by this very command.
 |
 |>||In other words, if the input stream to "xargs -0" doesn't end in a NUL,
 |>||xargs must not process the last maybe-partial string.  I've just check=
ed
 |>|
 |>|Other than that i would agree.
 |>|
 |>||GNU findutils xargs (not the latest version, though) and it does have
 |>||this problem - something we'd want to fix?
 |>|
 |>|From a glance "git show master:findutils/xargs.c::process0_stdin()"
 |>|of busybox also does
 |>  ...
 |>|So then the above paragraph even reflects code reality.
 |
 |So it looks like we can fix/enhance xargs in this way in both GNU
 |findutils and Busybox findutils and perhaps elsewhere.  It would also be
 |interesting to know if any implementations exist that already "ignore
 |the trailing non-null bytes".

It seems to me the xargs(1) of the BSDs have a common root with
identical comments, variables (zflag =3D=3D -0) etc, but slightly
diverged code bases "thereafter"; .. not going to dig that stuff
now, .. but running f-1400, n-1000 and o-0705 (i do not have
OpenBSD 7.6) yet) all interpret the trailer it seems.

  #|f-1400:~$ printf 'a\0b\0c' | xargs -0 printf '<%s>\n'
  <a>
  <b>
  <c>

On OpenIndiana "2024" i see

  #?0|oi-2024:steffen$ printf 'a\0b\0c' | xargs -0 printf '<%s>\n'
  <a>
  <b>
  <c>
  #?0|oi-2024:steffen$ command -v printf xargs
  printf
  /bin/xargs

(xargs also via /usr/gnu/bin/xargs as you say)

 |Another reason for this safer behavior is that it's also more consistent
 |with respect to empty strings.  If "trailing non-null bytes" are passed
 |"as the last argument", then this only occurs if the last argument is
 |non-empty.  Yet xargs otherwise does support empty arguments, except for
 |the last non-null-terminated one.  We'd be removing this inconsistency.

Seems to require changing any xargs(1) i have around.

Which makes the standard *very much* requiring changes for the
future ...  So i take back the "unfortunate".

 |Alexander
 --End of <20241108001759.GA15331@openwall.com>

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
