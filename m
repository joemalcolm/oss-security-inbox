X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1931" "Wednesday" "21" "June" "2017" "12:44:32" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1498063472.27465.6.camel@gmail.com>" "36" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062116:44:32" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        danielmicay@ Jun 21   36/1931  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621135727.GA12852@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31852 invoked by uid 550); 21 Jun 2017 16:44:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31834 invoked from network); 21 Jun 2017 16:44:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xNE/kXMQ2eQbvK6G4ave5+eehcGDTy7tZKy7/1ErwFc=;
        b=aM4idAj6akfZ9jDPW7iCixGvkGVqKkwRTMkEYO5xTO6tediRgYuoEA7+/zkS0KbUWB
         l6xshKFSSZx6JtZYm9NGrnJWvLYwljxXrlGgWUeXWkjtuKczB2v96RihbiVkqPvO5nBx
         ZATrQuH1mop4ZXDY7HqovZ51UkhEl5Egbpx3eYaMEsIbtabsXYqm1u0M6RQ6r6j43VrZ
         yq9u8k8XEbGwXUe3a1vFoWBfuA9PoM/pUa5/8mTCVaFyAJnRM6gOuX/md+d+J1A9gbnU
         qYDM9SogqU/02kfeW+saoDSmLLerj34ESbPJBTx6do5Brnn7YQhAME+Vg1Wfh8xkyHEL
         M74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xNE/kXMQ2eQbvK6G4ave5+eehcGDTy7tZKy7/1ErwFc=;
        b=da225BH/basROJcUOjVf7BDPcIGcLd2mlCGnzAu1FsTnUFZF7ITHXLah/HNhLrHQd2
         DKEguhQQSTZQgJ//CuG/641CuFAKGdFZU9ok+u6c+byvyrMul6TBOs34m09wiBxyfa2j
         9VDKixDAz8ceKsCTPqUn1dJxWuF537BCtDuMjTTagJAkjaOciKynHay1i8hDiLgW4I3N
         xT5Y316Z0HRDhjLVEARiM5hLkQ7MFEFRTvfUti7pC6ox39RhEq06iVYwZxJWOtYBOd6o
         Iy1dyhtADdSj0+Vgzpm4Uc56ayYiz34TfK0FJZzBQ2Dp7esTgBn7MEwEGEuvT28OkM98
         Xt8g==
X-Gm-Message-State: AKS2vOy4G/ZDsT2m6a0DIhkb/LiEC2cVZ+iAiTOzvjCAq6fCUyq/LgqS
	SSlwp6TvaCvd/qgXTM0=
X-Received: by 10.107.149.69 with SMTP id x66mr36153015iod.104.1498063474642;
        Wed, 21 Jun 2017 09:44:34 -0700 (PDT)
Message-ID: <1498063472.27465.6.camel@gmail.com>
In-Reply-To: <20170621135727.GA12852@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain>
	 <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net>
	 <20170621135727.GA12852@openwall.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Wed, 21 Jun 2017 12:44:32 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

> Ditto for the "move mmap_area and PIE binaries away from the stack"
> patch series posted to LKML and CC'ed to kernel-hardening on June 2:
> 
> http://www.openwall.com/lists/kernel-hardening/2017/06/02/

That's tied to this, and talking to Riel about it on IRC, since he's
interested in upstreaming these kinds of changes:

https://gist.github.com/thestinger/b43b460cfccfade51b5a2220a0550c35

He submitted an initial set of the changes moving towards being able to
tie the stack mapping entropy to the mmap_rnd_bits sysctl upstream, and
likely increasing the default value to match the current stack entropy
on 32-bit. It wasn't motivated by stack exhaustion bugs. The stack
rlimit calculation bug and ASLR range overlap issue are something that
has been publicly discussed not tied to this context.

RAND_THREADSTACK wasn't in the scope of that effort because CopperheadOS
does ASLR for secondary stacks in userspace where it can randomize lower
bits along with splitting a region for libraries (incl. dlopen) from the
rest of the mmap usage.

I didn't get early disclosure access or a leak of this round of issues.
I wouldn't have done anything in response to it. I already went through
the userspace Android Open Source Project alloca / VLA uses last year
due to the unavailability of -fstack-check in Clang and only found CVE-
2016-3922 (unbounded VLA at a local privilege boundary), a few bugs that
I considered security bugs but that Google did not and a bunch of bugs
that I ruled out as possible security issues. Some of those are now gone
due to rewrites from C and C style C++ to higher level C++ or Java.

It looks like https://reviews.llvm.org/D34386 is finally going to land
for Rust and then it's straightforward to have Clang stop implementing
-fstack-check as a no-op for architectures where that gets ported. It'll
be nice not needing to carry an out-of-tree patch derived from a failed
past attempt to land it.
