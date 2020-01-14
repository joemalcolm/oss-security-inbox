X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4079" "Tuesday" "14" "January" "2020" "10:16:45" "-0500" "Jorge Lucangeli Obes" "jorgelo@google.com" "<CAKYuF5RQZeCwKHYZmEZd2Hj43e9DOcJx7yCHy530bcn3o22REw@mail.gmail.com>" "81" "Re: [oss-security] linux-distros membership adjustment/vouching" "^Cc:" nil nil "1" "2020011415:16:45" "[oss-security] linux-distros membership adjustment/vouching" (number mark "        jorgelo@goog Jan 14   81/4079  " thread-indent "\"Re: [oss-security] linux-distros membership adjustment/vouching\"\n") "<20200112174726.GA8750@openwall.com>" ("<20200110205241.GF6272@outflux.net>" "<20200112174726.GA8750@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership adjustment/vouching" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9371 invoked by uid 550); 14 Jan 2020 15:23:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5872 invoked from network); 14 Jan 2020 15:17:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VrM/S+pcv32oj1+8veZJUjBahKrf4rCMh9vzXLxn/UI=;
        b=Nw3mTyGAr2i3FjVkbLwfKbrf9JW0uivwkhmUsrfEHdmfes/vR4Wh4DBDZbrA32uwNv
         L9xJvX3T/EhUIe+SfsC4cJ7m2FuSKULK6yaK8i40SbBoCzNMJCXlpIJMtGkT6mGq6//5
         AQTJsok88veffJk6tORIuwNF3YGRoJj5Q2RSPj/MacAys+Mbqy8dmvnBmOeaZurAYUNE
         epDyeqQmEK2wkXPq9Bu/1G1eagioY7uxwoS7PyRksmWqWtklHbp0J8vVMjg4qP6CvVrI
         FTJAdI2F55aCLLpom3rhfuaPtnSv/qOxM+fuMBsokwxpTWKa6upj+sHqub/38vPBmvwc
         AZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VrM/S+pcv32oj1+8veZJUjBahKrf4rCMh9vzXLxn/UI=;
        b=rE0WhBDcW5ildo4SzKRAOYrfEymtVu5N6ElAGAzdkRt+wOi9wxAbP9u9XyOtSBHh5w
         EuzFdHQN+Q7sLeozJWAdnoltNnpp5gkoytyLGURqGz78cZeNpnnu8Ek+iT/Du9scwShr
         QPJxOz788utw1kcSTn7i5jfrprjqSJbyFAPja2bG5bBc/EL8QuTQP6aOK5/eENF+ZppS
         +FLt8leWr2MrYpnZu/RcTk+SHDz6cvAnL7pfMI9NHDkRczFHgZhsuohJ4baJGpqmS8QP
         /9QoUKzgtXqoUtQwSPj88YK1aTXh7gdf7TZ0kW2wFSojFW+fImgIpS7osISggA73WmD0
         Q6/g==
X-Gm-Message-State: APjAAAVzNJECxvSpZy91goAQ+k075dRYd1j9ku/9a8X4FjV6x20/Cz4n
	DLKsR9qi8QCzS1FBE/JYB2PCZLPikX0whJ2UO+zCUw==
X-Google-Smtp-Source: APXvYqxleMS1qznTMdyfhmC0GGvSzHC4kdXsvThIarcW7NofHbsArttCcMMmmbrMYM5jIoDiLwltCmAq5WPCprqUGYo=
X-Received: by 2002:a1c:96c4:: with SMTP id y187mr28527091wmd.112.1579015017763;
 Tue, 14 Jan 2020 07:16:57 -0800 (PST)
MIME-Version: 1.0
References: <20200110205241.GF6272@outflux.net> <20200112174726.GA8750@openwall.com>
In-Reply-To: <20200112174726.GA8750@openwall.com>
Message-ID: <CAKYuF5RQZeCwKHYZmEZd2Hj43e9DOcJx7yCHy530bcn3o22REw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Kees Cook <kees@ubuntu.com>, oss-security@lists.openwall.com
Date: Tue, 14 Jan 2020 10:16:45 -0500
From: Jorge Lucangeli Obes <jorgelo@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership adjustment/vouching
To: Solar Designer <solar@openwall.com>

On Sun, Jan 12, 2020 at 12:47 PM Solar Designer <solar@openwall.com> wrote:
>
> Hi,
>
> On Fri, Jan 10, 2020 at 12:52:41PM -0800, Kees Cook wrote:
> > I've been a member of linux-distros for a long while, and my hat has
> > slowly changed over that time. I'm subscribed there (and here) as
> > kees@ubuntu.com.  When I my responsibilities shifted from the Ubuntu
> > Security Team to the Chrome OS Security Team, I just kept the email
> > address (since it's a community address and I'm still part of the Ubuntu
> > community).
> >
> > However, as my responsibilities have shifted, I'm much less involved
> > with the Chrome OS Security Team, and it was recently pointed out that
> > no one else from the Chrome OS Security Team is (to our knowledge)
> > a member right now.
> >
> > So, attempting to solve things in a backwards order, I'd like to first
> > vouch for a Chrome OS Security Team member who is already on oss-security,
> > with the goal of having them added to the linux-distros list:
> >
> >     Jorge Lucangeli Obes <jorgelo@google.com>
>
> Given the above, I'd be happy to subscribe Jorge for Chrome OS.  I just
> need Jorge's PGP key.  I also suggest using an e-mail address not on
> Google's MX'es, because those reject messages sent from domains with
> strict DMARC policy (most notably, when another Googler posts).
>

Thanks all. I'm actually on oss-security with my chromium.org account
(jorgelo@chromium.org), let me figure out (before EoW for sure) what
email will be best suited for this and send the associated PGP key.

> Normally such subscription changes for an already subscribed distro are
> handled off-list.  However, what you bring up below deserves being
> discussed on oss-security:
>
> > Then I'd like to figure out what to do with my own membership. I'm
> > still associated with Ubuntu, Chrome OS, and Android but I don't have
> > "official" responsibilities as a representative of their respective
> > security teams. I am, however, an upstream Linux kernel security contact
> > (but that doesn't qualify as a "Unix-like operating system distro", from
> > item "1" in the membership criteria[1]). I am still involved in fixing,
> > notifying, negotiating, delegating, etc, in these various distros. Should
> > I stay on linux-distros? I would prefer to (it makes that work simpler),
> > but since there isn't any "criteria for continuing membership" on the
> > Wiki, I'm not entirely sure what the right course of action should be.
>
> I think it'd be most consistent with our criteria so far if (at least)
> one of those distros' security teams does state that you'd represent
> them.  Without that, you staying on linux-distros would be weird and
> inconsistent with requirements we set for others.
>

Despite Kees' evolving responsibilities, I still consider (and trust)
Kees to represent Chrome OS security. Moreover, organizationally Kees
belongs to the same team as myself and the other Chrome OS security
folks at Google, so I see no conflicts or contradictions here.

> > (And if I stay, perhaps it would be more accurate to use kees@kernel.org?)
>
> It'd be up to you to choose an e-mail address that's convenient for
> you.  Messages are encrypted anyway, so this choice sort of does not
> matter for security.  In practice, though, it does matter a little bit:
> if you choose an e-mail address in a specific distro's domain name, then
> if you ever leave their team and they disable that e-mail account you
> wouldn't be getting the messages anymore (and they wouldn't be able to
> read messages intended for you as well, due to the encryption to your
> key), even if they forget to promptly ask for your address to be removed
> from the list.  Despite of this minor security advantage, I don't insist
> on use of such e-mail addresses so far, as I realize it's often far more
> convenient to use an external e-mail address.
>
> As to kernel.org, it isn't particularly relevant here since the Linux
> kernel is not a Linux distro.  It's just an address you can use, just
> like any other address.
>
> Alexander

Thanks,
Jorge
