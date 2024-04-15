Received: (qmail 24303 invoked by uid 550); 15 Apr 2024 07:41:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24270 invoked from network); 15 Apr 2024 07:41:02 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-97G002f922d1cc-52c9-434a-b59a-d273db8a126b,
                    0EE83C13C92660C97940DEA184FC354BE13181F4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.176.33
Date: Mon, 15 Apr 2024 09:40:49 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240415074049.f53my6ldxjplyt5z@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240412122031.pt2sx6rasca3mgpu@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240412122031.pt2sx6rasca3mgpu@jwilk.net>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: a85abb44-a89c-463c-a19f-a214313aaa60
X-Ovh-Tracer-Id: 15709962878459434775
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudejuddgjedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelffduueelheevhfdvjeejfeduvdfhuedvjedttdehgedugfetgefgudfgjeffudenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejpdefuddrtddrudejiedrfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhohedvledpmhhouggvpehsmhhtphhouhht
Subject: [oss-security] Re: less(1) with LESSOPEN mishandles \n in paths

* Jakub Wilk <jwilk@jwilk.net>, 2024-04-12 14:20:
>less(1) does not correctly escape newlines in pathnames when 
>constructing command line of the input preprocessor.

CVE-2024-32487 was assigned to this bug.

-- 
Jakub Wilk
