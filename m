Received: (qmail 24452 invoked by uid 550); 22 Dec 2022 14:44:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24432 invoked from network); 22 Dec 2022 14:44:58 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-95G0013e2a5c60-9529-40eb-a0e9-e606cacf6b0d,
                    ADD81B11AFEE846F4F39E71C2AFBFFFCA8191531) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.23
Date: Thu, 22 Dec 2022 15:44:45 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20221222144445.i6z7fifqily6uej5@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 64bcb972-27fb-4e8e-9e95-d052aa2dc997
X-Ovh-Tracer-Id: 7881017874864002839
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrhedtgdeikecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfeufefggeelfeejieelgffhvdeguddvkeejffdvkeevgeevgeeileeffedtleffnecuffhomhgrihhnpehophgvnhifrghllhdrtghomhenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

sudo was bitten by this back in the day (CVE-2017-1000367):
https://www.openwall.com/lists/oss-security/2017/05/30/16

-- 
Jakub Wilk
