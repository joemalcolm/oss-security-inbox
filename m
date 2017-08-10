X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1628" "Thursday" "10" "August" "2017" "22:55:29" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>" "46" "[oss-security] Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" "^Cc:" nil nil "8" "2017081020:55:29" "[oss-security] Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" (number mark "        andreyknvl@g Aug 10   46/1628  " thread-indent "\"[oss-security] Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3816 invoked by uid 550); 10 Aug 2017 20:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3795 invoked from network); 10 Aug 2017 20:55:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=uOcZy+WDVuZg7Qgxzc3Twm98JN86CEOBbohVcx2SZ1E=;
        b=rB+BUfWFfhFTgKBY+VzLwj8g4pm/f5lKPqT51XYImpRPtuQQohiU4ATjsJ88SSBJIo
         2af2q7yuN3DO60GKQcRqVtoV0EDEALi/llX84HhksUZcJRskA93n+AzSKyLraJzGaQ48
         GCZfYrD/K8TE0zwJZ5vB3jn5b/k2JujSh3ZRlaBf0x5Ns6QKJoL4rOdcl4ALkZzHRZl4
         CVaGcL1bClrchvqhnwxvza+yzuCY2weVNPY9Uhcd26gXMQFDLhiqf7DdSn1H1ZPzekoT
         /mY5II6ITs16koVZyNQDVv81ip1UloTytI51mTTv/lF3s1wuCDzQ4DmS5W8llgtvlMaq
         no4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=uOcZy+WDVuZg7Qgxzc3Twm98JN86CEOBbohVcx2SZ1E=;
        b=NzZ9Hb6XyIZaElf/tMB3OKvjgrsnpEZeApAuyT4DTTpZIionkkQDPT9praF0L/QGc0
         3ahI22ZXakaIoTAiMB8J9Q2R+GWkTsUhDmKV2rMqn+g4wF0jdJSOuIHSc5RnSlSM8mfn
         WZnmMXf0UtjufQnIujLAXvzcgw731G0NStZDaEbvrWQ1hOpvnJHVIcM6Hh1KYyrxPNcE
         6a9vvDtDIIu00iifvi/6FIImCQZCcOeUft9bm+g18sCjSk5mmh1XU4dUFjGnc8ivftwv
         JRkXkeXumACNYS0kJIHlHjX1XmH1C21ZPL3bMCqYCXF4UDQZphNaDa94l/ZvMkmY+9af
         es+A==
X-Gm-Message-State: AHYfb5j49oIjY603WZWzJziX7ldcW4iegMg/0GoOK/+4fqXl+oNRSMgc
	7tjcfqpghiUK2Cf1KBnYs9BJv9PzTfp3uxU=
X-Received: by 10.80.133.97 with SMTP id 88mr13091034edr.22.1502398530099;
 Thu, 10 Aug 2017 13:55:30 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: willemdebruijn.kernel@gmail.com, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Date: Thu, 10 Aug 2017 22:55:29 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to
 UFO to non-UFO path switch
To: oss-security@lists.openwall.com

Hi!

syzkaller found an exploitable memory corruption in UFO code in the
Linux kernel, the details are below.

### Bug details

When building a UFO packet with MSG_MORE __ip_append_data() calls
ip_ufo_append_data() to append. However in between two send() calls,
the append path can be switched from UFO to non-UFO one, which leads
to a memory corruption.

In case UFO packet lengths exceeds MTU, copy = maxfraglen - skb->len
becomes negative on the non-UFO path and the branch to allocate new
skb is taken. This triggers fragmentation and computation of fraggap =
skb_prev->len - maxfraglen. Fraggap can exceed MTU, causing copy =
datalen - transhdrlen - fraggap to become negative. Subsequently
skb_copy_and_csum_bits() writes out-of-bounds.

A similar issue is present in IPv6 code.

The bug was introduced in e89e9cf539a2 ("[IPv4/IPv6]: UFO
Scatter-gather approach") on Oct 18 2005.

The fix has been submitted to netdev [1] and should be committed to
mainline and to stable kernels soon. David has also sent an RFC series
to remove UFO completely [2], which should be merged in 4.14.

If unprivileged user namespaces are available, this bug can be
exploited to gain root privileges. I'll share the details and the
exploit in a few days.

Thanks!

### Timeline

2017.08.03 - Bug reported to security@kernel.org
2017.08.04 - Bug reported to linux-distros@
2017.08.10 - Patch submitted to netdev
2017.08.10 - Announcement on oss-security@

### Links

[1] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=85f1bd9a7b5a79d5baa8bf44af19658f7bf77bfa

[2] https://www.spinics.net/lists/netdev/msg443815.html
