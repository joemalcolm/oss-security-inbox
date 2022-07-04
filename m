Received: (qmail 19662 invoked by uid 550); 4 Jul 2022 15:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19644 invoked from network); 4 Jul 2022 15:00:42 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-102R004f6bec8ef-c155-4115-9407-cd9c28905c4d,
                    71F9AC4D7AE0181B07F897B013AD32A2E64E1A30) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.131
Date: Mon, 4 Jul 2022 17:00:29 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <YsLj+ux2Pgkir5F8@adhil>
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 2818e6f0-5384-43f6-9b80-fa55868b5e92
X-Ovh-Tracer-Id: 39969447777261335
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudehledgkeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelffduueelheevhfdvjeejfeduvdfhuedvjedttdehgedugfetgefgudfgjeffudenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhohedvle
Subject: Re: [oss-security] DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

As a data point, if Mutt has pgp_auto_decode=yes ("automatically attempt 
to decrypt traditional PGP messages") in the config, it will trigger the 
DoS when you view the message.

(And it seems that if you lose patience waiting for the message to show 
up and press ctrl+backslash in attempt to make it quit, it will actually 
hang forever.)

-- 
Jakub Wilk
