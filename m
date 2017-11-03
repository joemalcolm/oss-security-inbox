X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1086" "Friday" "3" "November" "2017" "18:11:12" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1509747072.787.15.camel@gmail.com>" "30" "Re: [oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)" "^Date:" nil nil "11" "2017110322:11:12" "[oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)" (number mark "        danielmicay@ Nov  3   30/1086  " thread-indent "\"Re: [oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)\"\n") "<20171103212659.378593da@pc1>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>" "<20171103212659.378593da@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3636 invoked by uid 550); 3 Nov 2017 22:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3610 invoked from network); 3 Nov 2017 22:11:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fc7xiUiXqyKL9MLsu5mCGKA0cWJDha55UYhxM2qklzg=;
        b=C5H2GV7ZlKpOI5who8meiPoFdQhhAd+JA78GYBnzgFqYiXLnDR74fzbTvQkHHfjTZ/
         tDxpOCNdrJSEKwIeVx18LPFGcy/Iu3rmuh3IvK0rC58Th0xqC7Gglmunfp5aOu2B2J/m
         LZiu0ZgXjvCyEQIZJuY39mTmeYgYVQpDJoxQ4HCYWr9Z40tjvNyAApZSf00mWgL5/E2M
         kJA9TT7PaOStIWRR0KHicWUDZqbxcdHOVW7XK8syaBOgj8pgH6IFbpi9ZFTDXslG6TN0
         gRQqOGn8FFx5W6aNUKKe/eO8RjiWA1gRMnAoBgoCC98Doh57117WjVaDpI2zQB+q1OM0
         Praw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fc7xiUiXqyKL9MLsu5mCGKA0cWJDha55UYhxM2qklzg=;
        b=lAtk1nKz2kjb1ZoJCkH33svUn16Vn4HKdJYY209dHLM03ME+QcPvoALFW3RdLRlcrD
         fh1LiNCdCuPDP9vzjjHNyB6IucB8BcfvvK9/BDjFRtr0NIZkI/N4JORAPIQjSmL6IcBc
         3b0EKM7C4GEjvNZJVTDiqzmGnbStBNgocazupti/uvvHpwuSGe9gDoarBGxx0V4cAdPm
         lzmIFWLQ4P99Kk/Q+VaufLhSdLY68cX7Bm4MtAI54MNaP/GFI0ghFYAMf5v+De2+fpI4
         w7cMKEqvRAZ8TMCjS+/lrYqtsflT42SCWDjTSRSqXUsizok3XTEisepQC1TkEg+3c+CY
         hjuA==
X-Gm-Message-State: AJaThX4Jnx0CYzgVIXWbbP/buN5sxhx3F/8gqZQwiM729zyEzZfodmgS
	HYmM4xB9zTfajggwJSiA2FdQD7zO
X-Google-Smtp-Source: ABhQp+TqZoueFtrbcBEuFOX+mRlVBHWx9+uMJJKzeyi4OIS1xsNAd++auQ4FIjD4Pjyrfiuh+cHU6w==
X-Received: by 10.107.7.156 with SMTP id g28mr10880931ioi.38.1509747074144;
        Fri, 03 Nov 2017 15:11:14 -0700 (PDT)
Message-ID: <1509747072.787.15.camel@gmail.com>
In-Reply-To: <20171103212659.378593da@pc1>
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
	 <20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
	 <20171103212659.378593da@pc1>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Date: Fri, 03 Nov 2017 18:11:12 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] nvi crash recovery (was Re: [oss-security] Re:
 Security risk of server side text editing in general and vim.tiny
 specifically)
To: oss-security@lists.openwall.com

On Fri, 2017-11-03 at 21:26 +0100, Hanno Böck wrote:
> On Fri, 3 Nov 2017 11:12:43 -0700
> Ian Zimmerman <itz@very.loosely.org> wrote:
> 
> > How much of this (and the parallel thread of course) applies to nvi?
> 
> This is actually interesting:
> nvi saves recovery files to /var/tmp/vi.recover and creates them with
> 600 permissions.
> So all the problems discussed don't really apply here.
> However the dir itself gets created by the first user using nvi. Not
> sure if that causes any other problems (permissions are rwx for all
> and
> sticky bit).

It's strange it's using /var/tmp instead of ~/.cache but at least it can
be protected with PAM's per-user isolated directory support rather than
relying on it being done securely.

In /etc/security/namespace.conf, for per-user isolated /tmp and /var/tmp:

    /tmp     /tmp-inst/     level
    /var/tmp /var/tmp-inst/ level

In /etc/pam.d/system-auth:

    session   required  pam_namespace.so

Likely also want to mount /tmp-inst as tmpfs (mode=000) if /tmp was
tmpfs rather than just using the root directory pam will create.
