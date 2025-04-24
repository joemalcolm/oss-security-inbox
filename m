Received: (qmail 1490 invoked by uid 550); 24 Apr 2025 19:06:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1469 invoked from network); 24 Apr 2025 19:06:37 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-110S0041dacd5d4-9d85-4b99-9bcf-692625b0da53,
                    C599E09761ECF965EF1BFC6EDE20ABAD59BC27E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.176.68
Date: Thu, 24 Apr 2025 21:06:26 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250424190626.4qoptkgyk7tj6c74@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <tencent_11C8C35C2CF529292F8447A8@qq.com>
 <20250424183209.GA22610@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250424183209.GA22610@openwall.com>
X-Ovh-Tracer-Id: 10066671069884787921
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvhedtvdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleefveefudehiefhueelvdevieetvefgkeeifeevkeelfffgieeifeekveeijeeknecukfhppeduvdejrddtrddtrddupdefuddrtddrudejiedrieeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheeffegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=PQwHhon/5tsaPbmT5JdQBeNUZmBZrRTXoFv28WQ52po=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1745521589; v=1;
 b=I2Kw9+S/lcHkMNZCzgQBUXAire/up3MAc19XzNjfwDz+1b3UP7XjHbzLBzKDi3sGmpQB1qCD
 VMw7YN7ET6PGj7Yu2BLHFBgCmMEixOV33LatWKTDx1n8WN0GCgs0stWgxzjObLjq9ojzffioZ1M
 LcGBcryUwY+HHMMD1qPI96baG9CLA88aWks4Dg3jidh8J5oUNVzhNBZwus+ZzmJAhvu2R+Kw6u7
 3BccNJaBRbUg2gHEHEiuMKT3DrDZGeIgcL4hgdg9CisAbbGAwnFFlun6ZGFpdT1a1oK0WBZDP1f
 0RXTQ4UFb+7RyJpHej8gABiU8DDtzPwXfg13z2E2uF4eQ==
Subject: Re: [oss-security] CVE-2025-3512: Qt Base QTextMarkdownImporter
 Front Matter Buffer Overflow

* Solar Designer <solar@openwall.com>, 2025-04-24 20:32:
>There appears to be a growing trend towards calling OOB reads "buffer 
>overflows".

Part of the problem may be that AddressSanitizer uses this unforuntate 
terminology; you get something like this:

     ==7802==ERROR: AddressSanitizer: stack-buffer-overflow on address 0xf5f00021 at pc 0xf79c113e bp 0xfff496e8 sp 0xfff492c4
     READ of size 2 at 0xf5f00021 thread T0

-- 
Jakub Wilk
