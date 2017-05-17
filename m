X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/17/1
Message-ID: <CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>
Date: Wed, 17 May 2017 02:25:52 +0200
From: Robert Święcki <robert@...ecki.net>
To: oss-security@...ts.openwall.com
Subject: Re: terminal emulators' processing of escape sequences
Content-Type: text/plain; charset=utf-8

Hi,

2017-05-17 0:03 GMT+02:00 Solar Designer <solar@...nwall.com>:
>
> Jason, Robert -
>
> On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> > A harmless example from rxvt - pushing back the new-line character:
> >
> > $ echo -ne "\eGQ;"
> > ;$ 0
> > bash: 0: command not found
>
> Does this also affect rxvt-unicode?

Yes,

Tested with rxvt-unicode-9.22

$ echo -ne "\eGQ;"
;$ 0
bash: 0: command not found
$

-- 
Robert Święcki
