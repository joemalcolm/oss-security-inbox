Received: (qmail 32342 invoked by uid 550); 7 Nov 2024 21:46:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17425 invoked from network); 7 Nov 2024 21:42:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1731015721; x=1731682387; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=5N2OLEX04QFoeDB6Nc2SH1R3VNa8iT8RO9ARJaYnZ6U=;
 b=d4AemZX+d+xi6J4w53KCyL5ihwAZT+E6yDPhLm1gl1Mv8cJCf085FsUY75tOnbRm2M0C5qZz
  DqyyXVsTMF2rHcO8Wmpi7FT6NzVz+lDBO91JpNhopHGwBchCW7osg0RKRagztbvl+kOaXKjp2P
  pJskwkru3KGNliQKJtE17UKjEPTfghMt2n8wJ5RxNZ+/zEfNkaYC/ngg77CGl9iw//XOIJSArX
  g6JYjkjjBPI2kTzgJU4OzwANZllaMCrf/2JFLfdG4kUn7sq2Eqw+t6Vrr6eCsYyqa+l4P+N+r5
  PD5QCaKbeNiqK5eFD2cpFbRGjdcx+mmRe9Xay1Z0MF4BWIrw==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1731015721; x=1731682387; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=5N2OLEX04QFoeDB6Nc2SH1R3VNa8iT8RO9ARJaYnZ6U=;
 b=JBigl8waybmzpusI4BuhsR9+WRz6NKDFt+YiK9O4a20VIbJqzLqFVbFTCJfkGFvO2N7/rXG9
  KNwL59TJRWT6AA==
Date: Thu, 07 Nov 2024 22:41:59 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20241107214159.XFJ1n5cL@steffen%sdaoden.eu>
In-Reply-To: <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
 <20241107000819.z6Ygg103@steffen%sdaoden.eu>
 <20241107041658.GA10363@openwall.com>
 <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-623-g805238bd9b
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] shell wildcard expansion (un)safety

Steffen Nurpmeso wrote in
 <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>:
 |Solar Designer wrote in
 | <20241107041658.GA10363@openwall.com>:
 ||On Thu, Nov 07, 2024 at 01:08:19AM +0100, Steffen Nurpmeso wrote:
 ||> David A. Wheeler wrote in
 ||>  <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>:
 ||>|> On Nov 5, 2024, at 11:12 PM, Solar Designer <solar@openwall.com> \
 ||>|> wrote:
 ||>|
 ||>|> ... over the years we gained things like ...
 ||>|> 
 ||>|> find . -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 grep text --
 ||>|
 ||>|The "-print0" and "-0" options have been widely implemented, but
 ||>|POSIX 2024 finally formally adds them. So I urge using them where they
 ||>|make sense, as they counter embedded linefeed characters in filenames.
 ||> 
 ||> To add that the POSIX core developers mention (APPLICATION USAGE):
 ||> 
 ||>   It should be noted that using find with -print0 to pipe input to
 ||>   xargs -r0 is less safe than using find with -exec because if
 ||>   find -print0 is terminated after it has written a partial
 ||>   pathname, the partial pathname may be processed as if it was
 ||>   a complete pathname.
 ||
 ||Shouldn't that behavior be treated as an xargs implementation bug or at
 ||least shortcoming, and fixed as such?  I hope POSIX doesn't require it?

POSIX.1-2024 says, for xargs, on page 3600, lines 123174 ff.:

  If the -0 option is specified, the application shall ensure that
  arguments in the standard input are delimited by null bytes.
  If multiple adjacent null bytes occur in the input, each null
  byte shall be treated as a delimiter.
  If the standard input is not empty and does not end with a null
  byte, xargs should ignore the trailing non-null bytes (as this
  can signal incomplete data) but may use them as the last
  argument passed to utility.

So it standardizes behaviour as it exists in real life
applications.
(This is pretty unfortunate.)

  ...
 |A first thought is that the now really included (four decades too
 |late!) sh(1)ell's "pipefail" option was agreed upon long after the
 |text above appeared for the -print0/-r0 addition.  If that is true
 |the above text is anyway a correct statement less the partial
 |pathname because the undesired "termination" will not be reflected
 |in the exit status of the pipe.
 |
 ||In other words, if the input stream to "xargs -0" doesn't end in a NUL,
 ||xargs must not process the last maybe-partial string.  I've just checked
 |
 |Other than that i would agree.
 |
 ||GNU findutils xargs (not the latest version, though) and it does have
 ||this problem - something we'd want to fix?
 |
 |From a glance "git show master:findutils/xargs.c::process0_stdin()"
 |of busybox also does
 ...
 |So then the above paragraph even reflects code reality.

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
