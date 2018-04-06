X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Friday" "6" "April" "2018" "21:01:02" "+0300" "Alexander Popov" "alex.popov@linux.com" "<4b0e1b5d-5615-c7bb-50b6-06cee6cf0458@linux.com>" "34" "[oss-security] Re: Linux Kernel Defence Map" nil nil nil "4" "2018040618:01:02" "[oss-security] Re: Linux Kernel Defence Map" (number mark "U       alex.popov@l Apr  6   34/1255  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>" "<CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>" "<1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>" "<CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17514 invoked by uid 550); 6 Apr 2018 18:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17493 invoked from network); 6 Apr 2018 18:01:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=DdPX+Ripi+iH2q8NXb90FPp61mD0Bq+Pu1ZHb6MvQrA=;
        b=ll2NKZyAdu79SAn/hhq8Gu97p0no0wRUF5+/21ndlkfGkCHaIoEZZ2Ad29dogOEPKN
         r2zxfkcJRVCxFHTV+416zG8fRGeFNOcthwSj0xoU5rWFlkZ5XY6S9Yr0c8DBY/hoCvsj
         WajfgJAl83SldPRwwuunoPjc/qEu/w3qy3gkVOy97q7tR4pALO7r7+8NLpyPS41QjChn
         iebYJ2pe+rFW08kZPIv70Y7eWXtw7KwU9sjVv2X2BCNrGKl/IbtKaOqgV6pwbJnNqTxr
         iKIpmLjk/Yicgfu8K93IpG//Krdq/0TnXuu8PTQDuB9eW719BNB7aNlKgRXoOFu3M+do
         vLgg==
X-Gm-Message-State: ALQs6tB2icCP/nRAbWRXo9JAnTPbRYVBIsuohzqichMXpdVRpnvOnmNw
	/sqb6QKjFMT4JWa6P2uheP4=
X-Google-Smtp-Source: AIpwx49BOPk8eSxHuDoO/a3xCYZ7k/kbGgKqh3hZTLjc3UGqldQbvXqEN8mTap6kAe4H8ZYMEzN4yA==
X-Received: by 10.46.84.12 with SMTP id i12mr17065976ljb.9.1523037665567;
        Fri, 06 Apr 2018 11:01:05 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
Cc: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Brad Spengler <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>,
 "Reshetova, Elena" <elena.reshetova@intel.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
 <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
 <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>
 <CAGXu5jL8x8TTwgJpRJUjM3erfrv7-49YHEKm_Lo3F46FumdWzw@mail.gmail.com>
 <1f56b378-6bf8-610b-ab5d-e81c49fbbc44@linux.com>
 <CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <4b0e1b5d-5615-c7bb-50b6-06cee6cf0458@linux.com>
Date: Fri, 6 Apr 2018 21:01:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAGXu5jKpGPORh=YtAhSgEwERyxCQyZBKspqquqMb7uOjBwsN_g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux Kernel Defence Map

On 06.04.2018 02:55, Kees Cook wrote:
> On Thu, Apr 5, 2018 at 4:38 PM, Alexander Popov <alex.popov@linux.com> wrote:
>> On 05.04.2018 22:20, Kees Cook wrote:
>>> Very cool! Maybe also add an out-of-tree bubble for "Clang CFI", which
>>> gives forward-edge protection for code-reuse...
>>
>> Ok. Created a CFI cluster with RAP and Clang CFI inside.
> 
> Well, naming can get confusing here. RAP got renamed along the way to
> include both "Return Address Protection" (backward edge) and "Indirect
> Control Transfer Protection" (forward edge). Clang CFI is forward edge
> only, though things like shadow stacks or pointer authentication can
> provide backward edge protection. 

Thanks for the details.

> So... I'm not sure how much detail
> you want to capture in the bubbles. :)

I'd like to avoid showing comparisons between security features on that map.
That would make it much more complicated (and trigger holy wars).

This map is just for the navigation in the documentation.

>> However, I didn't manage to find any materials about applying Clang CFI to the
>> Linux kernel.
> 
> Here's Sami Tolvanen's work on doing Clang CFI (on top of Clang LTO):
> https://android-review.googlesource.com/q/topic:android-4.9-cfi

Cool, thanks!

--
Alexander
