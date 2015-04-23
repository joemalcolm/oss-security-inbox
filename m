X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["917" "Wednesday" "22" "April" "2015" "17:09:48" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJP2uMp6mGROdWC3pE9-V6FMbykvK1V=1d3p+nYgvPJMg@mail.gmail.com>" "23" "Re: [oss-security] USBCreator D-Bus service" nil nil nil "4" "2015042300:09:48" "[oss-security] USBCreator D-Bus service" (number mark "        taviso@googl Apr 22   23/917   " thread-indent "\"Re: [oss-security] USBCreator D-Bus service\"\n") "<20150423000423.GA31439@openwall.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26400 invoked by uid 550); 23 Apr 2015 00:10:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26377 invoked from network); 23 Apr 2015 00:10:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=Mz7bShK3J3v81s7V/pZfjnPvefXoMreKux7Et0IR6/k=;
        b=i32XxdFxHh5GV/EDaL7oO6D20csF3rk1ABfJDQpZBitBMpvgOwIIA6ccKNkoqWAmT0
         aLQd/ZdF+N+KJPnO2dtMWqpfiSwZ3P28TELWLD2ebU835Rtlc7Zra2RsitEc20qFaITQ
         6hEjpwqJ0cGLQb9iV3oRfY6SVyWl8NIThW35lZUwr7AwDmGULNpabRJeSbrAleZWGs4c
         wIdGL1M5dasu+RYbBi7s/L9LnW0S5+yrW+MLLHRqXucjZ3vLDBQloEEckz5bw3mf+iCF
         LsDBJEYw07jzR4QQnYIKD2AHZJx8/ph1xjAvJqGmggdSKz6k7aFgTELZvFpdIhvQJih+
         cI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=Mz7bShK3J3v81s7V/pZfjnPvefXoMreKux7Et0IR6/k=;
        b=bLr1wkk4m/hXV76hlmoVMFhhbPIfPvb8K8otmc9tN0tEHjfp8eh/EFZt4rm4zcWZA0
         xBbfEH07qe+Rexvu4dFfMUalAN4AmECiMgwx2UPh9hfLUJXt7OGPY6ZQHooDHOTtghNm
         mfCVOt53c3sBD65s9eE1x60M9KtGaNbvcTh3FNvRwC7XEiqC1oDBIAc/p3viYAuqRvGQ
         z8DT7RRsV6HNiZ4YYbo9bhRyS72vJg8CzaquAff/qi1h1ywrS5dJNcyIZaoUrkc5CSb/
         B5DYaoVuKZVrgHeREs587MkZ9bwLa1rL6553NaPxOtCmQxYDjzkyfdQoTfx3I5t/o4nR
         Fasg==
X-Gm-Message-State: ALoCoQmBFumayFwKWsMY0DY4GypxdA0zadb9U8bYMHzyHxC1BZW+txUfGci3Mlbs8er0MRAFyzg3
X-Received: by 10.55.33.94 with SMTP id h91mr213965qkh.69.1429747808635; Wed,
 22 Apr 2015 17:10:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150423000423.GA31439@openwall.com>
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
 <20150423000423.GA31439@openwall.com>
Message-ID: <CAJ_zFkJP2uMp6mGROdWC3pE9-V6FMbykvK1V=1d3p+nYgvPJMg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2015 17:09:48 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] USBCreator D-Bus service
To: oss-security@lists.openwall.com

On Wed, Apr 22, 2015 at 5:04 PM, Solar Designer <solar@openwall.com> wrote:
> Hi Tavis,
>
> On Wed, Apr 22, 2015 at 04:50:08PM -0700, Tavis Ormandy wrote:
>> [as-per previous discussion on the vendors list, skipping closed
>> discussion of low-severity issue]
>
> What "vendors list" do you mean?  Do you possibly mean "vendor's" rather
> than "vendors" - that is, upstream's list?  (I do not recall seeing this
> on the linux-distros list.)

Actually, I was referring to the discussion on linux-distros about
apport and abrt.

> Either way, it sounds weird to keep a low severity issue private.  Low
> severity usually means not needing an embargo in the first place.  But I
> guess it was the vendor's preference?

Sure, I didn't mention it for the benefit of anyone actually working
on linux security. I just wanted to be clear this was expected, as
unfortunately my posts tend to get undesired attention.

Tavis.
