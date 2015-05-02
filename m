X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1389" "Saturday" "2" "May" "2015" "18:31:12" "+0800" "Wen Xu" "hotdog3645@gmail.com" "<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" "42" "[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" nil nil nil "5" "2015050210:31:12" "[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" (number mark "        hotdog3645@g May  2   42/1389  " thread-indent "\"[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26390 invoked by uid 550); 2 May 2015 11:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31850 invoked from network); 2 May 2015 10:31:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=nSmrOfEdnqS+9YrkDFGW/udv/NRcycIFpnCNqVA1qi0=;
        b=JUUGyrLO3tCcYKASXCsS3ZjDehvNy+9YmRdLHVE1w5AvqAhpiztvl4uDdQsDNX1SZd
         yEEz+1woclaCEk15k4oz1GvAkj4Nv8KbuxiDfB87oAanvlfhxce1yGCEY7ImDIIQapc8
         fW9W0iwfbVZGAalyZXt9mdI4TuNDcdXWM0dlsRcSxYo6o2aSZHfyJQJwb5JCgPt+RV/n
         lgJjf+db7hniX3zBoltPHNc+8ukTeK/NUVvs7viUXPXzRTkr7eYFrqnQuHr1VVtnKqpY
         lkwV0MTzIeqVZr+aQ2nIh5AaJuHK53DTFT9p5mIfP1mRC2SSaIAGfkrHP5NNj54yVdWC
         4VIA==
X-Received: by 10.107.10.79 with SMTP id u76mr17216549ioi.79.1430562692319;
 Sat, 02 May 2015 03:31:32 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ee1701ad8b3051516d53d
Date: Sat, 2 May 2015 18:31:12 +0800
From: Wen Xu <hotdog3645@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel
 from KeenTeam
To: oss-security@lists.openwall.com

--001a113ee1701ad8b3051516d53d
Content-Type: text/plain; charset=UTF-8

Hi,
Recently we found a use-after-free bug which can lead to kernel arbitrary
execution in Linux kernel.
The bug was reported to the linux security group and it has been fixed.(commit
a134f083e79f ("ipv4: Missing sk_nulls_node_init() in ping_unhash()"). You
can find the fix commit here:
https://github.com/torvalds/linux/commit/6c3c1eb3c35e8856d6dcb01b412316a676f58bbe
The bug exists in all versions of linux kernel. And the credit is to Wen Xu
and wushi of KeenTeam.
I am looking forward to your reply.

Thanks,
Wen Xu @ Keen Team



---------- Forwarded message ----------
From: Willy Tarreau <w@1wt.eu>
Date: 2015-05-02 15:43 GMT+08:00
Subject: Re: Socket Vulnerability Report (Lead to kernel arbitrary
execution) from KeenTeam
To: Wen Xu <hotdog3645@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, David Miller <
davem@davemloft.net>, "security@kernel.org" <security@kernel.org>


On Sat, May 02, 2015 at 02:50:32PM +0800, Wen Xu wrote:
> Many thanks, we've already seen the patch commit ;)
> By the way, as security researchers, if we want a CVE number for this ping
> socket bug, where could we request for? What's the routine process for
this?

Now that the fix is public, you should ask oss-security, someone there
should provide you with one.

Thanks,
Willy

--001a113ee1701ad8b3051516d53d--
