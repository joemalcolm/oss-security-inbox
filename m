X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1037" "Thursday" "23" "February" "2017" "19:36:58" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170223183658.zqlncw72y6hyhjil@eldamar.local>" "33" "[oss-security] Linux: CVE-2017-6214: ipv4/tcp: infinite loop in tcp_splice_read()" nil nil nil "2" "2017022318:36:58" "[oss-security] Linux: CVE-2017-6214: ipv4/tcp: infinite loop in tcp_splice_read()" (number mark "U       carnil@debia Feb 23   33/1037  " thread-indent "\"[oss-security] Linux: CVE-2017-6214: ipv4/tcp: infinite loop in tcp_splice_read()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16359 invoked by uid 550); 23 Feb 2017 18:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16341 invoked from network); 23 Feb 2017 18:37:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Wd7eUs2wQPksgWt3fat/mpXgryyQ6sFr07C9+/IiIK4=;
        b=pi6F51fgyqypLV+fV3V7sOSBeyAHKztQEBIlAMl7A/EuAmI8gd3Ts+39jlxXwOOyEl
         K9Y7HoC2KaGVjnyhcfbbClIVjNr0E70cRq54ZOPW3jEm4IqyseYTY9qmjgcrlJcfEOye
         7+KQrqRkblwCwYDQCUMm1ZKCV4CL7bvwwEg3aFl4JD8y5UeTJ8NXsalonEkRyZgTNjzB
         Gsap3o7TZmVIZhUxrgISnntBlbxa1hRQWKOZ4a8pmzKSHK54QahYy3wa20u+L2JTG498
         cjUrlnlX/SN7Nh3FQS+JX+0T1a/xCZ9r19ZPiHHBcgeTnYv05nypHAXDn+ZwMMWl6NFe
         zPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Wd7eUs2wQPksgWt3fat/mpXgryyQ6sFr07C9+/IiIK4=;
        b=Fo2hnKwEEIgHYKuBXQoyfvnLOaO3a/O0Z5+56gRA29zb+9h1ga65rJhkpEwUOrfZP0
         BeANs3BOI6kgagruvftrWzjuX7MN1T05M199RvZPB1dWaW5UY7PzUta+w0qxgiq+0PPb
         BEsyYLqnlDkGxYgi5LBQr3DUlojqTASax6j5AyhqvqvYN86TjEPya1JMZQEpORIz0vEH
         1yHIjnj6+43tXNEEO1N+rgJagNvdWNkwaS84JuuKJ31IKib7I3N0yqPdzURlccpCJwTt
         I4awSIOwl2KSTHIp48SdCjncHXyAbEezGRJ9wAfJDozNE/Oj5hKiOBdTd4yy094ARZa2
         RvsA==
X-Gm-Message-State: AMke39n3Oofvik4TeQrXNb4/Vi4QMywti/6J4+DMElY6VUlNuAIHxwfaeQnZ9FCnU0OnXw==
X-Received: by 10.28.216.130 with SMTP id p124mr3787021wmg.58.1487875019908;
        Thu, 23 Feb 2017 10:36:59 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 23 Feb 2017 19:36:58 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Eric Dumazet <edumazet@google.com>,
	Willy Tarreau <w@1wt.eu>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20170223183658.zqlncw72y6hyhjil@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: CVE-2017-6214: ipv4/tcp: infinite loop in tcp_splice_read()

Hi

CVE-2017-6214 has been assigned for the following commit in Linux by
MITRE (via the webform):

https://git.kernel.org/linus/ccf7abb93af09ad0868ae9033d1ca8108bdaec82

as included in v4.10-rc8:

>     tcp: avoid infinite loop in tcp_splice_read()
>     
>     Splicing from TCP socket is vulnerable when a packet with URG flag is
>     received and stored into receive queue.
>     
>     __tcp_splice_read() returns 0, and sk_wait_data() immediately
>     returns since there is the problematic skb in queue.
>     
>     This is a nice way to burn cpu (aka infinite loop) and trigger
>     soft lockups.
>     
>     Again, this gem was found by syzkaller tool.
>     
>     Fixes: 9c55e01c0cc8 ("[TCP]: Splice receive support.")
>     Signed-off-by: Eric Dumazet <edumazet@google.com>
>     Reported-by: Dmitry Vyukov  <dvyukov@google.com>
>     Cc: Willy Tarreau <w@1wt.eu>
>     Signed-off-by: David S. Miller <davem@davemloft.net>

The fix was backported to 4.9.11
(0f895f51a831d73ce24158534784aba5b2a72a9e).

Regards,
Salvatore
