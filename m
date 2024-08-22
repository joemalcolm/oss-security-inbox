Received: (qmail 32168 invoked by uid 550); 22 Aug 2024 20:04:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32685 invoked from network); 22 Aug 2024 19:20:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1724354408; x=1724959208; i=andreas.stieger@gmx.de;
	bh=5h9vtc1+R6JUnGuyaujpgHs/kVqgC/vlohBFgyb5jiA=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:From:Subject:To:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=JuPoUtfOLA8Jnc5zWHAiZdh91I8AyuxiaXyYS8/LeZ9v6etg4IexjSTUObE9RXU8
	 dSexamwusMwKIEyge4EvSeWmsutaMqyWf0BF0N5krkRbhVTnT4WNYAj8OJIcovZUt
	 HNj1vAJ7SpzdD5492KI0r/qx0a6CQoSifPtmDHbv2FRorRqUwo108PR7iNp0HR/qk
	 43IoL9xNW2RnXtkHT+mxU97+JZi7KhAJlksRSVbjAZQ0PaY5e2uVtiBTO/WImbcMU
	 v8N9Q/PAB8CIHaolCLXwEnzrp29JzlARwNlgYoiE+qmaP2qr9kQeIw+HMLJ/9PcOh
	 lbCZmqno97Al8epKaA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Message-ID: <1e072614-f38c-42ae-8710-d399326731a9@gmx.de>
Date: Thu, 22 Aug 2024 21:20:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Andreas Stieger <Andreas.Stieger@gmx.de>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:t7ggLLmQndwvzAXjwJpC67JOusT0vMksGddP7szHDj0FKbkTThb
 LTj5OFCrXdoqQZOGcTo4BOJV9o5OdvPY4kU42W6wiyf2x0PtTur8ZNHEeeqqtCZ9diW7fGX
 yRrX0jSrOaNnNoJdNa4VZLWjEZJJNRFYIRdqsOAE8f1/eTCCTy+BtN86cxf3V3C6yRgVhEb
 OxLDP2+pz6EwF6slMb8jg==
UI-OutboundReport: notjunk:1;M01:P0:WuMTo0FrVm4=;SxRBhwhWofe5nKdPI6/AxpWfoAY
 X+GX4DVZDzmCSJANw/lEjpvqFJDndjnLcRJgZL1WvAM6OJ9/WkppsLDE/obPMH6BZrvzQSGqV
 gxeofm7snJd1/448Nk4IjSCUxIR5ndY9dV0mfBsdoAzwOS8ZVWeLJkb6FCt2Ll8U2e98luPqs
 7gp1ke3UY61kVtbw7hW6GSfwytjCzk4YdhXf6AYJ/h7kQwsX8MS1n66/nTTytANvKleF6Nj7m
 NxhvcXsC1NGlaL5bZFWx/qqNYvU9/mvKCIAeNDUtTaVtjJJEO4O2S0rybfYcPVl3lW57fSV2B
 IM+/7/QWzR3oqr3XpMH+B/G5H+TeM/wX80yL9kQ0dK0el+JLbw/c/ORd9oUOSOy8vVLs9PdaI
 GzDW836ouTmW/EhycA5BMZYJ0YLXb21z2OaBQiZpT3BlGytva01eBPoadgG8WraEToCl2IGjl
 mF8zPyCWaKTcBflMg42Xy8zY1iMGjgJ/QW5fuSqREdkrvGhF0vJ7LyPeF0bvsJcofu6LWlqFb
 kAgZupBAcWXh2h17SoqUIWxzRqXfUwggQi7uTN3m2qTo1Isremmz0ZaqdUpVM493z2d7huRri
 P3IQVNGhh/QZdOV031wSShzUemJm1wuOVBNVHP5w4Qm9DUIr6xQn3KAcQDyGFOTI2y6XwuS+6
 vEcl/E9XGuh03wBkfCNFtvouwUYP7/cP6zWSj1+c3/dC3J4Nux1O6KwX787hYBzcryQwoRmaS
 3oJWT5PjlT2NFGtS2/6T6/e7+1mqDuN7COr+19UUM3bLGIFcs8hiZwm5oc3er8wxegCHzTtCZ
 +S8CpKhWtecfM0wAE42yk4Wg==
Subject: [oss-security] gh:facebook/rocksdb v9.5.2 - SupplyChainAttackPoC for Meta BB

Around 2024-08-21, the following tag appeared:
https://github.com/facebook/rocksdb/releases/tag/v9.5.2

The GitHub release is titled "v9.5.2 - SupplyChainAttackPoC for Meta
BB". This might be an an extremely unlucky choice of a release label, a
joke, or what it sais it is. The two previous tags claimed in the
release notes were not pushed.

 From the archive pages I see the short commit for this tag changed from
d1826fb to a7e70f9.

https://web.archive.org/web/20240821151922/https://github.com/facebook/rock=
sdb/releases/tag/v9.5.2

https://web.archive.org/web/20240822053615/https://github.com/facebook/rock=
sdb/releases/tag/v9.5.2

Similarly the cached preview images, and possibly the github internal
title, seem to changed in the 14 minutes timestamp diff between two
social media posts:

https://x.com/RocksDB/status/1826276807060173257

https://www.facebook.com/groups/rocksdb.dev/posts/8216045841827191/

The diff points to a fat-fingered release that missed some changes and
was quickly corrected.
https://github.com/facebook/rocksdb/compare/d1826fb..a7e70f9

Violates at least the principle to never reuse release numbers or make
changes to public tags. Let's not do that. The only other thing I saw
that the project stopped using the meta git bot not so recently. That's
all I know.

Andreas

