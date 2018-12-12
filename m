X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2692" "Wednesday" "12" "December" "2018" "12:09:53" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>" "51" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121220:09:53" "[oss-security] Multiple telnet.c overflows" (number mark "        taviso@googl Dec 12   51/2692  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1865 invoked by uid 550); 12 Dec 2018 20:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1846 invoked from network); 12 Dec 2018 20:10:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ZYIbkY+K2ZjUxnq03pgjkA95hRq5bPreMXNdRMpYuJA=;
        b=fziGqaiEC6PJtYTanX7YyrlSRYlhc1YzyyU512cXk2h0fDyVK6LB4ksCeDBxXEyA5H
         OOUaVIqqldeHB28n/s5iCxf3zKnT/qCzrJomfdRTBRj1t840tzPG0R8soTXzFnl7/U3y
         Q2gcv9KtHGV+tFxq830JrBAPtBAiXzoUGvUxiE0ZyzcpGV4d974+JRmC+gHyN6AatwKt
         XRNN8d/4wYtlABUkbBY7iXclOsmd0TmGn0v2Feam9T3pJ5v0eRb1Gm4wnw82r9genGRo
         Aba0qyHKqnBTDt3aOXTPswkeE1S0WvBnHh9jvJDN+my0ZWUO7+BdnwZ6M6syySTP+pg4
         Iabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZYIbkY+K2ZjUxnq03pgjkA95hRq5bPreMXNdRMpYuJA=;
        b=PWiXmdsoF+Z3Yr9CEK5qv68cTPoQA/jTZyxEhCvc1NVrOLXo77oLll2gCVnic4C3Qf
         aW4GM2z612p+vdERbUWybiDRKmCQwW3sz8rSOzq0dKUAH5brIUf56fh+bzaA6Qjfn8bv
         bGPqDkpYgXVXWBAKRxR4ewCtEDrujRYhHK/q1fpE0XkQ9DhR5138YAkBJKzUUXWfyGXZ
         +slo+vRRNc80aAP2Q1IO4hm9PaAinD+f9XlkoMWz1uMGS8dcP/JFS63pdFGdY/m2eP8k
         F5xi875MCRapqeqzU3sGi+1x8r0ggujB0oWtZSt0aFV/PC4dyoecmSjx73kfEplCOTZX
         vnfQ==
X-Gm-Message-State: AA+aEWa53XD624dRg/N2r/eiFlqjluTRg8WjkxFM7UomsyKLflEaJHgJ
	ovVuKU1lwDlgqvdmOCNpWkf2tu/uzQohxl3dyTtZnA==
X-Google-Smtp-Source: AFSGD/WDunJxLr13bgJyztZ3VMQE6ioCFZcAjkr+FArQhLiOKbOwZ16tL5kez2atXxt7TSkhTOnsbjxiYgkRUi3GsJU=
X-Received: by 2002:a0c:a086:: with SMTP id c6mr7368967qva.154.1544645405240;
 Wed, 12 Dec 2018 12:10:05 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
 <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com> <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>
In-Reply-To: <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>
Message-ID: <CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 12:09:53 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: hackerfantastic@googlemail.com

On Wed, Dec 12, 2018 at 11:35 AM Hacker Fantastic
<hackerfantastic@googlemail.com> wrote:
>
> Hi Tavis,
>
> The "little used" package you mentioned is in some distributions a depend=
ency of "xorg-xinit" (:: removing inetutils breaks dependency 'inetutils' r=
equired by xorg-xinit in Arch Linux). The security boundary in the Mikrotik=
 example is "escape of restricted shells" which is also in the TLDR; adviso=
ry. If you are unhappy with how I described the issue and wish to spend tim=
e and ultimately money researching remotely reachable code paths (aside fro=
m the URI handler example I already gave you) then it is worth looking into=
 more detail the issues with the heap overflow and if it is reachable in th=
e client via a server-side telnetd implementation for instance. The code th=
ere is a mess.
>
> As I already stated, I am unable to account for every use of telnet clien=
t-side code or how it is called in every application, particularly all the =
projects out there used from open-source community or co-opted by vendors i=
nto commercial offerings (like the given example, Mikrotik). Splitting hair=
s over security boundaries of a single issue with many use cases is not som=
ething I have time for, the vulnerability is exactly as described with secu=
rity relevant impacts in my original advisory. It would be nice to see the =
heap overflow reached via a telnetd service just to prove a point but ultim=
ately it is beyond the scope of this discussion, why not put the energy you=
 spent on these emails to use exploring if the heap is also corrupted in su=
ch instances? ;-)
>

The energy I spent asking if a security boundary being crossed was
minimal. I think the answer is that you do not know of any cases of
this being a security boundary, but you feel that all bugs are
security bugs whether or not a security boundary is crossed, because
you don't know how someone might be using the software.

> It was considered a security issue for such straight-forward restricted s=
hell escapes in 2004/2005 (when there were numerous reported instances of s=
uch occurring in telnet clients alongside other client-side overflows). One=
 of the issues is addressed in the implementations of some BSD clients and =
not in others.
>
> Just because you do not know how to exploit a bug does not mean it does n=
ot have security implications, it just means they have not been discovered =
yet or the researcher does not have the luxury of time that others have.
>
> I hope this clarifies my points satisfactorily for you.

It certainly does, thank you. I think we disagree on what qualifies as
a vulnerability, but I'm still very grateful for you reporting this.

Tavis.
