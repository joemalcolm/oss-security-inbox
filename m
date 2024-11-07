Received: (qmail 9761 invoked by uid 550); 7 Nov 2024 09:21:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9743 invoked from network); 7 Nov 2024 09:21:40 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-101G004e77d54a5-9ffc-4c39-9209-3a41cc7d017d,
                    FF1ED9190CE1D8155BD1F5405040E299EB659B1F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.224.32
Date: Thu, 7 Nov 2024 10:20:43 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20241107092043.nkeldhmhc3sbur3o@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20241106041215.GA4432@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20241106041215.GA4432@openwall.com>
X-Ovh-Tracer-Id: 9699064748788231377
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefuddrtdeggddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhtdffhfdvudeufeehudeiieejfeefheefgfegieejfefggffgtdeuhfdthffhveenucffohhmrghinhepshhouhhrtggvfigrrhgvrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrvdegkedrvddvgedrfedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheefgegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=Z5sdX/Ys9vq72YPf0AmosIPAOhZnGS8UefJ8CUlXeEA=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1730971291; v=1;
 b=pU3L1HQt/T5fNplZljeBFpassceZp/mrEuLMuhrTs3fM5NwP8DJAt6WZl0R6HBXRbrqM1IYU
 nvmiwqd3SytI62c3w45qjvYEZiI9NLgb/RLNXR62uRLWkOaJ1Rca1HEWkVxGPe3cwpat2q+j3+4
 0zwgxPQGv5eFwKLGc+ZILIHktLud8nKcZOycSiwxMvNTNsvljwDaeyx3hYZfF/BE6z45zBuj6NY
 GmfuryAfPLOEkSDSRwhQQXxtQha5rhk88FZ9cbcLy+ocG0Hk8FQJrn5lQ6VRYZ1diyVige+m0lm
 UMuk/DR20JN5L+/h96HXYMF5JGrGgAxlkZ0gOUvIYVzfQ==
Subject: Re: [oss-security] shell wildcard expansion (un)safety

* Solar Designer <solar@openwall.com>, 2024-11-06 05:12:
>Can the shells do anything to mitigate this?

Bash and glibc's getopt() tried to mitigate this back in 1996/1997, but 
it didn't work out.

* https://sourceware.org/cgit/glibc/commit/?id=bf079e19f50d64aa5e05b5e1
>author	Zack Weinberg <zackw@panix.com>	2017-03-29 16:58:58 -0400
[...]
>getopt: remove USE_NONOPTION_FLAGS
>
>glibc's implementation of getopt includes code to parse an environment 
>variable named _XXX_GNU_nonoption_argv_flags_ (where XXX is the current 
>process's PID in decimal); but all of it has been #ifdefed out since 
>2001, with no official way to turn it back on.
> 
>According to commentary in our config.h.in, bash version 2.0 set this 
>environment variable to indicate argv elements that were the result of 
>glob expansion and therefore should not be treated as options, but the 
>feature was "disabled later" because "it caused problems". According 
>to bash's CHANGES file, "later" was release 2.01; it gives no more 
>detail about what the problems were.
>
>Version 2.0 of bash was released on the last day of 1996, and version 
>2.01 in June of 1997. Twenty years later, I think it is safe to assume 
>that this environment variable isn't coming back.

-- 
Jakub Wilk
