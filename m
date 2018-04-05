X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2304" "Thursday" "5" "April" "2018" "12:20:24" "-0700" "Kees Cook" "keescook@chromium.org" "<CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>" "62" "[oss-security] Re: Linux Kernel Defence Map" "^Cc:" nil nil "4" "2018040519:20:24" "[oss-security] Re: Linux Kernel Defence Map" (number mark "U       keescook@chr Apr  5   62/2304  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14098 invoked by uid 550); 5 Apr 2018 19:22:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11434 invoked from network); 5 Apr 2018 19:20:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=2YT8hr+LWO6xB1TKqwhGLoGk/ohEeJDYVQGqZa+FsS8=;
        b=D1izhiqKOMdwyPTrLZJ28+pBlPfdiKYbyyzTmuB4+On3ayrDc+Wc21EdWUhmoYTVR0
         jwZbUHVvrZdgt3/yjCAd5HE6AuoeyVpOYRPNuV0nVwsdzn+z9QfTpxrKtTY2eVfqBfqr
         ABq1B5fP/WdUE0xax3Q6x9Sj4WiTEE3HwpoxDV1fyqX19LlkNEyrVQDvM5Dn2VKCrCwX
         EG5iOhgkgkoDg1xL8aIq4JsiE4Wq6P755Ec4hZiOx8Vo2FlkBgSO4qj73Y2p1ed2BYM+
         epBJWichP2JR72qOQnvpBM3uix0t7T/qWIX/1N/NJKAHYSobS4WFJqwCwRC6fKD68tyY
         Tjmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=2YT8hr+LWO6xB1TKqwhGLoGk/ohEeJDYVQGqZa+FsS8=;
        b=TUSlnqM30dSa8vfwldd57dn2L/O8YEszjmaBbFi3YzuCbqp92IwzcNZESJXE+bu+as
         xSKWv0yubDASJr8T8xh5iEQJmhhgLmz05c/8GQgj5JPZ82Ozv2ibGyopchnZn1R4QRUJ
         QEv60FT+WVluLpBcgMQT9y2wVKJ6Slr61JdY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=2YT8hr+LWO6xB1TKqwhGLoGk/ohEeJDYVQGqZa+FsS8=;
        b=heRMcgkx5VEIYVbpEpD3VNLPOXAdtQL2YZX5tVES7cJh6xKXbO2CY/qyYybEvDE2+a
         zdHLc/Tw2vkUR/3mfxHWp4BdUhqmMXaD/pT7z86VbmAH6EXczMp/djKWv+mRSb+RMptJ
         T59UuCe/Udotz6Pd8lURHTTPtZ+ocEvl6iaVM/RGhUGGf6cB2JbU1HigiTWETng/T8C8
         0R7DC99LvB8t3AtsXxSBhGYnpHiZVuFNgGcfF9lW7jWOfC2pelskVosqrgMUyYC+bJIW
         MPh8urTv/FrkF+mbJbSTT5MUWiVra40fGqkUb/bktASKewF+GffjxdtN44rCq4paatIv
         2K/Q==
X-Gm-Message-State: ALQs6tCQhBiAy6DpPl5LhfoHNVDqY8GN/poFjWUoVfUZVKsDy/IoVZxL
	Fk1O4kICtf9wCdDR9Fzjwlv/fw9fmuifddaQBBQgPw==
X-Google-Smtp-Source: AIpwx4/WZPL5Ptc2g1s8HFOVYfevio2wiHAvYO8BI2hCjomUK4B87mJGeUWFrTXjMZai5KrQf8D09j8M/Ja7dsXlLG4=
X-Received: by 10.176.35.198 with SMTP id c6mr3833486uan.83.1522956025715;
 Thu, 05 Apr 2018 12:20:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
 <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com> <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>
X-Google-Sender-Auth: DvdQytHIF-5WoeMEO2wnzATooqM
Message-ID: <CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, 
	Brad Spengler <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>, 
	"Reshetova, Elena" <elena.reshetova@intel.com>
Date: Thu, 5 Apr 2018 12:20:24 -0700
From: Kees Cook <keescook@chromium.org>
Reply-To: oss-security@lists.openwall.com
Sender: keescook@google.com
Subject: [oss-security] Re: Linux Kernel Defence Map
To: Alexander Popov <alex.popov@linux.com>

On Thu, Apr 5, 2018 at 5:32 AM, Alexander Popov <alex.popov@linux.com> wrote:
> On 05.04.2018 01:17, Kees Cook wrote:
>> (I think "info leaks" and "finding kernel objects" may need some kind
>> of clarifying language for how they're different)
>
> Info Exposure is a vulnerability (red node). STACKLEAK, PAGE_POISONING, etc
> mitigate this kind of bugs.
>
> Finding Kernel Objects is an exploitation technique (orange node). KASLR,
> RANDSTRUCT are statistical defences which make it harder for an adversary.
>
> Kees, Kurt, does it sound reasonable?

Yeah, that makes sense.

>> Upstream's /proc/sys/net/core/bpf_jit_harden (see commit 4f3446bb809f)
>
> Thanks, added.
>
>> and other JIT features (RO-setting, randomized offset, etc) are
>> designed to defend against JIT Abuse.
>
> Didn't manage to find config for them. Are they always enabled?

Yes. Per-arch inplementations of bpf_int_jit_compile() make calls to
bpf_jit_binary_alloc() which does the randomized page offset with trap
instructions, and calls bpf_jit_binary_lock_ro() to make the memory
read-only at the end.

>> UDEREF and SMAP pointing at ret2usr+ROP is fine, but seems
>> "incomplete". Is there a good name for "reading user memory and
>> operating on a malicious structure"? It's a more narrow exploit
>> technique than ROP or executing userspace memory, but it's important
>> to cover.
>
> Yes, agree. That's what I did exploiting CVE-2017-2636: allocating struct
> skb_shared_info in the userspace memory with the destructor callback pointing to
> native_write_cr4() to disable SMEP. Is it what you mean?

Yup. Function pointers are the traditional target.

> I've added "ret2usr + type confusion". Do you like it?
>
> Kurt, that is CWE-843: Access of Resource Using Incompatible Type ('Type
> Confusion').

"type confusion" seems weird to me, but I haven't spent a lot of time
weighing the options of the naming of these things. "Overwriting a
function pointer" is the method, and the bug is "unexpectedly
accessing userspace memory from the kernel" (which is usually
"something overwrite a pointer").

> Kees, thanks again for such a cool feedback. The map is updated.

Very cool! Maybe also add an out-of-tree bubble for "Clang CFI", which
gives forward-edge protection for code-reuse...

-Kees

-- 
Kees Cook
Pixel Security
