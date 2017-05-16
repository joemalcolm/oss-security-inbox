X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["449" "Wednesday" "17" "May" "2017" "00:15:55" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "17" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051622:15:55" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        Jason@zx2c4. May 17   17/449   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170516220345.GA10874@openwall.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11738 invoked by uid 550); 17 May 2017 10:03:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28069 invoked from network); 16 May 2017 22:16:08 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:from:date:message-id:subject:to:cc
	:content-type; s=mail; bh=OHGyMkJd//dnNMce5YewcQVgYwY=; b=RbziCD
	7pWn/+GNlt1X8b/Cq14hTJGcbyYwdq8B9s7tGjZkhbttG5EdY4kqKvT9rnnJK52p
	ISb0PfRvWj2cpPFPvgH9pF43ufx4OKekNrSzKPSOnczhINCEznjh73ibBZHobVqo
	rGCYtp89Ti1AJ1PX9uHI7Ir3tRfKgZNoJ/15H8g7iAiLyoe8tijqj25t3b89MnF8
	HDHmivoIsSqpAlAcl1myiG0lS0u3mChrDN9f2br6nfzYPPNMx3Z3WrprpNF+bCDC
	Je7SrFhHaPByCbbIPxeL4OmLoQ1KjYG6h210lbNRDmApd+IgG+JRrc0otGBfpT4W
	iThEDc69ueYEIkBA==
X-Gm-Message-State: AODbwcCJTuXYgxSMoVD7oOmMIrvHamAhIWTQMSQ6cQ4lEVMeB0NDBZYX
	64J470yAfxZVR0QW8cqYue2+euqGLg==
X-Received: by 10.157.4.138 with SMTP id 10mr156646otm.249.1494972956366; Tue,
 16 May 2017 15:15:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170516220345.GA10874@openwall.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> <20170516220345.GA10874@openwall.com>
X-Gmail-Original-Message-ID: <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
Message-ID: <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 00:15:55 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security <oss-security@lists.openwall.com>

On Wed, May 17, 2017 at 12:03 AM, Solar Designer <solar@openwall.com> wrote:
> Jason, Robert -
>
> On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
>> A harmless example from rxvt - pushing back the new-line character:
>>
>> $ echo -ne "\eGQ;"
>> ;$ 0
>> bash: 0: command not found
>
> Does this also affect rxvt-unicode?

It does, actually. I've CCd rxvt-unicode upstream on this in order to
hear their assessment.

Regards,
Jason
