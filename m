X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1871" "Wednesday" "11" "August" "2021" "10:06:18" "+0100" "Matthew Wild" "mwild1@gmail.com" nil "42" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        mwild1@gmail Aug 11   42/1871  " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26349 invoked by uid 550); 11 Aug 2021 11:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32594 invoked from network); 11 Aug 2021 09:06:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4BYcNULVS6Y9/MGc6w4WUdhcda7RYdIj7sF8azGob1w=;
        b=n7dVNfwbY7WxxzGBzDauGXCe7D5RuUFwgdRvqPvX7EqWilo9eChvU1Ksah8Mhm8mNi
         ZNxbB8Mav/lKav5GiUAftC+R1SwT20zDWyQDoYT52d7ZsipYk+/oZ7m03YhjDjleBNWN
         CoA08iozrp+u1FhRXJ9UnBlem82eDzujtq6GiCikuy9HKoSkWWsC+g+LFV7PwQRX+g3W
         wnBXK3c2N7hdv8EFkbXkm+xTIk9Pn1xc+YeK53OBLB0EueTRUSRAxQZsQ0ogg6Cb5riw
         kfOX9NAVGO9/ade9lJu/jkSun6SgNGGL2NFfOtEDNupATI6IEodus6iWa+PaDuuAMZMD
         tlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4BYcNULVS6Y9/MGc6w4WUdhcda7RYdIj7sF8azGob1w=;
        b=HtZB3sgmAYymy0PGo2FKy18pWrVGNAfWWf9eKGE9z/MrCsO4d9vmWqkIOe3VoPYLVp
         /beYG3480Axw1AvxCfDGz7J/YYmekpkBy9i7HqMgnNqNwEGr84ghWee91gFN6bWL+JHj
         hAUzpf5+L6e89W1EZDblAEiblSxNBQxiqMTgQ+xkAd7dJiXSQwE2U8UZpKvlPeFKzDMV
         N/n668PxK+6hvA+d/dP2vn1dX3HVUOIwyS2FesW3nIzNoBpWRLTsoco4go6hlSquwqBo
         fd23mDHoFFBVryFrsct06QgXsS9Rm3ILg7wOi8wIMGC+v9Ywx1HXIc+76zEDSSKGaCq1
         Q1+g==
X-Gm-Message-State: AOAM532saCGobst0fGBspOE1G6dIj9O4HHfi2FGF/Kvjp0WXdrypJvrb
	ThaDZ6ioQzLOActNsFmU6Yz6Kw7cY17ZqVjB2f6Jf8fl7KY=
X-Google-Smtp-Source: ABdhPJwavkPxpWa0YvD5JQOQzMQxPJJ0J5FePaUkyc24hyyZQjl+tEKGU77MaE4po6P/+gG4cvnzmq/xYTAvvCQJt50=
X-Received: by 2002:a37:a8ca:: with SMTP id r193mr30289041qke.191.1628672789646;
 Wed, 11 Aug 2021 02:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210810122113.3fe65cc9@computer> <20210810134156.GF1599104@hal>
 <CAJt9-x5xY3ikisc=RZ1=tqNO+8Tm8YLfjVw=3=UQ2_nAP_7Oiw@mail.gmail.com> <20210811095104.4401b1cb@computer>
In-Reply-To: <20210811095104.4401b1cb@computer>
Message-ID: <CAJt9-x5ATDMgrJM=toFR++V6S_Gv_PSYE5StNFUgMGybaZjGsA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000150fae05c944efa6"
Date: Wed, 11 Aug 2021 10:06:18 +0100
From: Matthew Wild <mwild1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

--000000000000150fae05c944efa6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 11 Aug 2021 at 08:52, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> On Wed, 11 Aug 2021 08:09:57 +0100
> Matthew Wild <mwild1@gmail.com> wrote:
>
> > XMPP has some additional protections against this in its design. It is
> > required, after TLS negotiation, for both parties to discard the
> > pre-TLS XML stream and negotiate a new one after TLS has been
> > established[1].
>
> This is actually not much different from how STARTTLS works in SMTP or
> IMAP. You are basically advised to throw away all state from pre-TLS.
> But yet here we are with > 40 vulnerabilities.
>

The difference with XMPP is that it is a highly structured protocol, so
it's less vulnerable to simple injection compared to line-based protocols.
It is not just advised to throw away pre-TLS state, but a required step of
the TLS upgrade is starting a new XML stream from scratch after TLS
negotiates successfully. When implemented with commonly-used XML parsers,
this means instantiating a new parser instance, and that step will
naturally discard any data that was fed to the pre-TLS parser instance.

I'm not claiming that bugs are impossible, or that they don't exist - only
a dedicated review of implementations would be able to confirm this. But I
stand by my original statement that XMPP has more protection against such
attacks than SMTP, IMAP and many other protocols using STARTTLS.

Regardless, XMPP is gradually moving away from STARTTLS for other reasons.
Recent advances such as ESNI, round-trip reduction, the ability to use
generic TLS middleware (load balancers, etc.) and generally reach through
restrictive network environments are all drivers of this change. I think
this is ultimately a good thing.

Regards,
Matthew

--000000000000150fae05c944efa6--
