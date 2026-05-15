Received: (qmail 10236 invoked by uid 550); 15 May 2026 05:12:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10212 invoked from network); 15 May 2026 05:12:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778821933; x=1779426733; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vF69Y5v/PGgYCmqLyhA4S5R7Zii1z80Y5UFwssp7pI0=;
        b=sl4JJZMUUwjq4jBwIM6vNGgDNjLxWAa0xSg4Rt72E/xbEsUtaItOVdkg+44nf7JtI0
         RWTfwE9opQgkTHTKxHU1kYgjXe/wPlCAp8dTprCL2NumHTHAnayyIJuaREkEsiEExBH4
         OfE/v2jfYxF7Ks5MFJcTZyfJzDmPsiBphWVjSuptzA4sIy3YpaHLmuF7Mqir2lAVSW0c
         5/GpF+9HpPOeizEyrPVpqO+dScKkg7FmHJXThOJ2ACM5icQYOPaJ7D3TVWAJHcU+M3Cx
         BXZvkXvljiNBGjkVt9P+D5s203oRnhOfVz9ap8v+WMYUQKZ+ISns8o4KwHHAvyOhCMJq
         vAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778821933; x=1779426733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vF69Y5v/PGgYCmqLyhA4S5R7Zii1z80Y5UFwssp7pI0=;
        b=Rzw+onkqCc7jEf61HzmnQItjIbPRemwKpnJ7BGgc3prxScp5nbpAwhuqbGFBSPtC+h
         9n5AMAD1CvKI8Zrsu0JgB9Cu2chFq+17YyeJGq1VWk4J759+NSPhjHIKuL3e/q7CFq6P
         2oDTeibbyXISlV9UAZ+5a52910GJCy1dyjgvY6wKNgpNZqadLK9Sx81WVBGGCpkwjIi2
         4vuASsKPvlHzsN2AFOCQHIp5hWizs4+7OgBoCAIE9BhscAPCGH6ELLlkyp4oW5+iXyn3
         iV2LZygroQ6bmZWqOkHeY6XGFdSp1Mi0qbn/yCXIeKJ3VOM4utQd79nF2EJq5rQ1OIRB
         53WQ==
X-Gm-Message-State: AOJu0YwS2w6r63dA76jDm7FhWs3MfikHqRXP7M3KQJSTPjVbHBpKG4kh
	9y0jGErae0O9UT2N73LChvhYOeXK1vadJEawtV8xJJbRW2Xd64yEq39UCAUQXsb8
X-Gm-Gg: Acq92OGeuaUzI/yyeTSjEphNPa6T5BVBA5C8vpsbiibYkm+TBHDQiMTFNgrZagJCMkx
	8R1TSyQykh6vmwrDYvY/X0pwSiZIjL+g3f4CFKLsEhI1PAQUEocOoLEkekeIHXAx3x9+ZMEQ138
	grvz+K/8Qs7hsboKh9vhGOC61FllKTI94feB6lyYXUKCbl44A8uNctFzr4oYgaeWCtjUY2CgY95
	TjFSr1jj5a6AU8+RMFdOODehOmJDuEDo47tbM6KP6JuXtHx1P4WaE0HRfH6tcm+dXc+t3ZhfICC
	9jkSyYrPtrp1KCbX6YnUT9MZ9bkNZa9C3gHggxfgOlsn2dUo1ipDmpWyG/2tKlyC99866CULH2Y
	fn3csZA3h68EiBsZRXmcG2ZYRjzp7zN0cs47tSJKz4WrvUDFz5VDk12/dRWj+FN2/oJwlss7zy6
	WIBo8xuWR1ljmoag9Kg6EGl1rWCq4Gd+6JSVxJY4QuZdl9yxOw1hm1DarFqmQ=
X-Received: by 2002:a05:600c:8597:b0:48f:d5d7:df89 with SMTP id 5b1f17b1804b1-48fe630a2b6mr18617915e9.25.1778821932917;
        Thu, 14 May 2026 22:12:12 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 15 May 2026 07:12:08 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <agarKP9wHQMGuV_D@eldamar.lan>
References: <20260515022033.GA10889@localhost.localdomain>
 <87cxyxe76j.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cxyxe76j.fsf@gentoo.org>
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

Hi

On Fri, May 15, 2026 at 03:29:56AM +0100, Sam James wrote:
> Qualys Security Advisory <qsa@qualys.com> writes:
> 
> > Hi all,
> >
> > Today a vulnerability that we reported to security@kernel was fixed:
> >
> >   https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02c92a9dc67087a3a
> >
> > [...]
> >
> > Today we also contacted the linux-distros@openwall, but since exploits
> > are already public we were told to send this to oss-security@openwall
> > instead, hence this post. We are not publishing our advisory yet, to
> > give distributions and users a chance to patch.
> 
> Thank you. I'm sorry you've had your moment somewhat spoiled.
> 
> I include some notes for readers.
> 
> --
> 
> Please note that despite the commit title and contents, it is not
> exclusive to ptrace, and ptrace restriction mechanisms will not help
> here.
> 
> As for mitigations: I don't think there are any real ones.
> 
> Some ideas:
> * Block pidfd_getfd. I don't think it's actually used that heavily and
>   there's often fallbacks for older kernels when it is.
> 
> * You could remove the world-executable bit from ssh-keysign
>   but this is *not* the only binary affected, and this is a very weak
>   mitigation indeed __only for the PoC__.
> 
> The patch from Linus applies cleanly down to 6.6 or so. For 6.1 (IIRC),
> there was a trivial conflict (attached for convenience).
> 
> For 5.10, a prerequisite commit is handy:
> 5bc78502322a5e4eef3f1b2a2813751dc6434143, then apply the 6.1 version.

I'm not 100% certian, but setting restrictive kernel.yama.ptrace_scope
might as well serve as temporary workaround. Can you confirm?

Regards,
Salvatore
