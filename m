X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/28/4
Message-ID: <CAEu1J=-Z9gPVtqvV=qhdwW5ZDQDs8x6kqBVYLscSusWKB+xQCQ@mail.gmail.com>
Date: Tue, 27 Jan 2015 17:47:47 -0800
From: endrazine <endrazine@...il.com>
To: Qualys Security Advisory <qsa@...lys.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: GHOST gethostbyname() heap overflow in glibc (CVE-2015-0235)
Content-Type: text/plain; charset=utf-8

Dear Qualys team, dear list,

> ???

I assume this is an invitation to elaborate ;)

>From GHOST.c :
...
  char name[10];
  memset(name, '0', len);
  name[len] = '\0';
...


len is worth 991 at that point in time. Quite clearly, this will not fit
into 10 bytes :)

I am merely mentioning it in case anyone else was trying to run this code
and was hitting this particular stack overflow.

It is till an epic bug, congratulations on finding it !

Best regards,

j-

On Tue, Jan 27, 2015 at 4:00 PM, Qualys Security Advisory <qsa@...lys.com>
wrote:

> On Tue, Jan 27, 2015 at 02:03:10PM -0800, endrazine wrote:
> > There is an obvious stack overflow in Qualys' GHOST.c poc : the name
> buffer
> > is 10 bytes long and 900+ bytes of data are copied to it. This is
>
> ???
>
> --
> QSA
>

