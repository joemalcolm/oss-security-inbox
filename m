Received: (qmail 32531 invoked by uid 550); 17 Apr 2024 14:39:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32510 invoked from network); 17 Apr 2024 14:39:12 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-101G004bec8e5ed-921d-40b3-a781-315e93c09494,
                    5DD29A3285C2AD332903474785A3CCA8CD8448F3) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.248.224.215
Date: Wed, 17 Apr 2024 16:38:54 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240417143854.66rgilsjticr3cp5@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: e30550ba-2f83-46a9-9883-541089a87c8f
X-Ovh-Tracer-Id: 16070813798819485463
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudejkedgjeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeekgfekveeiffeftefghffgfeevhedugedvvdehudfgudeugfffhfekjeejvedtudenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddupdefjedrvdegkedrvddvgedrvdduheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

* Andres Freund <andres@anarazel.de>, 2024-03-29 08:51:
>d) LANG needs to be set

If timing "sshd -h" is a reliable method of checking if the backdoor is 
active, then this is not correct. It seems all you need is non-empty 
environment:

    # time env -i /usr/sbin/sshd -h 2>/dev/null

    real    0m0.009s
    user    0m0.004s
    sys     0m0.005s

    # time env -i X= /usr/sbin/sshd -h 2>/dev/null

    real    0m0.345s
    user    0m0.337s
    sys     0m0.009s

Further evidence that LANG doesn't matter:
* LANG is not on the list of extracted strings[0].
* Some folks[1][2] misspelled LANG as LC_LANG, and apparently it still 
worked.

[0] https://gist.github.com/q3k/af3d93b6a1f399de28fe194add452d01
[1] https://gist.github.com/smx-smx/a6112d54777845d389bd7126d6e9f504
[2] https://github.com/binarly-io/binary-risk-intelligence/tree/master/xz-backdoor


>I am *not* a security researcher, nor a reverse engineer.

Congrats, you've just made a lot of people feel inadequate. :P

-- 
Jakub Wilk
