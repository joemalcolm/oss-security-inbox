X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Tuesday" "7" "April" "2015" "18:58:40" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUCyBQabw9Z7RiP7nLfzzJy0zF-5qKUXyzEFHTPUVRab+g@mail.gmail.com>" "44" "Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!" nil nil nil "4" "2015040801:58:40" "[oss-security] Hanno Boeck found Heartbleed using afl + ASan!" (number mark "        lcamtuf@core Apr  7   44/2323  " thread-indent "\"Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!\"\n") "<E1YfeeP-0000uQ-Ef@rmm6prod02.runbox.com>" ("<CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>" "<E1YfeeP-0000uQ-Ef@rmm6prod02.runbox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29824 invoked by uid 550); 8 Apr 2015 01:59:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29800 invoked from network); 8 Apr 2015 01:59:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=OE7zy9mdlLmPFMrpqANpEQ6++X7Xz+reWioP6dHO2zA=;
        b=UC22TOKt0LlWBbbXCtgrEx1iINSaqNeAKC4iY1rRTPALU0VBgbM+ShiKYHlAFLG0pA
         IybGNDjXJjTyxJJ1n2CWCH3cnxpvn/XnXWOjWbeG1va4iCvfnBcVdRBEhjUBC+SjnQth
         ArWbvsmJ3X7687lewuGhfMvnF7Xtw8gVpYQOVaoMQwpjyJP67V6lmOSgqWThZFcHfWuE
         XMiw0qrcecNXdOu0PjMS1TG4Jm6CQLSkPGEKxK5/mpvH2aKS+YvKeSYZ0aOtxhJqi83o
         8aeCl5XtxXsF9haCB7/r66jJv93BUl+TRbel56U7n+ntBqcgjoNAdqIoJKCIfQteCnxk
         4ZlQ==
X-Gm-Message-State: ALoCoQlz4lou14L7ITO6McAJUPzzlA+I3EfetswHbQGbeFjDN9l4xKQCeKGjwKcnE95yVOT7FSAC
X-Received: by 10.70.134.234 with SMTP id pn10mr41743021pdb.144.1428458341034;
 Tue, 07 Apr 2015 18:59:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <E1YfeeP-0000uQ-Ef@rmm6prod02.runbox.com>
References: <CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>
 <E1YfeeP-0000uQ-Ef@rmm6prod02.runbox.com>
Message-ID: <CALx_OUCyBQabw9Z7RiP7nLfzzJy0zF-5qKUXyzEFHTPUVRab+g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 7 Apr 2015 18:58:40 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!
To: oss-security <oss-security@lists.openwall.com>

>> The answer I've always heard from commercial software vendors is that
>> "they had no time to work on open source projects", but that's about
>> as unconvincing as it gets. I bet they would love to be credited for
>> this or any comparably serious find.
>
> Nit: Let me change "commercial" to "proprietary", since there is
> lots of commercially-supported OSS. Those are weird comments you're being told.

I think that cases such as Coverity are more of an exception than a
rule. Yup, they get credit for a steady trickle of issues (mostly
through their self-service offering to developers, rather than any
in-house analysis); but if you consider the size of the commercial and
research "market" for static analysis and symbolic execution tools,
it's not a common practice. Coverity and the singular case of
Heartbleed aside, the mark left by others isn't as easy to find.

The only other example of sustained contributions that I remember was
the Mayhem / ForAllSecure project out of CMU, although it focused
almost exclusively on inconsequential targets and I'm not sure if it
really improved the quality of OSS code in the long haul.

> Codenomicon's approach took some effort (you need to describe the protocol
> and the required postconditions), but their approach unquestionably worked.

Sure. Protocol-specific fuzzers likely take credit for the a
significant majority of serious bugs discovered today (especially in
the browser land), so this does not come as a surprise; the unorthodox
anomaly detection part credited for Heartbleed feels a bit more like a
lucky coincidence, but ASAN or project-specific integral state
consistency checks can definitely provide a more reliable and
reproducible baseline.

Now, one of AFL's main goals is to lessen the need for
protocol-specific fuzzers, since they take an awful lot of time to
build and are bound by the assumptions made by their authors, need to
be maintained to reflect changes to the fuzzed codebase, etc. I think
it generally works OK; Hanno's post provides an interesting anecdote
and explains how to set up similar jobs, so to be clear, I'm not
saying it provides no value. I'm just trying to be mindful of the fact
that I wouldn't give a proprietary tool an easy pass in similar
circumstances, so I don't want to give one to my own tool =)

Cheers,
/mz
