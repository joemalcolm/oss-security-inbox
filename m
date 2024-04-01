Received: (qmail 27712 invoked by uid 550); 1 Apr 2024 13:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27694 invoked from network); 1 Apr 2024 13:31:31 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-96R00135a18e94-3861-4ae8-8091-bb51ce31a495,
                    9894E43FA8F61635292BAAD28B64E0AD0DDC1129) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.176.189
Date: Mon, 1 Apr 2024 15:31:13 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240401133113.6iym7uncf2rjoeql@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330220009.GA15050@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240330220009.GA15050@openwall.com>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: f12ac530-4920-4bf0-9cbe-320b8b5ec1c7
X-Ovh-Tracer-Id: 13198361659862931223
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudeftddgieeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelffduueelheevhfdvjeejfeduvdfhuedvjedttdehgedugfetgefgudfgjeffudenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleeipdefuddrtddrudejiedrudekleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

>The check whether the script is running on Linux was added in 5.6.1, 
>and the fact that it's repeated 5 times makes this pretty funny

There's yet another Linux check in stage 2:

    [ ! $(uname)="Linux" ] && exit 0

... but it doesn't work. (Note that spaces around the equals sign are 
missing.)

-- 
Jakub Wilk

This e-mail may contain confidential or privileged information. If you 
are not the intended recipient (or have received this e-mail in error) 
please notify the sender immediately and destroy the universe.
