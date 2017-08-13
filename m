X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2833" "Sunday" "13" "August" "2017" "18:21:55" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>" "72" "[oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" "^Cc:" nil nil "8" "2017081316:21:55" "[oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" (number mark "        andreyknvl@g Aug 13   72/2833  " thread-indent "\"[oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch\"\n") "<CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>" ("<CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15600 invoked by uid 550); 13 Aug 2017 16:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15581 invoked from network); 13 Aug 2017 16:22:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2BHnffHIf+uoUj6lLk0yPts42Gg2pDaUT9szr1+H3hU=;
        b=It83KfdVcZYvV9xZoLQRnA+iPnB7L9P6r8tMybUbCjtMqpCDwMpMIAOG7dXAeKpACC
         IE6fBaqQB8a8dNIuQ6ikvWW8qR4MAH/6N2+ZRUGK5dKC5D1FjJ3sCsyu9d5/b7NwyGht
         Uzl6nV3/HoCx1xJVNQ69kvPgujj03zgx2noMeHf9iAahfQwgDfqu1IiJwfDa6+RT88Xa
         asQm7jqSFkF6hztNHayzDJp9PR2yX0E+UuHTJ9J2d20I62hO2xW4EmmP73o6/PNPCiy8
         O9rNgpWFzaNGhMA/J8faxjG2WWnLNBPJT1RHrOyaXxdfo/UWaZlcEDN4ACoqVzzZvpIN
         yOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2BHnffHIf+uoUj6lLk0yPts42Gg2pDaUT9szr1+H3hU=;
        b=TKmhgmFkX3/NLcFzFOt5CQ4KvzEBqNqGOcuKr0dQ3mnIuXKfXT0qas78++6tkGEqkt
         P0jvh2aHzjYDZK2Vhds/MZUPpxl7wcpuf4gAf3ljRHnF+7gZm11ZyfgEdZbGZ5hs/7UC
         hedJVEz36xj00mET/n9Cs23cV3QPlrktf7As8zhcSNmkedW1DjVRN6odZM2sXzesVMNP
         ANP9rI3zJRRukOZI1PPXDBf4i5Zy+ymKdQNHnX/nJB7NB9n71WNf/xD/S+4MbmxMZdTr
         XpzUMI+B7vbuTZm0GdPfHuIKBGR6r6LnVExanMRP7a2HAgjTRITLZQsRrIS6pqdd5VMy
         bO9A==
X-Gm-Message-State: AHYfb5jxClkUIxJ1xqpZqI7+oxYKMj6gdCpdtAkHr6BVJ9kQ3e3NWrTo
	FStuUOKqfNXmd12a/SINuV+xBygPH4kKSV0=
X-Received: by 10.80.186.100 with SMTP id 33mr21085369eds.47.1502641315842;
 Sun, 13 Aug 2017 09:21:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>
References: <CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>
Message-ID: <CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: willemdebruijn.kernel@gmail.com, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Date: Sun, 13 Aug 2017 18:21:55 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due
 to UFO to non-UFO path switch
To: oss-security@lists.openwall.com

On Thu, Aug 10, 2017 at 10:55 PM, Andrey Konovalov <andreyknvl@gmail.com> wrote:
> Hi!
>
> syzkaller found an exploitable memory corruption in UFO code in the
> Linux kernel, the details are below.
>
> ### Bug details
>
> When building a UFO packet with MSG_MORE __ip_append_data() calls
> ip_ufo_append_data() to append. However in between two send() calls,
> the append path can be switched from UFO to non-UFO one, which leads
> to a memory corruption.
>
> In case UFO packet lengths exceeds MTU, copy = maxfraglen - skb->len
> becomes negative on the non-UFO path and the branch to allocate new
> skb is taken. This triggers fragmentation and computation of fraggap =
> skb_prev->len - maxfraglen. Fraggap can exceed MTU, causing copy =
> datalen - transhdrlen - fraggap to become negative. Subsequently
> skb_copy_and_csum_bits() writes out-of-bounds.
>
> A similar issue is present in IPv6 code.
>
> The bug was introduced in e89e9cf539a2 ("[IPv4/IPv6]: UFO
> Scatter-gather approach") on Oct 18 2005.
>
> The fix has been submitted to netdev [1] and should be committed to
> mainline and to stable kernels soon. David has also sent an RFC series
> to remove UFO completely [2], which should be merged in 4.14.
>
> If unprivileged user namespaces are available, this bug can be
> exploited to gain root privileges. I'll share the details and the
> exploit in a few days.
>
> Thanks!
>
> ### Timeline
>
> 2017.08.03 - Bug reported to security@kernel.org
> 2017.08.04 - Bug reported to linux-distros@
> 2017.08.10 - Patch submitted to netdev
> 2017.08.10 - Announcement on oss-security@
>
> ### Links
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=85f1bd9a7b5a79d5baa8bf44af19658f7bf77bfa
>
> [2] https://www.spinics.net/lists/netdev/msg443815.html

### Exploitation

The bug can be exploited by an unprivileged user if:

1. User can set up an interface with UFO enabled and MTU < 65535 or
such interface is already present in the system. The former is
possible from inside a user namespace.

2. User can disable the NETIF_F_UFO interface feature or set the
SO_NO_CHECK socket option. The former requires CAP_NET_ADMIN. The
latter is only possible after 40ba330227ad ("udp: disallow UFO for
sockets with SO_NO_CHECK option") from Jan 11 2016. Both are possible
from inside a user namespace.

In particular, the bug can be exploited by an unprivileged user if
unprivileged user namespaces are available.

Below is a link to a proof-of-concept exploit, that gets root on a
range of Ubuntu kernels. The exploit triggers an out-of-bounds write
on a socket buffer and overwrites
skb_shared_info.destructor_arg->callback with a pointer to shellcode.
The exploit includes a SMEP and KASLR bypasses, but no SMAP bypass.

Link: https://github.com/xairy/kernel-exploits/blob/master/CVE-2017-1000112/poc.c
