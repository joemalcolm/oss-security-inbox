Received: (qmail 23979 invoked by uid 550); 24 Jun 2023 06:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23961 invoked from network); 24 Jun 2023 06:29:14 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-97G002069c0605-6432-48b6-828e-e04b2079d35d,
                    CEF47B23AFC8FCF4343565AAEC5CE9EE8E5F06FB) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.126
Date: Sat, 24 Jun 2023 08:29:00 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20230624062900.7nu5keinnfducn22@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <72BCBA86-4192-47C9-ACA7-5F1A39994104@amazon.com>
 <CAH8yC8njh+1Q2QHvkN2pwAFWsL+v1HdxFYZYBDjk9h9qZHUcfA@mail.gmail.com>
 <ZJVDYZd5Q_cGtMcL@symphytum.spacehopper.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZJVDYZd5Q_cGtMcL@symphytum.spacehopper.org>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 2aaac724-1dff-4b2b-92e1-6daa16de76ea
X-Ovh-Tracer-Id: 10173350085371025175
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrgeegiedgieeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetudethfelieeijeejleegkefhtedujeekleefveffleevkeeljeffueethfdutdenucffohhmrghinhepghhnuhdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejpdehrddujedvrddvheehrdduvdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

* Stuart Henderson <stu@spacehopper.org>, 2023-06-23 08:01:
>>Another offender from GNU is ncurses. It leaks like a sieve, too.
>also not GNU

ncurses is a GNU package:
https://www.gnu.org/manual/blurbs.html#ncurses

-- 
Jakub Wilk
