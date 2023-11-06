Received: (qmail 13894 invoked by uid 550); 6 Nov 2023 15:53:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13869 invoked from network); 6 Nov 2023 15:53:41 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-110S00424ffb5f2-bc93-4e88-aaab-3d5e6bb71c44,
                    7469ECB41B307C9EA952388331F2B84A6BBAA60D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.13
Date: Mon, 6 Nov 2023 16:53:27 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20231106155327.vekxv4lvtal44aaw@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <9db1110b-7dbb-4e32-b174-b62672181c8e@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <9db1110b-7dbb-4e32-b174-b62672181c8e@oracle.com>
X-Originating-IP: [37.59.142.110]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 332b1021-c8fd-4125-8346-ba21b77932c4
X-Ovh-Tracer-Id: 863002279813961495
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedruddugedgkedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvueeukedugffhgeevffdvveeviedvveevhfetteffhfelleegfeefueehvdeigfenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhfvghrrhhouhhsqdhshihsthgvmhhsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdduuddtpdehrddujedvrddvheehrddufeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] Session File Relative Path Traversal in sudo-rs

* Alan Coopersmith <alan.coopersmith@oracle.com>, 2023-11-02 11:40:
>This vulnerability requires two pre-conditions:
>
>1) Your OS allows usernames containing both '.' and '/' characters.
>
>2) Your site allows users to create usernames containing both '.' and 
>'/' characters, with no process or manual review that denies such 
>things.
>
>If both are true, when sudo-rs created a filename containing the 
>username, it failed to escape the characters, letting them be 
>interpreted by the filesystem as references to higher level directories 
>('/../..' etc.)

The original sudo implementation is affected too:
https://github.com/sudo-project/sudo/commit/7363ad7b3230b7b0

https://ferrous-systems.com/blog/sudo-rs-audit/ says it's "a lower 
security severity due to [sudo's] use of the openat function", but I 
can't see how openat() would help.

-- 
Jakub Wilk
