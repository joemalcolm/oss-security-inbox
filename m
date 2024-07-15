Received: (qmail 17447 invoked by uid 550); 16 Jul 2024 00:10:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28422 invoked from network); 15 Jul 2024 23:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1721086354; x=1721753020; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=bN8eFyhRI06opuYfQuB80NcMAA7rCrsdz0MQVtW7owc=;
 b=IlW2QCNBjsmBkQaeHVDQXIC3ZqzC0/cR8kIsM7QToJ6W6FwFmdBdzIN74zDxovUlSZe+ngJ2
  EgIkGtZCcjPWwjtIWW2WE2XyFvK1R5EmcfKhQdcalHoDN22uCxPcqgyNxIgwmb379amTSWnMYP
  4sLj1rurHXyYM2Zee7l3wzLy9FoYpvLlbjUtX6KWYaAs5bR4ae4ruIvEXymQUPFtnlydWogKcC
  hSUnR87uqjZfTH0ugaCaSlxSHPm5HuBBm9cHIwgz4wXm8j51euyZzOC2BuYINOf1KoelT8/ZSV
  wXW6IQuKG1muoabRgV6HCydDr2WYJnrO8UsbdiFRjl9mbyDg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1721086354; x=1721753020; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=bN8eFyhRI06opuYfQuB80NcMAA7rCrsdz0MQVtW7owc=;
 b=1dgqgF9jsKtRJ6GsaNFH/UqAyrflF3S9K450KwB8rFe7WJVcc2rYJer8WeePmVDAVB1C1Mps
  YX1O6ZHIO7ixAA==
Date: Tue, 16 Jul 2024 01:32:32 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240715233232.pwHkh7Qt@steffen%sdaoden.eu>
In-Reply-To: <ZpRSEWkkG6hmNhNo@itl-email>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
 <20240712170603.XJ6iwd6q@steffen%sdaoden.eu> <6691E39C.8090600@gmail.com>
 <20240713205858.LSnJJGoo@steffen%sdaoden.eu> <ZpRSEWkkG6hmNhNo@itl-email>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] ASLRn't is still alive and well on x86
 kernels, despite CVE-2024-26621 patch

Demi Marie Obenour wrote in
 <ZpRSEWkkG6hmNhNo@itl-email>:
 |On Sat, Jul 13, 2024 at 10:58:58PM +0200, Steffen Nurpmeso wrote:
 |> Jacob Bachmeyer wrote in
 |>  <6691E39C.8090600@gmail.com>:
 |>|Steffen Nurpmeso wrote:
 |>|> [...]
 ...
 |> Some findings:
 ...
 |>   . I always whimper when i have to rm(1) a running executable before
 |>   placing an updated variant on Linux, on BSDs i simply over-cp(1)
 |>   (and i do not understand as long as one gets either the one or
 |>   the other when executing the path).
 ...
 |> But it is ok to me, Linux is as it is[.]
 |
 |Executable files and shared libraries should _never_ be modified
 |in-place.  They should _always_ be renamed over.  Otherwise, a program
 |might be a mixture of the old and new version, with completely undefined
 |results when the program is run.

So i am thankful i get this translucent impression of my Linux box
and henceforth always use cp -f there, and cp on BSDs.
Or is this a hint to GNU coreutils?
(I rather would prefer either the one or the other, but not
a messed up copy.  Is that what they are doing?)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
