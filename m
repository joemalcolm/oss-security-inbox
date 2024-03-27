Received: (qmail 9267 invoked by uid 550); 27 Mar 2024 21:26:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9246 invoked from network); 27 Mar 2024 21:26:04 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-108S0028d7a8364-0d25-49d0-a9eb-ec8133ff833a,
                    5AAA942BE824C4B082A029CBA7E388DE7AB437AA) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.177.23
Date: Wed, 27 Mar 2024 22:30:41 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240327213041.qyr7sglmxgdmtcb4@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
X-Originating-IP: [37.59.142.108]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 729b0dfd-502d-444c-9ee5-278373a877d1
X-Ovh-Tracer-Id: 10376856492959913751
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudduiedguddvgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvleeitefgffelvefhvdevjeegffelhedtveejtdeiudegveegheetieeffeffieenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdekpdefuddrtddrudejjedrvdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] CVE-2024-28085: Escape sequence injection in
 util-linux wall

While looking through upstream git for a fix for this¹, I stumbled upon 
another write(1)/wall(1) control character injection vulnerability, 
introduced last year in util-linux v2.39.

The offending commits are:

* https://github.com/util-linux/util-linux/commit/8a7b8456d1dc0e7c
   ("write: correctly handle wide characters")
* https://github.com/util-linux/util-linux/commit/aa13246a1bf1be9e
   ("wall: use fputs_careful()")

The added comment says:

>The locale of the recipient is nominally unknown,
>but it's a solid bet that the encoding is compatible with the author's.

Alas the bet is not that solid when writer's locale encoding is 
controlled by an attacker.

We can exploit this against terminal emulators that recognize C1 control 
characters, such as Linux VTs or screen(1):

    $ printf '\302\23331mMOO\302\2330m\n' | LC_ALL=kk_KZ wall

I don't see any good way to fix this on the util-linux's side. It should 
be fixed on the terminal emulators' side by disabling C1 support.


¹ https://github.com/util-linux/util-linux/commit/404b0781f52f7c04
   ("wall: fix escape sequence Injection [CVE-2024-28085]")

-- 
Jakub Wilk
