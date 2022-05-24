Received: (qmail 31869 invoked by uid 550); 24 May 2022 17:32:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11537 invoked from network); 24 May 2022 16:29:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CtaAS9Vlr2hZdVQYpYQdecVhF96Aw8+Now5ZQifGJYY=;
        b=CzOAASoWmSUYgAaKPRbp4wMW1pag4kcGqfkNkuI/XZTQW1Jl5olhA4Move12suPTnZ
         ue9ipjTQx44iBp0xYHZ68FkZf33fd490fgfGNThW16v9qSrEkquZk6pchLd1QVwMzDj7
         6KjeClAyPu/qnKkL+BMGGLyMm1HUejEK36ke/09d67sEJyfOGwCTvoy28W3jowGn6MTZ
         NuavkLl1t+viM3Kuv8iaTyQqhRXIdwqrxSzsOUA+n9ZjUUt1y19khO24pI7THvWr0aK+
         6i3j6+qPSQmX7O2Lh8fee2HCAHG8ZcJADTm2dbZbSL4570UKWw4A+zjZ5Ey17aoKfccD
         MO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CtaAS9Vlr2hZdVQYpYQdecVhF96Aw8+Now5ZQifGJYY=;
        b=N+Fp1DrAuB+zDBwHX+zaMakITpi+JQLGUqWZYr5h4tjw1BtX01h+nuaCQTU9tA1dPT
         0YCBZcmFdhnMnCYP0zWjNadE4D5YC53cxG/MmzWWsWSEzTJjEc/1E2haVY52oLVylalZ
         8LQoewFilx14Kau4Y8YQEQLp8TjrZsitTu65ryFi8kF/k8NpjvnRKH1TZ9BKsFS0QbCb
         sfGY2AOqyG6lNFinmIqmlLyjGhAsRZNvK4++MBTWivxFmMyPSzs7zcVFejQ/8UA+S9vK
         mN+t0wAQ+RmQvk/wcbB+7S9d03MRMFS8zKQjdc2ybocmT5isHO01DnHqSvEFuM0WAiKd
         FPUw==
X-Gm-Message-State: AOAM531CNKrl1uNvFr3rGdbDckZoB2xtkvn0FlygMKMWlFBO+c//H058
	ZLigz0Uy7EUB/tB9+6xKgcRgpX91PjrTVRPsSiMi16lSe9mKLg==
X-Google-Smtp-Source: ABdhPJzeqgSgA/4mO+tpZFDgJvI6SUbeJ95C17tXCMPn0+F864Lm4TZheEnc0Kz2DJS6XdawydbQMoSOp3H+FUvvb78=
X-Received: by 2002:a05:6a00:244a:b0:4fa:ebf9:75de with SMTP id
 d10-20020a056a00244a00b004faebf975demr29209702pfj.73.1653409745922; Tue, 24
 May 2022 09:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <CADW8OBs7P=YE_xfYCX3KuhaiVkwjSTMVUjLX93S_bn_XBd05EQ@mail.gmail.com>
 <20220524162210.GA31294@openwall.com>
In-Reply-To: <20220524162210.GA31294@openwall.com>
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Tue, 24 May 2022 09:28:29 -0700
Message-ID: <CADW8OBuPkS==FV+0zb9rObxoc+02GCBno+7SdDXpnYOvGLik0g@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-1786: Linux Kernel invalid-free in io_uring

A small correction, I shared a minimal crashing PoC to linux-distros
but not the LPE exploit.
I do not plan to share the LPE exploit because of ethical issues.

To answer your question: I intend to post the crashing PoC on May
27th. Thanks for reminding me.

Kyle

On Tue, May 24, 2022 at 9:22 AM Solar Designer <solar@openwall.com> wrote:
>
> On Tue, May 24, 2022 at 09:10:37AM -0700, Kyle Zeng wrote:
> > # Impact
> > I wrote a proof-of-concept exploit and demonstrated that it can be
> > used to achieve local privilege escalation.
>
> Since you shared the PoC exploit with linux-distros, you're supposed to
> also post that to oss-security within 7 days of your first posting
> above, so by or on May 31.  Do you intend to, and when exactly?
>
> Alexander
