X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1049" "Thursday" "24" "August" "2017" "17:52:45" "+0300" "Alexander Popov" "alex.popov@linux.com" "<459c5905-fded-264c-ac85-c5a456aa836e@linux.com>" "31" "[oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" nil nil nil "8" "2017082414:52:45" "[oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" (number mark "U       alex.popov@l Aug 24   31/1049  " thread-indent "\"[oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18351 invoked by uid 550); 24 Aug 2017 14:55:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15636 invoked from network); 24 Aug 2017 14:53:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:to:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=6MHmYpzeQm4iWyI73OmExQq3EOThH3j/pen3D7WU9j8=;
        b=EqhQm03PYxPYAQmAHRL8Q2pv9UrtmDUSv8sqe687sF/t28/g6JHdeL4X/ko/ufwxdI
         kbNreBZftYxYa4KTzl7/NqRabeMCnwP+qvAo4DdM4oar/MQauzihciqQW3AtIZRIVinx
         UGgwErxFG+8RfmOhs0pB75RMeGDxGyT90/jMArO1IWLcIBdBR8oBTqVsU7T8m5aypcIo
         1c2/xjCchRQh7sn5rZNGol3j5HW80OCSapDN6KHiR0KhRleKqEPjMXBz/4LAdrZuihab
         9pLoKi4LOvnARwcjBHTipJ7uwPfFORPc2O6UjhYjgVGxsDvMxUygHZppnW29D79PvD5r
         ++CA==
X-Gm-Message-State: AHYfb5jHWJ1JDQHM+tR5HNKQE1/dnhP5M/IaUAyIYFrdL30WYnJZR2Un
	wIcKqYm+ZOwpxpXjrUI=
X-Received: by 10.46.21.20 with SMTP id s20mr2622909ljd.172.1503586368979;
        Thu, 24 Aug 2017 07:52:48 -0700 (PDT)
To: oss-security@lists.openwall.com, Tom Herbert <tom@herbertland.com>,
 "David S. Miller" <davem@davemloft.net>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <459c5905-fded-264c-ac85-c5a456aa836e@linux.com>
Date: Thu, 24 Aug 2017 17:52:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c

Hello,

I was asked to investigate a suspicious kernel crash on some Linux
server. It is at least a remote DoS (and maybe RCE): Linux is crashed by
receiving a single special MPLS packet.

I bisected and found out that the bug was introduced in
commit b3baa0fbd02a1a9d493d8cb92ae4a4491b9e9d13
Author: Tom Herbert <tom@herbertland.com>
Date:   Thu Jun 4 09:16:46 2015 -0700

And was later fixed it in
commit a6e544b0a88b53114bfa5a57e21b7be7a8dfc9d0
Author: Tom Herbert <tom@herbertland.com>
Date:   Tue Sep 1 09:24:26 2015 -0700

So currently the mainline kernel is not affected.

However, this fix is obfuscated and looks like unimportant code
cleanup from the first glance. IMO that is not good. Moreover,
the fix is a part of a branch which breaks the kernel build, so
bisecting was not easy.

Actually the vulnerability is the usage of uninitialized variables. It
is caused by returning true without setting values for n_proto, ip_proto
and thoff in __skb_flow_dissect().

Is it worth requesting a CVE ID for that issue?

Best regards,
Alexander
