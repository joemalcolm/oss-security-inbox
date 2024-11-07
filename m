Received: (qmail 5207 invoked by uid 550); 7 Nov 2024 00:54:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31987 invoked from network); 7 Nov 2024 00:52:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1730940712; x=1731607378; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=NfNGa6EM+UFnQ/3s1Lry8kFkc6ymFf9gF2SgkvNlNWc=;
 b=VdKV8JXcPdYA4RXAMQGPRx9H42yq06lw6n/a+5pEL2oNQvODeeLoakCDYKKvK/meuwERbnbK
  x0edm7Z+Isci0bvb1ZEOuAiMMx5cOOc+08xCeUFUPnxcPQgEp62K6gwCAXsgQDqBorJycQUINL
  vJchjbgxNivjEIxwVtlBsnaUjyseWsixKZJ15tyZX94AE/6eCd27pmqRwd+FIxI5mMevJMTUE1
  85OpRd8toS19fVX9lSbJy++MZPwIOrWg7NHZzin8DY/SdJGYzM9+cIymef3iaEqd9/EO8YSKCw
  +k077HPcHmNvzVHd0IcdZ77ceA9P+3PVUq0Pd1TzeoYmvrfQ==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1730940712; x=1731607378; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=NfNGa6EM+UFnQ/3s1Lry8kFkc6ymFf9gF2SgkvNlNWc=;
 b=Uj9cPd93dub0m8D60OYvtGK8fJiN2GrELCeb7Mf85FYfy197pQfJSFiu6Huu1K3S5Dxp8+N0
  AIT8aWtZ/nhfAQ==
Date: Thu, 07 Nov 2024 01:08:19 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20241107000819.z6Ygg103@steffen%sdaoden.eu>
In-Reply-To: <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-623-g805238bd9b
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] shell wildcard expansion (un)safety

David A. Wheeler wrote in
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>:
 |> On Nov 5, 2024, at 11:12 PM, Solar Designer <solar@openwall.com> wrote:
 |> Alexander Hu, CC'ed here, sent a message titled "shell expansion bug" to
 |> the distros list and a few other distro security contacts and shell
 |> maintainers.  The message described known and correct behavior (not a
 |> bug), even if unexpected by some and risky. ...
 |
 |> Since this issue and other related ones were known for decades,
 |> getopt(3) and getopt_long(3), which are used by many programs, will stop
 |> processing options upon seeing a plain "--" argument.
 |
 |However, many programs do *not* use getopt or getopt_long to process \
 |arguments.
 |Many programs support "--", but "not* all do,so using "--" as the sole \
 |countermeasure
 |requires careful review of every command's documentation.
 |
 |I urge always using "./" to prefix wildcards if the first character \
 |is a wildcard,
 |e.g., "./*.pdf", because this ALWAYS works.
 |
 |> ... over the years we gained things like ...
 |>=20
 |> find . -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 grep text --
 |
 |The "-print0" and "-0" options have been widely implemented, but
 |POSIX 2024 finally formally adds them. So I urge using them where they
 |make sense, as they counter embedded linefeed characters in filenames.

To add that the POSIX core developers mention (APPLICATION USAGE):

  It should be noted that using find with =E2=88=92print0 to pipe input to
  xargs =E2=88=92r0 is less safe than using find with =E2=88=92exec because=
 if
  find =E2=88=92print0 is terminated after it has written a partial
  pathname, the partial pathname may be processed as if it was
  a complete pathname.

  ...

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
