X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1604" "Tuesday" "7" "April" "2015" "13:27:40" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>" "35" "Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!" nil nil nil "4" "2015040720:27:40" "[oss-security] Hanno Boeck found Heartbleed using afl + ASan!" (number mark "        lcamtuf@core Apr  7   35/1604  " thread-indent "\"Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!\"\n") "<E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>" ("<E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19789 invoked by uid 550); 7 Apr 2015 20:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19765 invoked from network); 7 Apr 2015 20:28:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=RhihC01QC1Cm3pkpzW44x+DxfOJxg1d35pVPjhVAgiQ=;
        b=fn7JpLPl35E1L4B99z9LWnKgORl+QyaSdFpDabRB98ACxSCLRGvpYIY2z/KDGYwKS2
         cXTdSkrwdCI5Fa9D/iGy7/fuWCBcdQSNIEJR2QfVQ1r8hlas7rcMiwBs9h55sb/STSNG
         ib1JSMw1HxmZHIDjkiXHR3cZOfGKFBRGenlqKs4LULUDWSPi212m+dgxrZNPaJTaD9Vd
         w8+5m0vnogj8f/7LNqEXiNoHBwuRYgJTcghO6YHhIezKfhnQc5ENYpCxttj+D+qXEhOT
         hx95aDA3XycjoP1OPNvNscibSHk210PsOxcch6nSbU9C6r9sj37T7ncWbD5ezRYdGFnJ
         byDQ==
X-Gm-Message-State: ALoCoQnIXShFHkI42xVIl593NWFWY+xwQ2PZkxyptadUOjviNNEZR2q57gzv4cpIBZSM+8RVov3x
X-Received: by 10.68.176.3 with SMTP id ce3mr39560122pbc.122.1428438480959;
 Tue, 07 Apr 2015 13:28:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>
References: <E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>
Message-ID: <CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 7 Apr 2015 13:27:40 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!
To: oss-security <oss-security@lists.openwall.com>

You know... on some level, I'm happy - but on another, I'm always
trying to be skeptical when such claims are made for other projects.
It's only fair not to treat this case differently.

It's worth remembering that the authors of several static analysis or
symbolic execution frameworks have also claimed that their products
would have found Heartbleed. IIRC, their experiments were far more
convoluted than Hanno's, but the bottom line is that when you're
trying to "discover" a bug you already know about, it's almost
impossible to avoid subconsciously optimizing for the expected
outcome.

So, I always urge people to ask a simple question: would someone think
of running the tool this particular way and on this particular code
before we knew about the bug? And if yes, why haven't they?=)

The answer I've always heard from commercial software vendors is that
"they had no time to work on open source projects", but that's about
as unconvincing as it gets. I bet they would love to be credited for
this or any comparably serious find. Today, I'm asking myself the same
question about AFL. Was it too counterintuitive to set this up? Were
there other barriers to entry? Can I fix this now?

Cheers,
/mz

On Tue, Apr 7, 2015 at 1:00 PM, David A. Wheeler <dwheeler@dwheeler.com> wrote:
> FYI:
> Hanno Boeck found Heartbleed using american fuzzy lop combined with Address Sanitizer (ASan):
> https://blog.hboeck.de/archives/868-How-Heartbleed-couldve-been-found.html
>
> I've posted a few additional comments here:
> http://www.dwheeler.com/blog/2015/04/07/#heartbleed-afl-asan
>
> --- David A. Wheeler
