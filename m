X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2384" "Tuesday" "15" "March" "2022" "18:56:32" "+0100" "sirdarckcat ." "sirdarckcat@chromium.org" nil "67" "[oss-security] CVE-2022-0742: Remote Denial of Service on Linux Kernel >=5.13 icmp6" nil nil nil "3" nil nil (number mark "U       sirdarckcat@ Mar 15   67/2384  " thread-indent "\"[oss-security] CVE-2022-0742: Remote Denial of Service on Linux Kernel >=5.13 icmp6\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-0742: Remote Denial of Service on Linux Kernel >=5.13 icmp6" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22140 invoked by uid 550); 15 Mar 2022 18:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11474 invoked from network); 15 Mar 2022 17:56:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=XL9Sjz7Dzdr72UvBhvnasssqlU8jXO2AgxFvh9lM04I=;
        b=JjtzGyyU6KoINTWm2ppRYf6q/a3PNpaS7UBxyJcTkkJHrigbH9sicxjw8qZiTiJpb+
         l6hqHU+XDClmc0JZjlO2Xwhk6XIF3McEfwjBIheWoZFRQvRWSTwRb9UTmMkcW8HRZhFg
         dfChOkA7ZS6Q731gc6vEEvplXtSz+bFWTGgQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XL9Sjz7Dzdr72UvBhvnasssqlU8jXO2AgxFvh9lM04I=;
        b=LxrtNrG+MEaKkxRDaw0Q/jOTjwGL/eWih3YJvE+j+jj6KkbSyJU2tFlFv+ApmIMPTm
         8dd8Up5ZfBr05yDAi1XCD3jNKd+mrK3YUePYw/Hf+T73w0+rxYjBJBzAliOFu7sSxMaN
         gMsTSta57r/xMogD9/9KJKQU8YLh/HD6O9vvMRs7a7qO5iyVltLGWme0isAIpiqTxAX5
         RS59msAgm9DNS5KFjoGrfOnTVe/8EmVg9AmacaO/FIUbiTBQq1b2LARCCY5IilfiUHZe
         cbkkeuZVSpUZmhxOi2o9q8U0Q0vASHh7cgfvT/cRgC7obIHI/CWrvv5i/PAN6FPFNFHw
         VG5w==
X-Gm-Message-State: AOAM532LglNIyIb3dPufb8kJnuBSYRX4oRgo8WUWQVkx7tAGzxPiLupn
	F4ZBhh7KxMXF4Hc2RrYYTfwv1EoSw4X1ZdEWW8Xz6Q==
X-Google-Smtp-Source: ABdhPJwhyD5xLqaDtvkirLK5G5MOdtDCTJSo9dM9CBUI/Q9YNoSE9jH2rxwFxGxOvzobEsKkc2xRrQ0meocHLuKq6Ek=
X-Received: by 2002:a17:902:d482:b0:153:12b0:60b5 with SMTP id
 c2-20020a170902d48200b0015312b060b5mr29226629plg.105.1647367003248; Tue, 15
 Mar 2022 10:56:43 -0700 (PDT)
MIME-Version: 1.0
From: "sirdarckcat ." <sirdarckcat@chromium.org>
Date: Tue, 15 Mar 2022 18:56:32 +0100
Message-ID: <CAO06FutBccV46=p1+dGgpP1_UdyXYLYTjiMfKBVq2JoVKd4Yrw@mail.gmail.com>
To: 3pvd@google.com, Eric Dumazet <edumazet@google.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-0742: Remote Denial of Service on Linux Kernel >=5.13 icmp6

Flooding icmp6 messages of type 130 or 131 is enough to exploit a
memory leak in the kernel and cause the host to go out-of-memory. The
volume of traffic doesn't need to be particularly high. Note that
since the vulnerability was introduced recently (5.13) only 5.15's
stable was affected.

This vulnerability was found/fixed by Eric Dumazet.

CVE will land on MITRE's website sometime this week.

This was fixed on https://kernel.dance/2d3916f3189172d5c69d33065c3c21119fe539fc
 "the commit landed on upstream on": [
  {
   "tags": "tags/v5.17-rc7~18^2"
  }
 ],
 "the commit was backported to": [
  {
   "tags": "tags/v5.16.13~140",
   "commit": "5ed9983ce67341b405cf6fda826e29aed26a7371"
  },
  {
   "tags": "tags/v5.15.27~216",
   "commit": "771aca9bc70709771f66c3e7c00ce87339aa1790"
  }
 ],
 "the commit fixes a bug introduced by": [
  {
   "fixes": "f185de28d9ae (\"mld: add new workqueues for process mld events\")"
  }
 ],
 "the buggy commit landed on upstream on": [
  {
   "tags": "tags/v5.13-rc1~94^2~371^2~1",
   "commit": "f185de28d9ae6c978135993769352e523ee8df06"
  }
 ],

Patch: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2d3916f3189172d5c69d33065c3c21119fe539fc

ipv6: fix skb drops in igmp6_event_query() and igmp6_event_report()
While investigating on why a synchronize_net() has been added recently
in ipv6_mc_down(), I found that igmp6_event_query() and igmp6_event_report()
might drop skbs in some cases.

Discussion about removing synchronize_net() from ipv6_mc_down()
will happen in a different thread.

Fixes: f185de28d9ae ("mld: add new workqueues for process mld events")
Signed-off-by: Eric Dumazet <edumazet@google.com>
Cc: Taehee Yoo <ap420073@gmail.com>
Cc: Cong Wang <xiyou.wangcong@gmail.com>
Cc: David Ahern <dsahern@kernel.org>
Link: https://lore.kernel.org/r/20220303173728.937869-1-eric.dumazet@gmail.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Timeline:

Following https://about.google/appsecurity/ policy:

Feb 23, 2022  - Discovery / Shared with network upstream maintainers,
reproduced, patch confirmed to work, CVE reserved
Feb 25, 2022 - security@kernel.org decides fix/disclosure timeline
Mar 3, 2022 - Patch lands on mainline (Linus tree)
2d3916f3189172d5c69d33065c3c21119fe539fc
Mar 8, 2022 - Patch lands on stable (5.15/5.16)
Mar 15, 2022 - This email is sent (public disclosure of vuln details)
