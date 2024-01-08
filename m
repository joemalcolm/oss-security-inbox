Received: (qmail 11400 invoked by uid 550); 8 Jan 2024 05:51:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11382 invoked from network); 8 Jan 2024 05:51:28 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-108S0021dbddf80-95fa-4d6c-8a05-8acc691c15d8,
                    BD3F980C34F31EC18D6FCDC8F19708306DECAE39) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.20
Date: Mon, 8 Jan 2024 06:52:42 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240108055242.nyoj4uosjl6udonx@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de>
 <20230317194102.wvso2ex65fuwbukg@jwilk.net>
 <20230319091821.6f2073fb.hanno@hboeck.de>
 <20230321154519.xoymfc2t6ixalgls@jwilk.net>
 <20230324195650.6785dd20.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230324195650.6785dd20.hanno@hboeck.de>
X-Originating-IP: [37.59.142.108]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d0d65d59-bda0-4b2d-b134-db21b12874ea
X-Ovh-Tracer-Id: 10208534455830107927
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrvdehiedgvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepueehgeeltedtheevuddugfegffetkeegveefgeeuheefgfehledvheejieevjeffnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtkedphedrudejvddrvdehhedrvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

* Hanno Böck <hanno@hboeck.de>, 2023-03-24 19:56:
>Here's a proposed patch to restrict access to the dangerous 
>functionality.

This patch has been included in Linux v6.7:
https://git.kernel.org/linus/8d1b43f6a6df7bcea20982ad376a000d90906b42

-- 
Jakub Wilk
