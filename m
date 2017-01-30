X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["274" "Monday" "30" "January" "2017" "08:09:27" "-0500" "David Manouchehri" "david@davidmanouchehri.com" "<CAJEJqRw=B_7TCQpR5rye09p45rOQ7o5hC2cxWyVJwtxiNy2DGg@mail.gmail.com>" "8" "Re: [oss-security] FW: [DSA 3775-1] tcpdump security update]" "^Date:" nil nil "1" "2017013013:09:27" "[oss-security] FW: [DSA 3775-1] tcpdump security update]" (number mark "        david@davidm Jan 30    8/274   " thread-indent "\"Re: [oss-security] FW: [DSA 3775-1] tcpdump security update]\"\n") "<20170130012137.GA20854@jasmine>" ("<20170130012137.GA20854@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17441 invoked by uid 550); 30 Jan 2017 13:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3597 invoked from network); 30 Jan 2017 13:09:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=davidmanouchehri.com; s=email;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=A9oNzUk56B1Pzd3pODD6VGmwzsZtShlCH81gaK8XsO4=;
        b=EK9GNpbvadOH8n45EvAjos/VGXfy4qTu7fkdsnsIM6zlDdxNgMrrYT49GYD7JEx1YB
         mabb6Iauof2IrdAgAb7hxdamdd9F7Zh/mLPMnkkORMC6OaIsm8HEzFb2g/8jHdL9mrWn
         pGY04CnJODqR/9sQvf0t13mpG/SSp/GrhlBPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=A9oNzUk56B1Pzd3pODD6VGmwzsZtShlCH81gaK8XsO4=;
        b=GDzU/IdsBSAfkioWWLH4bDw12hf8aD7aqDXJ0YNH6rLp+8oIcsUnMpCd46DCPlaIFR
         NIalZlyOnDWVk/yxuViXH1YJ0gks2L6mFHzW52AWBpZZo3xusLgr9Pv9LuJW9nTsWzoZ
         chxekBfGtEjseMSfBKd3xnd3TDBgFFKhRxQPToGGFqiPNykgMAEwbBaBq2r4FTZ9r+3B
         2gc+gHesIXtmYR5eF7CiIVLHPUBazcV0DmQxNUdCrZUZSnFNsL00KrjYpW2ntHHgkiPU
         OirDUXgD8+NVOoKDZPAD5iMDNxKryWEmcZmztjZpHm6SO1f14LbMCklQjDsvzGAxZSwm
         fE1Q==
X-Gm-Message-State: AIkVDXIP3RVWLvO5DV3uHN2G1QZr0AP6GuAf1zgY4siDZYWYXRp/Ex3PLXlmOdD1KaZBTNAAVJMfPxGdNRO2UA==
X-Received: by 10.129.91.194 with SMTP id p185mr14204630ywb.50.1485781768359;
 Mon, 30 Jan 2017 05:09:28 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [159.203.13.44]
In-Reply-To: <20170130012137.GA20854@jasmine>
References: <20170130012137.GA20854@jasmine>
Message-ID: <CAJEJqRw=B_7TCQpR5rye09p45rOQ7o5hC2cxWyVJwtxiNy2DGg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1148391684a15905474f8649
Date: Mon, 30 Jan 2017 08:09:27 -0500
From: David Manouchehri <david@davidmanouchehri.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] FW: [DSA 3775-1] tcpdump security update]
To: oss-security@lists.openwall.com

--001a1148391684a15905474f8649
Content-Type: text/plain; charset=UTF-8

The source along with samples can be found over here.

https://anonscm.debian.org/cgit/users/rfrancoise/tcpdump.git/commit/?id=b4f4a803b9b5f9d507201cd1c48ddd992a62aee2

--001a1148391684a15905474f8649--
