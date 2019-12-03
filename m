X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/12/03/1
Message-ID: <CAGUWgD97nkCGns=1JSAH+StSYtTaHPoF6bm5n8WXk=dKoFzN_A@mail.gmail.com>
Date: Tue, 3 Dec 2019 07:54:54 +0200
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: virtual consoles
Content-Type: text/plain; charset=utf-8

On Mon, Dec 2, 2019 at 7:13 PM Tavis Ormandy <taviso@...il.com> wrote:
>
> Hey List, we were discussing simple screen spoofing attacks today, and
> whether we consider it a vulnerability or just social engineering. For
> example, this paper on tricks Android malware can use to trick the user
> into granting permissions to the wrong app.
>

Precedence in mobile code:

1. This exists in Android 9, I had hard time exiting fullscreen
video player
2. Mozilla fixed similar bug about 15 years ago.
3. In 2001 internet exploder was remotely vulnerable and hitting
control-alt-del was not easy:

https://www.dslreports.com/forum/r1651258-Javascript-in-IE-may-spoof-the-whole-screen
http://www.guninski.com/popspoof.html
