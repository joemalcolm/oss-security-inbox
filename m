Received: (qmail 3748 invoked by uid 550); 16 Nov 2024 02:05:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18125 invoked from network); 16 Nov 2024 01:15:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1731719714; x=1732386380; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=XyIAOe4VwD8EmuFDvATaioli08O0MW0648dXcOB/Zec=;
 b=h+E3QfVX6fjfpNB3TIUhQsl06kco3lQTsBDBfcLcNWi5XATAeNVLbsuqm8vUNAX4gxyErmqy
  2UYmGwo2PFbeTPXgMn5k2Jzt5vOvFDIgxqhTcA/K9aPtTUvSV/H2NZhtZpBGWIE2uyaJqXk9O1
  Sw3nl6EPPOl5ozOUYSdy1wJdiUKUSkCJ7T0kPx8L4p56jlIk4K9C8ChSEfbODOlABRpgExXpo4
  bTWomtOZkt3iWLb6+04FMTdLdxo/FKlo5f2mfL7LYkmqyXXpbmKe+5vLyvC3gkRuh/hYq+0HCX
  4SQKHo1OzSYcr2A+7FBJ9B+nTwJ9jJxQ+3tCY8cokjjurVxg==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1731719714; x=1732386380; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=XyIAOe4VwD8EmuFDvATaioli08O0MW0648dXcOB/Zec=;
 b=/HAdGrvFBnACOKsyuCfpE/H07YfdrUPXDuSRNG8MTWcZY9ImpI58L/DmBOlT7Efde7wSaRO6
  0I5Pa9DIC4ILBQ==
Date: Sat, 16 Nov 2024 02:15:13 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20241116011513.kWB_ovDv@steffen%sdaoden.eu>
In-Reply-To: <20241108001759.GA15331@openwall.com>
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
 <20241107000819.z6Ygg103@steffen%sdaoden.eu>
 <20241107041658.GA10363@openwall.com>
 <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
 <20241107214159.XFJ1n5cL@steffen%sdaoden.eu>
 <20241108001759.GA15331@openwall.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-623-g805238bd9b
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] shell wildcard expansion (un)safety

Solar Designer wrote in
 <20241108001759.GA15331@openwall.com>:
 |On Thu, Nov 07, 2024 at 10:41:59PM +0100, Steffen Nurpmeso wrote:
 |> Steffen Nurpmeso wrote in
 |>  <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>:
 |>|Solar Designer wrote in
 |>| <20241107041658.GA10363@openwall.com>:
 |>||On Thu, Nov 07, 2024 at 01:08:19AM +0100, Steffen Nurpmeso wrote:
 |>||> To add that the POSIX core developers mention (APPLICATION USAGE):
 |>||> 
 |>||>   It should be noted that using find with -print0 to pipe input to
 |>||>   xargs -r0 is less safe than using find with -exec because if
 |>||>   find -print0 is terminated after it has written a partial
 |>||>   pathname, the partial pathname may be processed as if it was
 |>||>   a complete pathname.
 |>||
 |>||Shouldn't that behavior be treated as an xargs implementation bug or at
 |>||least shortcoming, and fixed as such?  I hope POSIX doesn't require it?
 |> 
 |> POSIX.1-2024 says, for xargs, on page 3600, lines 123174 ff.:
 |> 
 |>   If the -0 option is specified, the application shall ensure that
 |>   arguments in the standard input are delimited by null bytes.
 |>   If multiple adjacent null bytes occur in the input, each null
 |>   byte shall be treated as a delimiter.
 |>   If the standard input is not empty and does not end with a null
 |>   byte, xargs should ignore the trailing non-null bytes (as this
 |>   can signal incomplete data) but may use them as the last
 |>   argument passed to utility.
 |> 
 |> So it standardizes behaviour as it exists in real life
 |> applications.
 |> (This is pretty unfortunate.)
 |
 |Actually, to me the above reads like it merely allows the current
 |behavior ("may"), but encourages change ("should").  That's good.
 |
 |My only complaint is that "ignore" doesn't suggest this resulting in a
 |non-zero exit status from xargs.  POSIX allows exit status in the range
 |of 1 to 125 if, among other possibilities, "some other error occurred".
 |So I think a non-zero exit status in that range on this condition isn't
 |too far from being compliant.
 ...

In the meantime the POSIX core developers have "done something
about it":

  This was discussed when those words were added to Issue 8. There
  is a danger in allowing partial input records to be treated as
  complete. As an example, if find is used to generate a list of
  directories to be recursively removed and a partial pathname is
  accepted by xargs, it could result in the accidental removal of
  a much larger subtree in a filesystem than was intended. The
  current standard allows this behavior due to existing practice,
  but we hope to be able to disallow processing of partial input
  in a future revision of the standard.

  At page 3600 line 123176 section xargs, change:

      If the standard input is not empty and does not end with
      a null byte, xargs should ignore the trailing non-null bytes
      (as this can signal incomplete data) but may use them as the
      last argument passed to utility.

  to:

      If the standard input is not empty and does not end with
      a null byte, xargs should treat the trailing non-null bytes
      (which can signal incomplete data) as an error but may use
      them as the last argument passed to utility.


  Add to RATIONALE after page 3605 line 123412:

      When the -0 option is not specified, if the standard input
      is not empty and does not end with a <newline>, then the
      input is not a text file, and therefore the behavior is
      undefined. However, it is recommended that xargs diagnoses
      the trailing non-<newline> characters (for consistency with
      the recommendation for -0 and trailing non-null bytes).

  On page 3606 line 123415 section xargs, change:

      xargs ignores the trailing non-null bytes.

  to:

      xargs treats the trailing non-null bytes as an error.

Ciao,

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
