X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1661" "Thursday" "5" "April" "2018" "16:55:49" "-0700" "Kees Cook" "keescook@chromium.org" "<CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>" "40" "[oss-security] Re: Linux Kernel Defence Map" nil nil nil "4" "2018040523:55:49" "[oss-security] Re: Linux Kernel Defence Map" (number mark "U       keescook@chr Apr  5   40/1661  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>" "<CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>" "<1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5310 invoked by uid 550); 5 Apr 2018 23:56:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5285 invoked from network); 5 Apr 2018 23:56:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=aDKxZ3C3VDZaENjfK/RbiEe5h5CRU1NauEeHSkUAQho=;
        b=o0Np110WRdWHMxAHboSMm/SKvUKC9NhZFAmA1HDmIGekd3g1HsZlceTZ7g/c3LFBU0
         8xJX/dwPIB2yy7AUGh9Y6QKCKUIXqnjGPr/W4ucJKL6zh2JQEnm96UNxGTsJFNEwRUkx
         40g3N0xLb+9KpU6rzUFHaYX6YodNsnZInDM25Aca6rsKLLC+3wb5lAjiWaTU57VT3nyu
         cTbP/K6i0mOD0SdQcGX49MIdEfM7SH2CDvsSw7GadBSOsavHyu/CZMt67CMi9OHqKawY
         CmFtopEXBd0es5mScY2WLoG1QE5+xM7Q6tAbJWRncoy1yyxD0vsObhRBiB55HVo5Mtc3
         F45g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=aDKxZ3C3VDZaENjfK/RbiEe5h5CRU1NauEeHSkUAQho=;
        b=PJH92dmP5oqDHyOedeqkE7vG0cqPEyVW/pnk2W1MpzRg2mXGZVDV0r+MYWMoDabjuR
         eFhRVz+yHfB7pz6N7yCmtV8nTFXtTSnRedjBxp7ei6PeDLB5oIou1P6G+k/ah2ejiiDZ
         7fQ7TxfmwUUtL1wAYM2LlSePz9JpE0PLvXLz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=aDKxZ3C3VDZaENjfK/RbiEe5h5CRU1NauEeHSkUAQho=;
        b=gQYq1rfLa70YmjPExhwGsHrh6oI3kG0a9bXT3u4qqEE6kNjDC0vMzHoIWFDBYaPHWc
         bHQFUYOQM7nhsQQhZT6yncknQULGg7u/emSUly3mZ3IIAx+cMKzkIcxyvkOdaBv40Cok
         jILt5Q0AtKV11WG6+dr4ghwRT4LJllJOiiuh02mrAqrdYKeklSJ8lC9+cEBah3DOhtYp
         VtWyH0YsuxhuN39l4houcf/EhIl+7ofCz0MCFZDGnVbSkP4qvAPHZXBE8Qzq3c5LZLzf
         1Vozd6tlPpxsDks9+PqSsRhCQzz84Q1Pto6XINDHNoOJ3kiP7OHwXRAFUnrLbL57nFP2
         Ab4w==
X-Gm-Message-State: ALQs6tDTdRWfXilF4PFWXG1XobZOY3OOrC3sTy9wcYZ5X9/EGq11Lkki
	NSbzT9qnDM4WktkjZZ5BjSLMLFKanV6PBY9RsahOLUSQqy4=
X-Google-Smtp-Source: AIpwx496JkB0T1FiXkJKG1zazzypG2xPfnfTXVBYhi4480V4u4mZab0A7ol0rhNxss3JzFGoCEs3AUNhkO9R2Y1zljE=
X-Received: by 10.176.48.239 with SMTP id d15mr15832751uam.0.1522972550686;
 Thu, 05 Apr 2018 16:55:50 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
 <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
 <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com> <CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>
 <1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 5 Apr 2018 16:55:49 -0700
X-Google-Sender-Auth: c4eRyFzLcuVzmaq7kk8-qSDLyf0
Message-ID: <CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>
To: Alexander Popov <alex.popov@linux.com>
Cc: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, 
	Brad Spengler <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>, 
	"Reshetova, Elena" <elena.reshetova@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux Kernel Defence Map

On Thu, Apr 5, 2018 at 4:38 PM, Alexander Popov <alex.popov@linux.com> wrote:
> On 05.04.2018 22:20, Kees Cook wrote:
>> On Thu, Apr 5, 2018 at 5:32 AM, Alexander Popov <alex.popov@linux.com> wrote:
>>> On 05.04.2018 01:17, Kees Cook wrote:
>> "type confusion" seems weird to me, but I haven't spent a lot of time
>> weighing the options of the naming of these things. "Overwriting a
>> function pointer" is the method, and the bug is "unexpectedly
>> accessing userspace memory from the kernel" (which is usually
>> "something overwrite a pointer").
>
> Just got an idea to call it "userspace data access". Short and simple!
>
> I also combined SMAP/PAN and UDEREF into a cluster to reduce the number of
> edges. Now it looks a bit better.
>
>>> Kees, thanks again for such a cool feedback. The map is updated.
>>
>> Very cool! Maybe also add an out-of-tree bubble for "Clang CFI", which
>> gives forward-edge protection for code-reuse...
>
> Ok. Created a CFI cluster with RAP and Clang CFI inside.

Well, naming can get confusing here. RAP got renamed along the way to
include both "Return Address Protection" (backward edge) and "Indirect
Control Transfer Protection" (forward edge). Clang CFI is forward edge
only, though things like shadow stacks or pointer authentication can
provide backward edge protection. So... I'm not sure how much detail
you want to capture in the bubbles. :)

> However, I didn't manage to find any materials about applying Clang CFI to the
> Linux kernel.

Here's Sami Tolvanen's work on doing Clang CFI (on top of Clang LTO):
https://android-review.googlesource.com/q/topic:android-4.9-cfi

-Kees

-- 
Kees Cook
Pixel Security
