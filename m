X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["474" "Wednesday" "22" "November" "2017" "08:34:23" "-0800" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>" "12" "Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" nil nil nil "11" "2017112216:34:23" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" (number mark "U       lcamtuf@core Nov 22   12/474   " thread-indent "\"Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)\"\n") "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>" ("<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>" "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13444 invoked by uid 550); 22 Nov 2017 16:55:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13940 invoked from network); 22 Nov 2017 16:34:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=itcFjameUS1sbtDW2lUcabFGB0ULExfDzj2JecyX3n0=;
        b=o9vwSc8N287DJP2fDfJUWmcafR1kvm+EHpF7IV7RrC+k39WEfawqXuyXooW06vWAV7
         w4dPfhcA+StEanKErhvsdGXA89CSWQqbYSq+iNsuAVyRJjWMBKMz744Drn161S12k+TM
         Xtjr6FVsR83zOacTM9+lt7L8lRe3yqf3aoV09RyFPjy3NeIZyqQRwZtDQ+CEyWAlN7AS
         ts3XcOPdVvqsdU7J2JV9iw7caMwgz9B19eAUyAlt5eY0TVBzaKQ6rLtG/X+V7qyQa2fw
         qplllIE2YQa7vgdc5mJFiy1+puIbLQ8puAJvLF2/onpGbfIvXpY7WK/SI01dHYN6/7vs
         8J7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=itcFjameUS1sbtDW2lUcabFGB0ULExfDzj2JecyX3n0=;
        b=IVH2TL9XKEW4auBzIspIKBHXfy7UyBk8oRPNodd5OCd+HhP/ZEB7YqZ4ZIQ+HLHoU9
         gd7a8iRXyuZDYxLq93posc7Lvcy9zvoV9+N2sWdUampR3WVndimJ4SAxwWu33zKBwCqK
         cW7fUvOXxW5+T+tjC2o5BXxenKT5xBVC8UcsufQ/XyMYQpRCSiRcUzVeSlHEewR5LtVk
         xpN12GI7KFKQuJHp1ka/AH2bCop0HuLCBFAY7qLleNtpWU/PwObpKW9HGQLhlBdttT5L
         IRmCke7Xg91JySRj4LYbxOaeJ56ja8i9hOLM+sVTwCcrKkJpMAH+LLSW8IP/6sko7g0r
         pbVg==
X-Gm-Message-State: AJaThX7Sykj2Ve/IF+JhsD2vbjRTfMjKb9EE4vsYvAifdN4jTWeCikP/
	/N2WOpvwsmeB2y0Reorm0jPf0mMzEue6uUa6Ru9ogWNo
X-Google-Smtp-Source: AGs4zMZjeFKaEIU9m+hyd9zaKzTk/aXidYd266Rgi8VnCby6H9U/0vRAL5SBWQyzCTA5PSxHAC917N58bb5TWFkOnwk=
X-Received: by 10.80.243.136 with SMTP id g8mr30543031edm.42.1511368483604;
 Wed, 22 Nov 2017 08:34:43 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
References: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
 <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
From: Michal Zalewski <lcamtuf@coredump.cx>
Date: Wed, 22 Nov 2017 08:34:23 -0800
Message-ID: <CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Go programming language invalid modular
 exponentiation result (Exp() in math/big pkg)

> Is this fuzzer freely available?  I'd love to try it out on the bignum
> support I added to the CHICKEN Scheme implementation for its upcoming
> new major release (probably somewhere mid-2018).  Being able to release
> it with a bit higher confidence in its correctness would be nice, as this
> is almost all brand new code.

Not the same tool, but Hanno released a bignum fuzzer that found quite
a few issues back in the day:

https://github.com/hannob/bignum-fuzz/

/mz
