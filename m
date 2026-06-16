X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/2
Message-ID: <871pe7m19k.fsf@gmail.com>
Date: Mon, 15 Jun 2026 23:45:43 -0700
From: Collin Funk <collin.funk1@...il.com>
To: "DeFrancesco, Joey - 0551 - MITLL" <Joseph.DeFrancesco@...mit.edu>
Cc: "bug-inetutils@....org" <bug-inetutils@....org>, oss-security@...ts.openwall.com
Subject: 'rcp' and friends meet escape characters and quoting
Content-Type: text/plain; charset=utf-8

"DeFrancesco, Joey - 0551 - MITLL" <Joseph.DeFrancesco@...mit.edu>
writes:

> I have found/validated a vulnerability described in rcp-writeup.md. I
> have supplied the PoC.py in two forms.  Both are attached in
> compressed zip.
>
>
> Summary
>
> rcp's receive path (sink()) concatenates the server-supplied filename
> directly into the local destination path without any validation:
>
> /* src/rcp.c:1011-1017 */
> need = strlen (targ) + strlen (cp) + 250;
> if (need > cursize)
>     {
>       if (!(namebuf = malloc (need)))
>         run_err ("%s", strerror (errno));
>     }
> snprintf (namebuf, need, "%s%s%s", targ, *targ ? "/" : "", cp);
>
>
> cp points into the wire-protocol record and is never checked for ../
> or embedded /. A malicious or MITM'd server sends a C record whose
> filename escapes the target directory:
>
> C0644 34 ../evil.txt\n
>
>
> rcp opens and writes the file at the resolved path — silently, no error.

Well, the r* commands weren't designed to defend against MITM attacks.

There is a more obvious issue around that area of code, which can be
seen with the following example:

    $ ./src/rcp '"$(uname -a)"' .
    cp: cannot stat 'Linux fedora 7.0.12-201.fc44.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Jun 11 01:30:16 UTC 2026 x86_64 GNU/Linux': No such file or directory

As far as I am aware, all 'rcp' implementations behave this way. For
example, see NetBSD which does not use GNU Inetutils:

    $ rcp '"$(uname -sr)"' .
    cp: NetBSD 10.1: No such file or directory

For that reason I was hesitant to change it when I noticed it fairly
recently. I was not alive in the 1980s, which was around the time 'rcp'
and friends were invented, so I am not sure if this behavior is known or
load bearing in any way. I have CC'd oss-security since I have a feeling
some people there will know.

Given that a relatively ancient LLM should be able to easily spot this
issue from the snippet you shared, I feel that this issue is public
without my email.

Collin
