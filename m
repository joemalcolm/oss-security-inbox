Received: (qmail 5510 invoked by uid 550); 31 Jan 2024 22:56:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5492 invoked from network); 31 Jan 2024 22:56:35 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-97G002cea16397-69f7-49e8-941d-ac277f0ec034,
                    587AE8BF4F6FCEEAA2476987BF8C58AFC86DDCAE) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.109.146.253
Date: Wed, 31 Jan 2024 23:58:40 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
CC: halfdog <me@halfdog.net>
Message-ID: <20240131225840.w7bgmi32juh6wcpz@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com, halfdog <me@halfdog.net>
References: <509811FD.70303@halfdog.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <509811FD.70303@halfdog.net>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: fc3e7c14-b540-4c3c-b54b-112e03e78a56
X-Ovh-Tracer-Id: 15036111781615753114
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrfedutddgtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeklefgffdtfffgheekvdeijedtudfffeeukeevkedthffhveefgeduieejtdekgeenucffohhmrghinhephhgrlhhfughoghdrnhgvthenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejpdefjedruddtledrudegiedrvdehfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhmvgeshhgrlhhfughoghdrnhgvthdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] TTY handling when executing code in different
 lower-privileged context (su, virt containers)

I'm a few years late, but hey.

* halfdog <me@halfdog.net>, 2012-11-05 19:22:
>The basic idea is, that a program started from interactive shell can 
>access the TTY and also inject input data using TIOCSTI ioctl.
[…]
>In both cases, paranoid administrators might decide to use /dev/null as 
>stdin/stdout/stderr

Redirecting unneeded fds is a good idea, but alone it's not sufficient 
to defeat the attack. The unprivileged process could open /dev/tty and 
then issue TIOCSTI on that fd.

>[1] http://www.halfdog.net/Security/2012/TtyPushbackPrivilegeEscalation/

This insufficient work-around is also mentioned on the website:

"When no interactive shell is needed in lower-privileged context, su et 
al. can be run with stdin, stdout, stderr redirection, not passing a 
tty-fd to the other context"

-- 
Jakub Wilk
