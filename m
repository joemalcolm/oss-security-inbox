X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/04/9
Message-ID: <CANO=Ty1HYwBfpij97h9a=OhM9_SqncP7HjS_q9BPYv7yH-SQww@mail.gmail.com>
Date: Wed, 4 Apr 2018 17:55:07 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: Alexander Popov <alex.popov@...ux.com>, James Morris <jmorris@...ei.org>,  "Serge E. Hallyn" <serge@...lyn.com>, Brad Spengler <spender@...ecurity.net>,  PaX Team <pageexec@...email.hu>
Subject: Re: Re: Linux Kernel Defence Map
Content-Type: text/plain; charset=utf-8

On Wed, Apr 4, 2018 at 4:17 PM, Kees Cook <keescook@...omium.org> wrote:

>
>
> KPTI defends against info leaks and "finding kernel objects" too, in a
> way. Maybe just add a whole "side channels" bubble?
>
> (I think "info leaks" and "finding kernel objects" may need some kind
> of clarifying language for how they're different)
>

Please use a CWE identifier if one exists (https://cwe.mitre.org/), if one
doesn't exist perhaps we should have one (email me and I'm happy to help
get that ball rolling). Having a CWE not only helps categorize things
correctly but gives us something to point developers at for resources
around flaws and how they can be avoided/dealt with/etc.


> -Kees
>
> --
> Kees Cook
> Pixel Security
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@...hat.com

