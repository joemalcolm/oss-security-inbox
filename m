X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/04/7
Message-ID: <54804D3B.2090306@redhat.com>
Date: Thu, 04 Dec 2014 13:02:03 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: procmail heap overflow in getlline()
Content-Type: text/plain; charset=utf-8

On 12/04/2014 11:26 AM, Martino Dell'Ambrogio wrote:
> For what is worth, I strongly believe this is a security bug for the
> same reason.
> As soon as there is an undocumented way to execute code, it will be
> impossible for a .procmailrc file generator to avoid execution of code.
> Workaround measures like security capabilities can not be taken into
> account as they are not implicit.

There are many documented code execution opportunities (some of them 
still rather subtle), so I find any arguments based on the existence of 
a hypothetical secure procmailrc file generator not very convincing.

:0
|echo code execution >/dev/tty

:0
* ?echo code execution >/dev/tty
/dev/null

… and so on.

-- 
Florian Weimer / Red Hat Product Security
