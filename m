X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["808" "Friday" "19" "May" "2017" "21:58:58" "+0300" "Yui Hirasawa" "yui@cock.li" "<20170519185858.mbilbjdi3fafgl2j@kamui.lair>" "32" "Re: [oss-security] terminal emulators' processing of escape sequences" nil nil nil "5" "2017051918:58:58" "[oss-security] terminal emulators' processing of escape sequences" (number mark "U       yui@cock.li  May 19   32/808   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28561 invoked by uid 550); 19 May 2017 19:00:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28279 invoked from network); 19 May 2017 18:59:16 -0000
Date: Fri, 19 May 2017 21:58:58 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
	t=1495220344; bh=a2bP3iOVwYJFM0kCr0FwGP+4cZyvKyA41k0tGP0fR0Q=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ZRIt72+ORKKguom8fNK2kUtU8Grqjpe3iFJjfCZGC6Ia4lQJftn/DVvSrT+q2uPKP
	 q3+zTvqNKONaCEM17LS3DQXOqUPmd5w9ZxDygixtRjaLoX6DDtPhKOVmwgAFpbNCWf
	 TggZ9ivHc+fjv+Zls+mP6rVK4X8/fRnmFMnqVk+japJzalHrpI7FvfUvvuWA04O92f
	 6MqVZHkKbJZytTveIPGuYeVyHhfypfFYd3QuZthPIZ/1qfbyn7np3wgdkOzD1gWUKO
	 yZEE44eTnt9uhz6WiVGiwhhjerHMdpju7C8eb+CmdkReXIehsJcqPXvXB6WERrB9ht
	 ogk/R9hz7KsYw==
From: Yui Hirasawa <yui@cock.li>
To: oss-security@lists.openwall.com
Message-ID: <20170519185858.mbilbjdi3fafgl2j@kamui.lair>
References: <20170501164428.GA12322@openwall.com>
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com>
 <CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] terminal emulators' processing of escape sequences

On Wed, May 17, 2017 at 02:25:52AM +0200, Robert Święcki wrote:
> Hi,
>
> 2017-05-17 0:03 GMT+02:00 Solar Designer <solar@openwall.com>:
> >
> > Jason, Robert -
> >
> > On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> > > A harmless example from rxvt - pushing back the new-line character:
> > >
> > > $ echo -ne "\eGQ;"
> > > ;$ 0
> > > bash: 0: command not found
> >
> > Does this also affect rxvt-unicode?
>
> Yes,
>
> Tested with rxvt-unicode-9.22
>
> $ echo -ne "\eGQ;"
> ;$ 0
> bash: 0: command not found
> $

For me on rxvt-unicode 9.22 this command goes into command mode and
executes the first command in the history, thanks to vi-mode in bash.

In clear history it of course goes into infinite loop of re-executing
itself.

Also works with the more portable `printf "\033GQ;"`
