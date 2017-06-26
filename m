X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Monday" "26" "June" "2017" "15:16:06" "-0400" "Mansour Moufid" "mansourmoufid@gmail.com" "<CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>" "21" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062619:16:06" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        mansourmoufi Jun 26   21/730   " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<20170625013537.GA21637@grsecurity.net>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" "<20170625013537.GA21637@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31840 invoked by uid 550); 26 Jun 2017 19:38:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26316 invoked from network); 26 Jun 2017 19:16:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bDM28zAteuUZtRBRlm/iWVEx4ogg3YfpF8mVuZ56N/k=;
        b=gQ8T6e9z+9oR+CfpA8JtAVyW3rY4g1f2hQLQ/L5kExt7Bp+QssqsvTnpvT25eMucpv
         UVtaKmRhAgp0H1wEa+42Uhnyb2Y0UOGdCA2p0lAM5CeIAYSASzMr9TSICAV8LyYihJla
         +KmHIerXOouaYQrnwkYEX+ZD50pzpAKHFFucmsCjgAdVfj6xCdGqtO6SCNxJektDfcgz
         lL3z6BqmkDUPGl6lA92maKyaKOrtebpmETmFVPLwgvM9fEnmPBnEOyeY5B40NUbk1lJ5
         O02CVk98g27mNpm9JMD2ClaHQoSCTnOB3LOAzGDfJiiSL0uDQ3jn4KMAjFvVXvgYL4bp
         r5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bDM28zAteuUZtRBRlm/iWVEx4ogg3YfpF8mVuZ56N/k=;
        b=s/fj6GQAL8QDLxNTO58knHdVwNhJVomGjBs+FhS+QK/gDTcXnrsEASHTU2y8twGhZ9
         qRS0Bbzg/bAZ/ush0+2Hpl/ZlA0VMEI6WRRmzGgk0IowtvEbORsLgx34m5CtZ3h9pSr9
         +KUvHcox0KfoeqtwmREEJXREZ3UA7Rb9eHGz4rxNEu6A7+ft+TgJw4foL//Jk+bTiBlH
         OxgT97mNmu04pYYTFQIGfoQ5oviwNX1u2Kb0iIUe7jDFo7fDkKPuYJh1lydwQIgO5Azp
         GHc3EwRfSl5t56lNfP6/JslwSZEWpVlZUm0DMGIpx9I/VNXQvj1DDdyBQUjCcFrZAaH7
         ermw==
X-Gm-Message-State: AKS2vOz0nBj6laRSgQL2KDptYmYxVPQh5noV98FRIrNhpj8e4FeeKsdx
	4fyg52bPxvqrVWbB5ubYubDWIfRbuA==
X-Received: by 10.159.62.220 with SMTP id n28mr1002231uaj.142.1498504586487;
 Mon, 26 Jun 2017 12:16:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170625013537.GA21637@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net> <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <20170624151504.GA25902@grsecurity.net> <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
 <20170625013537.GA21637@grsecurity.net>
Message-ID: <CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Pax Team <pageexec@freemail.hu>
Date: Mon, 26 Jun 2017 15:16:06 -0400
From: Mansour Moufid <mansourmoufid@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
To: oss-security@lists.openwall.com

Hello.

On Sat, Jun 24, 2017 at 9:35 PM, Brad Spengler <spender@grsecurity.net> wrote:

> How could they know that calling people clowns and their work garbage wasn't
> payment enough?
>
> With no technical content coming from your end, there's no need to discuss
> anything further -- don't waste your time because I won't reply.
>
> Good luck to you and anyone else stupid enough to do any work at all for
> you and your multi-billion dollar sponsors for free.
>
> -Brad

Is there another mailing list for discussions of Linux security? Or forum?

I have been thinking of sharing a few patches for the last couple months.
I don't think this is the right place after the kind of insults I saw this week.

Apologies if off topic.
