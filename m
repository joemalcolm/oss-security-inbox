Received: (qmail 11823 invoked by uid 550); 17 Apr 2023 06:41:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11800 invoked from network); 17 Apr 2023 06:41:10 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-105G006cbf2d016-a4b8-4558-88ad-237392674621,
                    114B3979153A430EE44172AD86CC82E9521C4D28) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.205
Date: Mon, 17 Apr 2023 08:40:47 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20230417064047.dhrrkuzjmtx4yhgj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230416205727.0XQJ2%steffen@sdaoden.eu>
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 6d16f449-ba6d-40d8-a73d-f1c9a84c24e6
X-Ovh-Tracer-Id: 16859788158116878103
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdelhedgudduvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleffudeuleehvefhvdejjeefuddvhfeuvdejtddtheegudfgteeggfdugfejffdunecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdehpdehrddujedvrddvheehrddvtdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

* Steffen Nurpmeso <steffen@sdaoden.eu>, 2023-04-16 22:57:
>have you verified that they do not use isatty(3)

I'm pretty sure they do. But isatty(3) is implemented using the TCGETS 
ioctl, so that doesn't help.

-- 
Jakub Wilk
