X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1012" "Friday" "6" "April" "2018" "02:38:50" "+0300" "Alexander Popov" "alex.popov@linux.com" "<1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>" "26" "[oss-security] Re: Linux Kernel Defence Map" nil nil nil "4" "2018040523:38:50" "[oss-security] Re: Linux Kernel Defence Map" (number mark "U       alex.popov@l Apr  6   26/1012  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>" "<CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19483 invoked by uid 550); 5 Apr 2018 23:39:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19460 invoked from network); 5 Apr 2018 23:39:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=hHYcnC9UvWxsq9VLkZe52QZ/p29dATLBGHoRWRWURHA=;
        b=WV3rWzOwvsqXTzfuXn7FjEalMswC0ZucAhwFoY+kb5gu/gO4cUxPKiBA7s9H7SB9LX
         OCnACr1CpxUvOwfziU/8k4HZ5LGbdNhNhokEZcfqsWhvvfrxqBL6SjkKZAeyC+gUlDuY
         XGihaFoXCQgHEoYstPskAP9tixaNXl6LuiSDTvyK/LSLeSAgkfpexhVMitrf9OJ2fTKt
         tCHpOe5h0U8NA7yc2J6RHMP96IniecAwU1Y8DNUBdvbv7YpNu840Gxc453EjNAtzkaYg
         k5kOn/p1DiCVyCW8IQ82jXhBBurnnHL61Jt8idTOPJRUXt0rbX0mBhc2VnmAKvVhylp/
         tFZg==
X-Gm-Message-State: ALQs6tAg5HBFpkO7uAm6S7KbHgIK8TdM+R0YX3nbmJvIFAjiBws6inO2
	TKZiaXT64l15x7pa4YuUSoc=
X-Google-Smtp-Source: AIpwx4+Qz3/v8lr/Bxyi/pKgfekOWwQLcRkKJdMdLpFMCSeYCYLYaY24n3XhVNWj5x0+VpIWy+yjmA==
X-Received: by 2002:a19:f20:: with SMTP id e32-v6mr14429062lfi.69.1522971532966;
        Thu, 05 Apr 2018 16:38:52 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
Cc: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Brad Spengler <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>,
 "Reshetova, Elena" <elena.reshetova@intel.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
 <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
 <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>
 <CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>
Date: Fri, 6 Apr 2018 02:38:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux Kernel Defence Map

On 05.04.2018 22:20, Kees Cook wrote:
> On Thu, Apr 5, 2018 at 5:32 AM, Alexander Popov <alex.popov@linux.com> wrote:
>> On 05.04.2018 01:17, Kees Cook wrote:
> "type confusion" seems weird to me, but I haven't spent a lot of time
> weighing the options of the naming of these things. "Overwriting a
> function pointer" is the method, and the bug is "unexpectedly
> accessing userspace memory from the kernel" (which is usually
> "something overwrite a pointer").

Just got an idea to call it "userspace data access". Short and simple!

I also combined SMAP/PAN and UDEREF into a cluster to reduce the number of
edges. Now it looks a bit better.

>> Kees, thanks again for such a cool feedback. The map is updated.
> 
> Very cool! Maybe also add an out-of-tree bubble for "Clang CFI", which
> gives forward-edge protection for code-reuse...

Ok. Created a CFI cluster with RAP and Clang CFI inside.

However, I didn't manage to find any materials about applying Clang CFI to the
Linux kernel.

Thanks!
Alexander
