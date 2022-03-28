X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["968" "Monday" "28" "March" "2022" "06:29:46" "-0700" "Tavis Ormandy" "taviso@gmail.com" nil "36" "Re: [oss-security] Re: zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        taviso@gmail Mar 28   36/968   " thread-indent "\"Re: [oss-security] Re: zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3198 invoked by uid 550); 28 Mar 2022 13:30:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3160 invoked from network); 28 Mar 2022 13:30:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=K7d03ffeOC2h0oFoqGaP7FSi1eyo0TTi6f7FqKUnohw=;
        b=PJfzfnPEuZ8x8A7nEZS7amdY2oc2+F5BCX1qXjEh06uND6ofDhrDMsaLHrVlmAstQl
         0pTypvaZcecEjHlsdU2opbDH3W3pA7zP2cVwQgmpF07N7yIiFhYdpUVdYPduPiE3P+aQ
         VIE2mL3ZqUV2oZf4NJTIQ1VV2f/6s1j3Gd18LhBkz3f982oHlPxYXIOVNsvJMaATwk5F
         vPnTPPK/Cw7+8cR/5BSTXJ3wjhxXT/Q2uNlSb9rt71OtjD9VzgNW+fHeV2Ccc3t/ls1V
         6A2SLOWEg/3QycLqAxWjpr2F31U8cUvkq0znS0kkhGcOtHd0HrYJNujpW0CAmIvV1dSk
         qRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=K7d03ffeOC2h0oFoqGaP7FSi1eyo0TTi6f7FqKUnohw=;
        b=x1r6BewqgcnBM5RqALhjB1SQ93EConY9vtNc+IHAHBQLcCPLGJZt9e7toYgpV5hgAP
         F8SpoFg64xhTcwpg1Yoh2IWNU+l7+oF69LZltJ9A3UulNbegquhO3vAu51CGhLsaq0h7
         1HEtPskgtWQhl473izhvIHhhjOLM4lVTIjX7SvZ1IdRCzK/XwFHgJuJ9JYgO/7VPGbEo
         8kYHYHK05Ocw8sA/9+Yz8X1UuAPIrIYUtqXjdey6l6D2llT3+hN9k05AfNNrNAfYKHlc
         fmzAe8w5DteS8rph+OBAx2d525hP1qmlUxTCkuLvbBQ26Z6fI0NfRXCtA6AG5PyTvlul
         jycw==
X-Gm-Message-State: AOAM532xxgV4xlbMjvJj5suqJ8qwPjzABLw2nkOeMMkcJHDewiPfbwoP
	P/9LkveUkRIovf1LQeuHtjcw832/Aik=
X-Google-Smtp-Source: ABdhPJwd2PHdEOtY6/XwrEUeFBvVvpoAmiQR7ICWMCV22sQyOpptjJoU2TtGg+UymgvYaWBaAsjBSA==
X-Received: by 2002:a17:902:f54f:b0:154:5686:7616 with SMTP id h15-20020a170902f54f00b0015456867616mr25457584plf.125.1648474187997;
        Mon, 28 Mar 2022 06:29:47 -0700 (PDT)
Message-ID: <20220328132946.GA23286@thinkstation.cmpxchg8b.net>
References: <Yj/HK64AGxncpsFp@sol.localdomain>
 <FC8967CA-B0AE-4315-92C8-16CB941FDF1B@gmail.com>
 <YkC+PSwvLcRzOvgR@sol.localdomain>
 <YkED39EzRCU99yOO@sol.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YkED39EzRCU99yOO@sol.localdomain>
User-Agent: Mutt/1.13.2 (2019-12-18)
Date: Mon, 28 Mar 2022 06:29:46 -0700
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: zlib memory corruption on deflate (i.e.
 compress)
To: oss-security@lists.openwall.com

On Sun, Mar 27, 2022 at 05:39:59PM -0700, Eric Biggers wrote:
> 
> I've attached a full reproducer that works with the following parameters:
> 
> 	level=7 (also 8 and 9)
> 	windowBits=15
> 	memLevel=1
> 	strategy=Z_DEFAULT_STRATEGY
> 
> i.e.,
> 
>     deflateInit2(&strm, 7, Z_DEFLATED, 15, 1, Z_DEFAULT_STRATEGY);
> 
> With ASAN, it generates a warning like Tavis's reproducer with Z_FIXED did.
> 

Wow, thanks for your analysis Eric.

Confirmed here, and the output deflated stream is also garbage... ouch,
this is really not good...

It seems likely that an attacker can force this state, even if they
don't control the prefix (e.g. a logfile), or perhaps (theoretically)
force a deflated HTTP response to contain output that wasn't sent, etc,
etc.

Let's hope cleaning up old static copies of zlib isn't going to be a
mess for years to come :(

Tavis.


-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso
