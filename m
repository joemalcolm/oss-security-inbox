X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5283" "Wednesday" "12" "December" "2018" "11:34:59" "-0800" "Hacker Fantastic" "hackerfantastic@googlemail.com" "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>" "125" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121219:34:59" "[oss-security] Multiple telnet.c overflows" (number mark "        hackerfantas Dec 12  125/5283  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17521 invoked by uid 550); 12 Dec 2018 19:46:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5528 invoked from network); 12 Dec 2018 19:35:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8+Z/0E115jlz7ahkJ/Fm1LwKXCw92+7/lwXpxPscid0=;
        b=XdnxkL7IRTGUZWvD+Nb7vy45YL1yX2mEJOMOWj2m+KMmpoA5xnpdn+HrBzxPl8dTSN
         XfzUYI3zQNdDlFsSxOlpGO9VV4JkQhn0vKADuUJ/4TZ3Jhx8K32ibmb1S9NH9EsRfBb0
         ufzDFgzjvEB7p4+IUe4izL3auYoZDQVlHqrVH5Eu7E2Sywfb1flXqWxdoPiEp4c5EygU
         iaZt3Eu3yghBbtxeIFb3sI8RPhtnZ12zfuYbPaqJ15jofJmwIkDq9KOrbIy9bTFWtznp
         EglwJ2fm7FP8/ogjucRZgpQBcSEHTNOafPZXrBJ4xFFNJkzPO7bbtgQuyojbA+bJiY7R
         rYcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8+Z/0E115jlz7ahkJ/Fm1LwKXCw92+7/lwXpxPscid0=;
        b=V43t05365kCR/UVd59368DOhhwC0w4r4yUcQAnqk+WkFAsLSndAocAPSK/nchDRP85
         9hnYBotQRXqMNgk0+/W72/QBB8g4DBqqBHv0kTQZISqs6sQCVdqCPRyWCPwFj2p88t1F
         /03YIBLoz0ufT4EhX2dNKTsPM4PQvZhG7DDnNJCZ7GIItc/Y2krPZjnumo/dzLWKSgL4
         9p6Vrb5LOv5pH1HJ19GUN1RxT9RM/MYaoxIn7O0TsrFX63aCOuza7XuHgICfOtzYvbLv
         v5ScXlehVGzLfdJcFeZvU6+oTbGSVdpSrW+n+kweVo9MMHldo71TPrrrSRcuqlwWHsGu
         F3kg==
X-Gm-Message-State: AA+aEWZ+FamPUtgIQ7yzpLPWtUgE2rAzSZXwkvGoiEzHazi5h8vX/4yf
	OhMKdS4Ymtg0jTu78/PXEwRPz1GimZSnKtOt5xE=
X-Google-Smtp-Source: AFSGD/VsjXafjYZjPXgCO+XnelPMSXqSP5iJ+CExWE380pkPo1A39InRC7l4ujs8LUq3txYxoDrr6iO+K3pGFBi9jt8=
X-Received: by 2002:a2e:8045:: with SMTP id p5-v6mr12574808ljg.87.1544643311243;
 Wed, 12 Dec 2018 11:35:11 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com> <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
In-Reply-To: <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
Message-ID: <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000df1592057cd84b6c"
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 11:34:59 -0800
From: Hacker Fantastic <hackerfantastic@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: Tavis Ormandy <taviso@google.com>

--000000000000df1592057cd84b6c
Content-Type: text/plain; charset="UTF-8"

Hi Tavis,

The "little used" package you mentioned is in some distributions a
dependency of "xorg-xinit" (:: removing inetutils breaks dependency
'inetutils' required by xorg-xinit in Arch Linux). The security boundary in
the Mikrotik example is "escape of restricted shells" which is also in the
TLDR; advisory. If you are unhappy with how I described the issue and wish
to spend time and ultimately money researching remotely reachable code
paths (aside from the URI handler example I already gave you) then it is
worth looking into more detail the issues with the heap overflow and if it
is reachable in the client via a server-side telnetd implementation for
instance. The code there is a mess.

As I already stated, I am unable to account for every use of telnet
client-side code or how it is called in every application, particularly all
the projects out there used from open-source community or co-opted by
vendors into commercial offerings (like the given example, Mikrotik).
Splitting hairs over security boundaries of a single issue with many use
cases is not something I have time for, the vulnerability is exactly as
described with security relevant impacts in my original advisory. It would
be nice to see the heap overflow reached via a telnetd service just to
prove a point but ultimately it is beyond the scope of this discussion, why
not put the energy you spent on these emails to use exploring if the heap
is also corrupted in such instances? ;-)

It was considered a security issue for such straight-forward restricted
shell escapes in 2004/2005 (when there were numerous reported instances of
such occurring in telnet clients alongside other client-side overflows).
One of the issues is addressed in the implementations of some BSD clients
and not in others.

Just because you do not know how to exploit a bug does not mean it does not
have security implications, it just means they have not been discovered yet
or the researcher does not have the luxury of time that others have.

I hope this clarifies my points satisfactorily for you.

Kind Regards,
Hacker Fantastic













On Wed, Dec 12, 2018 at 11:03 AM Tavis Ormandy <taviso@google.com> wrote:

> On Wed, Dec 12, 2018 at 10:08 AM Hacker Fantastic
> <hackerfantastic@googlemail.com> wrote:
> >
> > Hi Tavis, thanks for the input - I referenced Mikrotik as a vendor using
> a vulnerable implementation that can be used to escape restricted shells.
> This is just one example of a instance where a restricted shell could be
> escaped when using inetutils, or when the vulnerable code path reached
> unexpected systems (like NetBSD).
>
> Yes, the bug exists on NetBSD, but in order for it to be a security
> issue, there has to be an example of this bug being used to cross a
> privilege boundary. I assume we agree that not every bug is a security
> bug, there has to be some sort of supported security boundary that the
> bug allows an attacker to violate. The question I'm asking is can you
> elaborate on which security boundary is being crossed? I don't dispute
> the bug exists and that NetBSD are shipping the code.
>
> > As Mikrotik case is not an oss security issue I did not post the
> advisory here, but as I shared to you already on social media:
> >
> > https://hacker.house/releasez/expl0itz/mikrotik-jailbreak.txt
> >
> > (The overflows are present in those devices as well, several million of
> them, in case this isn't clear in our advisory)
>
> That part is clear, but it's not clear to me that Mikrotik intend for
> this to be a security boundary. Do you get unintended privileges from
> exploiting this? Either way, RouterOS is not open source, so
> oss-security isn't the right place to discuss it.
>
> >
> > The heap overflow occurs in ANY environment variables (an example
> instead of DISPLAY, use USER which maybe reachable via telnet://user@ip),
> yes the stack sprintf might not be remotely reachable which is why the
> advisory states "multiple overflows". If instances of telnet being called
> with a username via a URI handler the this would reach the heap overflow
> code path as described in the advisory. Thankfully, most modern browsers no
> longer implement telnet URI handlers anymore.
>
> You say "most", but do you have an example of anyone invoking GNU
> inetutils via untrusted telnet URIs? I think any example in a security
> supported open-source project would be enough to justify calling this
> a security issue.
>
> > You are welcome to dismiss client side environment handling
> vulnerabilities as none-security issues or feel free to patch the
> referenced vulnerabilities as stated in the advisory. Thanks for your input
> I hope the comments above with the referenced advisory are clear enough and
> that the issue can be addressed by projects still using inetutils.
> >
>
> It's not that environment handling is a non-issue, I've reported
> dozens over the years, it's just that it requires a privilege
> boundary. For example, setuid binaries are the classic example.
>
> Tavis.
>


-- 
Matthew Hickey
Tel: +44 7543 661237
Web: http://blog.hackerfantastic.com

Please visit my website for blog postings, status updates and project
information.

--000000000000df1592057cd84b6c--
