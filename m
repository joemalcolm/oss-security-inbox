X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2759" "Wednesday" "12" "December" "2018" "11:02:52" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "56" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121219:02:52" "[oss-security] Multiple telnet.c overflows" (number mark "        taviso@googl Dec 12   56/2759  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13994 invoked by uid 550); 12 Dec 2018 19:03:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13974 invoked from network); 12 Dec 2018 19:03:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8eEbCxIm3IouXprSZ1XOBU+yJ+CWMIsfsKzHRwVXobo=;
        b=hPNKxhtmb724HUlvcIczQz/b3h6q71B+0HV7BLQqQsrqII+0s0duuRY9sO4MQKfRLo
         ewoD5KYFK9IqR++vgKeUg26hhdSmvcD/VzW1ktRxCIcaV64mqPl4ffK0Bj0sRlY3dkRH
         p4mi+ZwK2SvyH35ZkvU9kXIvGPr/TqsJ91Fs3oFpBxEuiPxgaYrvtUyAYbGv1KQvM9hn
         j9rgngXRZuHWtw7S+lHQx0HbLE1fpIIjoOCMWyIB79MPd0ErJ4jGjp5nYyByAYkG6mae
         3ew0x28cBVcIAuLNAPeKt4ZJLvO/NV9WkSQWVCq63XUwDqpPvZvXOaz9ez2POGYB4aIk
         do+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8eEbCxIm3IouXprSZ1XOBU+yJ+CWMIsfsKzHRwVXobo=;
        b=iwGNtwuvBS1WHe8548JNELGyKGxEDbn59iyPOlKvxVFLw0nyhKVGIVWUBxsABJnGgO
         uS4wdducnutNKWWr+GRN8THZrAnkQX5egL4wLVWogQvL5UNTBvB31FQ40vToCPqyZK4V
         1sHU/gOMKOBHbWhDUrbeLy65et80LEn42OAvV/17mfAv8iGA7PGqiaHZZKc+cHLOqenf
         mUOa8Sls/ceDT4v7E8ufaX/oDGdur6Fmb6Ly5l/3/G+2qOnuXVIdHr2Nkeww6nXkLPML
         falsUsQBa/6tQem/2Ty0FjQU9JubfwiJAbJw+C4PPLgv4SXki1ZtXAO4H8fM3Dm4sUTE
         mc3g==
X-Gm-Message-State: AA+aEWaksSCR5or2iGWm9gvd7TvJOzc/SZk7MJVOy0q3U/nXxO0Dbuo4
	85x0uUqHxGSix0AIcggOUwwNsBHDoJOS/mp3yM6Tng==
X-Google-Smtp-Source: AFSGD/X619i4VR8j0WTkyxvvdVvZYQ8QAf2MqDznERomfyvfnKVCSxLx7KBg7FRK5KOFruZMOvS4XAYyNEeF0m43uGM=
X-Received: by 2002:a37:50c4:: with SMTP id e187mr19131948qkb.276.1544641385100;
 Wed, 12 Dec 2018 11:03:05 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
In-Reply-To: <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
Message-ID: <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 11:02:52 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: hackerfantastic@googlemail.com

On Wed, Dec 12, 2018 at 10:08 AM Hacker Fantastic
<hackerfantastic@googlemail.com> wrote:
>
> Hi Tavis, thanks for the input - I referenced Mikrotik as a vendor using =
a vulnerable implementation that can be used to escape restricted shells. T=
his is just one example of a instance where a restricted shell could be esc=
aped when using inetutils, or when the vulnerable code path reached unexpec=
ted systems (like NetBSD).

Yes, the bug exists on NetBSD, but in order for it to be a security
issue, there has to be an example of this bug being used to cross a
privilege boundary. I assume we agree that not every bug is a security
bug, there has to be some sort of supported security boundary that the
bug allows an attacker to violate. The question I'm asking is can you
elaborate on which security boundary is being crossed? I don't dispute
the bug exists and that NetBSD are shipping the code.

> As Mikrotik case is not an oss security issue I did not post the advisory=
 here, but as I shared to you already on social media:
>
> https://hacker.house/releasez/expl0itz/mikrotik-jailbreak.txt
>
> (The overflows are present in those devices as well, several million of t=
hem, in case this isn't clear in our advisory)

That part is clear, but it's not clear to me that Mikrotik intend for
this to be a security boundary. Do you get unintended privileges from
exploiting this? Either way, RouterOS is not open source, so
oss-security isn't the right place to discuss it.

>
> The heap overflow occurs in ANY environment variables (an example instead=
 of DISPLAY, use USER which maybe reachable via telnet://user@ip), yes the =
stack sprintf might not be remotely reachable which is why the advisory sta=
tes "multiple overflows". If instances of telnet being called with a userna=
me via a URI handler the this would reach the heap overflow code path as de=
scribed in the advisory. Thankfully, most modern browsers no longer impleme=
nt telnet URI handlers anymore.

You say "most", but do you have an example of anyone invoking GNU
inetutils via untrusted telnet URIs? I think any example in a security
supported open-source project would be enough to justify calling this
a security issue.

> You are welcome to dismiss client side environment handling vulnerabiliti=
es as none-security issues or feel free to patch the referenced vulnerabili=
ties as stated in the advisory. Thanks for your input I hope the comments a=
bove with the referenced advisory are clear enough and that the issue can b=
e addressed by projects still using inetutils.
>

It's not that environment handling is a non-issue, I've reported
dozens over the years, it's just that it requires a privilege
boundary. For example, setuid binaries are the classic example.

Tavis.
