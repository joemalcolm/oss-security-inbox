X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Monday" "22" "May" "2017" "12:00:56" "-0500" "Jodie Cunningham" "jodie.cunningham@gmail.com" "<CABfY0L1Xz4QHXCzdO1-DNcdDqFgAXYzGr1woSAKW5j7_0RD8cA@mail.gmail.com>" "21" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Date:" nil nil "5" "2017052217:00:56" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        jodie.cunnin May 22   21/1244  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<20170520175436.GA30962@jasmine>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "<20170520175436.GA30962@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30134 invoked by uid 550); 22 May 2017 17:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30116 invoked from network); 22 May 2017 17:01:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=PD1TlbUHMyCnwDQQ/SqOWdD7GE46z8U793btXD212EA=;
        b=hbDdD3iEdwR4fL9Rb9NHntrD28Pi6aSweUQwulZjpg7QneFo1qiuB4LTuzZckGk3BU
         hFjFo1pxPqcCMG2N/FSw4oP+3lSyGt/zXzkDqNk+JKTFMKMVJdVqHI2uhUXKNiCi2v/r
         i5tjbLvXZzmf2yf2kFouIQdntcPRl42r3kajhDz41strSZK5sCV/PxZr1H5mh3cF4Z5P
         Ue5ekXIDprJCALVm2wptsGNhnMEGF7oul5Exl3swf74WnGik6JN1UpNSr0WhEAro7Pju
         ugfoohgIkMc0bhcujoDOxRVpZtfIl6VqmUDr3+2Neocu0ZOOdR6G6j+VeVixh2rQXicA
         ZOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=PD1TlbUHMyCnwDQQ/SqOWdD7GE46z8U793btXD212EA=;
        b=cyDau3hW1Zd0P0FCcHTIxaO49U+UmYkOzMSDf9IRbhUiUtZS9wTs70TpDfQGHUXccT
         e44RELl9Ln/nxKpUpfMUJ0z+y6NLNlozgDhQuD0oky+7UYobnyuqgcXxOcbUgTz37Oti
         F3panBo/mdhevEQYxHjJRCBZOYPLKZ32n3wz775/73b95UrGByM9+CAngDRVLOxs1cKv
         uoeA+/el0VZ0fstm2knQorvBWDtZnHD6NF9jJYdlKWF7aU3ymIbjuSXuKI2BTKyPBUpZ
         bFMJTypcLEhbz8oW54Fuuomm5HdDYEsD5nqQ26ajOL6DPqj5rJWL8hLlr6hKU8GYFloo
         Q/pg==
X-Gm-Message-State: AODbwcBAOBKWLwvODu2UXBEdynArKVOo/kOm7Lv9DlUvjk4Auoszxf24
	H38iFUrFWrm+D4qLG7fLShMU/F4mscw5
X-Received: by 10.176.74.66 with SMTP id r2mr13065347uae.39.1495472457051;
 Mon, 22 May 2017 10:00:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170520175436.GA30962@jasmine>
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
 <20170520152406.2339.3B884775@matica.foolinux.mooo.com> <20170520175436.GA30962@jasmine>
Message-ID: <CABfY0L1Xz4QHXCzdO1-DNcdDqFgAXYzGr1woSAKW5j7_0RD8cA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 22 May 2017 12:00:56 -0500
From: Jodie Cunningham <jodie.cunningham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of
 uninitialized memory in RLE decoder
To: oss-security@lists.openwall.com

On Sat, May 20, 2017 at 12:54 PM, Leo Famulari <leo@famulari.name> wrote:
>
> Chris Evans' report (copied in the email you replied to) says this:
>
> GraphicsMagick vs. ImageMagick, again. Well, well, look at this :)
> GraphicsMagick fixed this issue in March 2016, for the v1.3.24 release, tucked
> away in a changeset titled "Fix SourceForge bug #371 "out-of-bounds read in
> coders/rle.c:633:39" (see the second memset()). This is another case where tons
> of vulnerabilities are being found and fixed in both GraphicsMagick and
> ImageMagick with little co-ordination. This seems like a waste of effort and a
> risk of 0-day (or is it 1-day?) exposure. It goes both ways: the RLE memory
> corruption I referenced in my previous blog post was only fixed in
> GraphicsMagick in March 2016, having been previously fixed in ImageMagick in
> Dec 2014.

I've worked with the GM team before - it's trivial as a researcher to
keep Bob up to date on what you're coming across in IM.
This problem doesn't stop at IM/GM - there are probably bugs you find
in IM/GM that also trip up other software, and little effort is made
to see the impact in other image software. We could probably benefit
from a curated centralized corpus for this kind of thing.
