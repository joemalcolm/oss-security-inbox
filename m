X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1908" "Wednesday" "7" "October" "2020" "13:30:37" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_b4T=YXkvqKj9NUwqoDZpDW7nYXzmC0b_WqB5jtd+xOg@mail.gmail.com>" "56" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100710:30:37" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       gguninski@gm Oct  7   56/1908  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201006083708.GA14390@kroah.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005124358.GA806250@kroah.com>" "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>" "<20201006083708.GA14390@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9285 invoked by uid 550); 7 Oct 2020 11:33:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22213 invoked from network); 7 Oct 2020 10:31:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9DuF65VNjbijKy2b2p5xQQ4EzJZpVKkpOtMrsg8Vgko=;
        b=rrRzDrID8OvgGLX9C14hUCkKzNv5d7WGmsnyykaBbR+KIbJmHuPDAjYydM0clMpstu
         lbImkod6Nz3X8LwLYFVXbVwMvlBRDaUOJF/ix5QvV6TS/V10GVV36XJRrOvCjnOAU38G
         2MAfYfNOfcDp/9Arr4eYRD67c6VITScIYpVtwx5O984DxufahCtaIN9zMpnDAm72n0uS
         T9atv3V6FRkVMCr0AMvxxlyoG4rj0q1LguuVbNcsd9Qp38yClr7ipskinul4LEaPekCy
         lZVc+IMdQKxzAHWFzJc9m1PNbY78TsZsE30q+CjKXXcYOa/Oi8OtAJUK5B+ZFmvUq7lj
         Xxxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9DuF65VNjbijKy2b2p5xQQ4EzJZpVKkpOtMrsg8Vgko=;
        b=K+BkgCX5Hx8dg9Uj5bVcU6xCyiuJbzvlxqbdOi3inCO/Qf+hEaABvTeG79dosV0Bh7
         P8/QvKz4+aRqut4bbsoP92R/rnoRk/X6lHD6WLl+r8aYU19qYz+6PhrIKrdbdvyl3G3f
         NjLCmhWG9abmtsB5U2zPQllQdKT6TDUFvGHgsl8/52EQguGKM0WpIOhanO3St6X3YqRK
         7FoA+dKbC+Wp/oiUe9vtHGiZPblVd4TK5fn0wHeaemAG7CIo/HUatz/qwSh/hOzVqWLI
         PQtCyFHRqH+CK7YzeHuuxJuBjwVBt50H4JV089UeZ50COBF67OsO03jOZfWA+bCwd+b8
         8bLQ==
X-Gm-Message-State: AOAM533DuNXEDcmaJA8bCbe6AE73NMrE0o2QwtCx9JQUySEEZeLAbdV3
	adpCH5YAz/siqcgL/yz4LW2IgFh7tK8bocBEoqu4vDCaXDs=
X-Google-Smtp-Source: ABdhPJy2H3u7i8Y3Ul3ndoHatyItBteAAXx8eYRvghx4IQYEP8vrgewuuSwrSE/55MUnW3UxtvHmQ5dbw72Tx110yJE=
X-Received: by 2002:adf:f4c6:: with SMTP id h6mr2718239wrp.310.1602066649879;
 Wed, 07 Oct 2020 03:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005124358.GA806250@kroah.com> <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>
 <20201006083708.GA14390@kroah.com>
In-Reply-To: <20201006083708.GA14390@kroah.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Wed, 7 Oct 2020 13:30:37 +0300
Message-ID: <CAGUWgD_b4T=YXkvqKj9NUwqoDZpDW7nYXzmC0b_WqB5jtd+xOg@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

Hi Greg,

You win the pedantic argument, I was wrong.
Let me try another one: AINGL!

As for the old link about google, I meant that google's
products and services contain a lot of spyware, spying on
top of the virgin untainted? GPLed Linux kernel.

There was semi-joke: You and google better watch on google maps
where you got drunk instead of you and google watch it on your
camera.

On Tue, Oct 6, 2020 at 11:37 AM Greg KH <greg@kroah.com> wrote:
>
> On Tue, Oct 06, 2020 at 11:29:34AM +0300, Georgi Guninski wrote:
> > On Mon, Oct 5, 2020 at 3:44 PM Greg KH <greg@kroah.com> wrote:
> > >
> >
> > >
> > > "if"?  You do know the market share of Linux-based mobile phones, right?
> > > Last I looked, it made the Linux server market quantity a rounding error :)
> > >
> >
> > AINL!
> >
> > Android Is Not Linux!
>
> <pedantic>
>
> Linux is a kernel.  And also commonly used as a name to describe a
> system running that kernel, to make it easier for people to talk about,
> and discuss overall.
>
> Android runs on, and requires at this point in time, the Linux kernel,
> so one can say that Android is a successful implementation of Linux on
> mobile devices.  It's also widely successful, so much so that it dwarfs
> any other installed Linux system out there by orders of magnitude.  So
> why ignore it as a valid Linux system?
>
> The fact that I can run a userspace based on a "traditional" Linux
> system (like Debian), on an Android device, with no file conflicts, is a
> great engineering success, don't you think?
>
> </pedantic>
>
> > https://www.theregister.com/2015/06/17/debian_chromium_hubbub/
> > Chrome, Debian Linux, and the secret binary blob download riddle
> > Browser snuck proprietary voice-snoop code into distro
>
> I don't understand the question here, that was something over 5 years
> ago.  How is that relevant for "mobile devices" that run Linux today?
>
> thanks,
>
> greg k-h
