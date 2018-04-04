X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2492" "Wednesday" "4" "April" "2018" "15:17:11" "-0700" "Kees Cook" "keescook@chromium.org" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" "65" "[oss-security] Re: Linux Kernel Defence Map" "^Cc:" nil nil "4" "2018040422:17:11" "[oss-security] Re: Linux Kernel Defence Map" (number mark "        keescook@chr Apr  4   65/2492  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21936 invoked by uid 550); 4 Apr 2018 23:50:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22303 invoked from network); 4 Apr 2018 22:17:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Efx/UjOtmRzJnUMs8XzodbjkPACFD3h4SN0S0C1NcVg=;
        b=mGlQDDoadbUDuBwo3ED0AyYK9P+UIOqX+399oeUOLbTDFafn9JXheAHMFtDoJk8cI4
         P95Uk6kWN5xk85+ge+bEnpBC55ebZgNHmpQnpvIdHuIy7K51Nl4jpW9wl2cKVgg4zOtX
         MT8i/1Naw2BsZyOwnHLa9bzxOWGQ5PzjHPmGbjjx4YTxJXuM6I/jV9JA+DTF8WCWneK6
         DL849FdgXzkcS3ej1OBIJqj6Ej3UreVG2/QWgtYGI6zewHOIuETTVK8f0pfvhNIj1k19
         NlTECc8f00m//45jRnZxb2sqJB9AF4Q78EOMI2XWUc8vBV6Kx/mB59DzfdF+FI0yaOSl
         rM8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Efx/UjOtmRzJnUMs8XzodbjkPACFD3h4SN0S0C1NcVg=;
        b=Tu23YeEJIy/f0xH2U6kHuxdAPBKdcPYwCi+ZTLKm87ubsRbd/zjxPg4SlKaiWS5pB4
         rqpUGBzgFMPn05Uf7GU0G1soyy/dMFnJCmbucER3JNlVYuWUnawJnHi6q/kO/hT24vnO
         Hw9lCFofqSpnF2sxH/v1w/EmpaXnC5w3KnneE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=Efx/UjOtmRzJnUMs8XzodbjkPACFD3h4SN0S0C1NcVg=;
        b=otYPwK49FAbRve8Ou96y8fHpjIewwRyA3vKHNo6vFY4dekOb7Q4oCGyx9N7AiITC82
         KyfMntWqeTxCHv2AW/8g412d4sKCwv40X28tV+byfuL8YewZ5zmB0jxxhHYTSXasoPfF
         dLHPRkPJtzcKBPJJaRhdhRDlgOjzwOhrg/YhtG2PO5KQWFfRlz1fmq3dn9Ns9adj/9Al
         mESpdXI6nLQZKm3EjGDF9KipWuLQ3ucct9vqFgJxm3R7y8EgHxE+ROZudp3nb5rtg9Ki
         Z38FOt4g6sJjPB7Nwu0HdWn//3VQ2qi/fjGLrx+RYZSoUmugzXBYlj6nYOoHrhSQV8zf
         Alcg==
X-Gm-Message-State: ALQs6tBIPu1EAdA0d/4lVnUK+7WNeiWlpKmKKq0VoUnCRGXTHuKaaUJV
	1vkdzOD/sOE5DyU+dxmeQ3swDJcuJ6aGlFBiTwaoEw==
X-Google-Smtp-Source: AIpwx49JZMCLJihG6n3YmCULcyVNrvizv2afU8i9zRvgVfA61dRa3j3ko9NOlQW2rj33Hd383En61pErJYc7vbVuNLY=
X-Received: by 10.31.192.146 with SMTP id q140mr11776403vkf.7.1522880232439;
 Wed, 04 Apr 2018 15:17:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
X-Google-Sender-Auth: GSbbRRYnNMxbI4Jj5tzdsvTzY_0
Message-ID: <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Brad Spengler <spender@grsecurity.net>, 
	PaX Team <pageexec@freemail.hu>
Date: Wed, 4 Apr 2018 15:17:11 -0700
From: Kees Cook <keescook@chromium.org>
Reply-To: oss-security@lists.openwall.com
Sender: keescook@google.com
Subject: [oss-security] Re: Linux Kernel Defence Map
To: Alexander Popov <alex.popov@linux.com>

On Wed, Apr 4, 2018 at 9:15 AM, Alexander Popov <alex.popov@linux.com> wrote:
> Linux kernel security is a very complex area. It would be nice to have some
> graphical representation of its current state. So I've created a Linux Kernel
> Defence Map showing the relations between:
>  - vulnerability classes / exploitation techniques,
>  - kernel defences,
>  - bug detection means.
>
> Link:
>    https://github.com/a13xp0p0v/linux-kernel-defence-map
>
> N.B. The node connections don't mean "full mitigation". These connections
> represent some kind of relation. So ideally, this map should help to navigate in
> documentation and Linux kernel sources.
>
> I wrote it in DOT language and generated the picture using GraphViz. So it is
> very pleasant to maintain this map with git.
>
> I would be grateful for any feedback.

This is cool; thanks for starting it! There are many nuances, details,
and caveats for a lot of the defense details, but I do like showing
the general relationships. Having some much longer accompanying text
would be nice to dive more deeply into each bubble in the chart. I'd
like to capture as much of that as possible in upstream's
Documentation/security/self-protection.rst! :)

Some initial thoughts in looking at the chart:


Upstream's SLAB_FREELIST_HARDENED is based on an "unnamed" (always-on)
grsecurity defense (see commit 2482ddec670f), so that should have a
dashed line, but I'm not sure how to name the new bubble.

KPTI defends against info leaks and "finding kernel objects" too, in a
way. Maybe just add a whole "side channels" bubble?

(I think "info leaks" and "finding kernel objects" may need some kind
of clarifying language for how they're different)

I didn't immediately parse that "Pointer Obfuscation" meant the %p
hashing, but I don't have a good suggestion about how to improve that
language. :)

Upstream's /proc/sys/net/core/bpf_jit_harden (see commit 4f3446bb809f)
and other JIT features (RO-setting, randomized offset, etc) are
designed to defend against JIT Abuse.

UDEREF and SMAP pointing at ret2usr+ROP is fine, but seems
"incomplete". Is there a good name for "reading user memory and
operating on a malicious structure"? It's a more narrow exploit
technique than ROP or executing userspace memory, but it's important
to cover.

I'd expect UDEREF to point at ret2usr, too.

Maybe add CPU_SW_DOMAIN_PAN and ARM64_SW_TTBR0_PAN to point at both
ret2usr and the new "access userspace" bubble?


-Kees

-- 
Kees Cook
Pixel Security
