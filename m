X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Friday" "3" "November" "2017" "14:14:11" "-0400" "Nick Bowler" "nbowler@draconx.ca" "<CADyTPEwtFD=d_JB4n0s+9G867D_tNmSQOTt_f=EtNeqYp22Eyw@mail.gmail.com>" "37" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110318:14:11" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        nbowler@drac Nov  3   37/1557  " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3343 invoked by uid 550); 3 Nov 2017 18:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8009 invoked from network); 3 Nov 2017 18:14:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=draconx-ca.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=1HbnVFU/vP7J52Bbko8FnqQ2bsbXNvU8WTeMVu/Qi8k=;
        b=vmx0ShhSgOAfrzCfNJ2EhQwJHDqBRSEj7ClZDYgvCGfhes4NtshmGC00syjfxszl19
         rBMqK4tvqVrxuHhwebus8Q0SPur7LRf1RyovIuIXgsuqgrlb1ECse4evrl/vtEFlhAoe
         8GeH+Xh6QRf6YvAmvoErhlrFbZdJxvJ46ZzTO+CQ7YFGSwzvlgg9IELi7733yyJ/fXop
         rtXV66qnan6rCCVtB7iYaLeOoYHsqEQR2EF+IDsRRUPm8SwR1AHJm5/BT1KwpWVEVrxw
         GU+DbujGdCH14jVwGg64b1/oGy2NS+rdfVOcUXcqmOyZEca4XEXt1CItp66WMUS15TW4
         YIoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=1HbnVFU/vP7J52Bbko8FnqQ2bsbXNvU8WTeMVu/Qi8k=;
        b=WwpBemNhI05DnJGSuxvf7S3lY3tMyZxcp481erDgCG/YMl/7uzvT4NU/8eDmkLA1Mx
         ar0A1RxHSOVLFEfm1lxM6aaiql0kxn7NYG9dsi+xHj01ud6Q6iLi9CbgDdWVeAKDpPCs
         0NKFoA34ERvD7p+peSgcRs1CdBCPrbvi+c1GIDMHtJ9je/GGXEkZyjC9EEN8q846oFYu
         qn74bqlFqAoVuMeIsqrPCAgCdAPDGNJimM7X0R4pbM4zHLiWHoImActNY4Jt+74gM8Ed
         FfBmPpN7HtL4hVKmM8KWCHr6Mvyro/8y/CSbh3xRqUdgmLbws1hleMBKEaqdtzQESYSa
         Um6A==
X-Gm-Message-State: AMCzsaVSFnC9H0Zn/HjqHkbdULWxoEB/ya1m5jUv8AqZe8Gb7CimWczd
	KB0I4FtNj3I3TB2LUhpDuzQ23MQW49npiQjUJVzGmw==
X-Google-Smtp-Source: ABhQp+Q1cyXDf9Z/iUZRYonrobJLyeXb2vtwq5q2uHLjYbt/WolJB4GO5lxLbdiPGc2B8GPPZiI92sgiPaI0gh8XCc0=
X-Received: by 10.46.9.197 with SMTP id 188mr3266051ljj.134.1509732852341;
 Fri, 03 Nov 2017 11:14:12 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [2604:a880:0:1010::23:4001]
In-Reply-To: <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
References: <20171102212916.GC23769@256bit.org> <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
Message-ID: <CADyTPEwtFD=d_JB4n0s+9G867D_tNmSQOTt_f=EtNeqYp22Eyw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 3 Nov 2017 14:14:11 -0400
From: Nick Bowler <nbowler@draconx.ca>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On 2017-11-03, Scott Court <z5t1@z5t1.com> wrote:
> I have refined the vimrc changes that I originally posted (with the help
> of Christian) and have found appending the following to your vimrc be a
> decent way to mitigate against all known forms of this attack until a
> proper patch is released:
>
> " Move the swap file location to protect against CVE-2017-1000382
> " More information at
> http://security.cucumberlinux.com/security/details.php?id=120
> " A big thanks goes to Christian Brabandt (cb@256bit.org)
> " for helping with this fix.
> if ! isdirectory("~/.vim/swap/")
>         silent !install -d -m 700 ~/.vim/swap/ 2>&1 > /dev/null
> endif
> set directory=~/.vim/swap//
>
> The only drawback to this approach is that it eliminates the warning
> when multiple users attempt to edit the same file at the same time;
> however, this seems preferable to the alternative of being vulnerable.

This is not the "only drawback".  Among other things, such configuration
fails very badly when network mounts are involved.

 - If the swap directory is shared between multiple hosts (e.g., $HOME
   is NFS-mounted), then you will get false positives when editing files
   that happen to share a filename on different hosts.

 - If the file being edited is shared between multiple hosts, then you
   will get false negatives when trying to edit that file from different
   hosts.

Or a combination of the two scenarios.  In the default mode, network
mounts basically work as expected because the swapfile location is
shared the same way.

Cheers,
  Nick
