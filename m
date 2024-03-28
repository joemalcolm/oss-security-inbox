Received: (qmail 1700 invoked by uid 550); 28 Mar 2024 08:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1682 invoked from network); 28 Mar 2024 08:34:07 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-96R001660ad72f-4d43-4784-a1f2-ec40bab3df9d,
                    550D8DD64E3FED2EEAB3EBDC7A96330506108FE4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.176.213
Date: Thu, 28 Mar 2024 09:38:41 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240328083841.bua26s3neakdegmg@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
 <gdxwstno6ihmajmbjq3vbdjzgwseiihpdhv234dqzvu443uhdi@s7vcp44ktqls>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <gdxwstno6ihmajmbjq3vbdjzgwseiihpdhv234dqzvu443uhdi@s7vcp44ktqls>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 85575a6a-21a2-4f78-9173-11acbea40d79
X-Ovh-Tracer-Id: 3213036860672694039
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledruddukedguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvleeitefgffelvefhvdevjeegffelhedtveejtdeiudegveegheetieeffeffieenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeliedpfedurddtrddujeeirddvudefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhohedvledpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] Re: CVE-2024-28085: Escape sequence injection in
 util-linux wall

* nightmare.yeah27@aceecat.org, 2024-03-27 13:57:
>/etc/default/devpts

This file is used by sysvinit when mounting /dev/pts.

systemd doesn't use it. It mounts /dev/pts with mode=620 by default.

>/etc/login.defs

As far as I can see, TTYPERM from login.defs is used only by login(1) 
and sometimes¹ by su(1). If you log in through SSH, or run xterm(1) or 
screen(1) or... it won't have any effect.

It's all awful and undocumented.


¹ https://github.com/util-linux/util-linux/commit/17d5b264367debb7
   ("su: (pty) change owner and mode for pty")

-- 
Jakub Wilk
