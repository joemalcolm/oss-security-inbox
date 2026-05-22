Received: (qmail 13380 invoked by uid 550); 22 May 2026 05:40:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13839 invoked from network); 22 May 2026 05:25:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=frasunek.com;
	s=netium; t=1779427539;
	bh=xuAZGnmV7I9UhdatM3kkiAA39C1vwH71yT44T/9VKhs=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=GIggjx2l7/tY5Sax3/vYkHZIYuUigOy0V6aAficIPASmN+BV4bcPCMpwnRUSrXpvm
	 aJO5jloIPH2ydmYFvLVhsm4v72E3vQ0oPM/wya7t0igELJNbXf7A4LJ5KeCmhgQQhv
	 PfqGvHRlkrI9VgrfkFa9Z8zzuJZN9dxehq4zI2NA=
Message-ID: <eb0b89a8-f538-4d08-9c10-1ed88c18ea1f@frasunek.com>
Date: Fri, 22 May 2026 07:25:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <63a2f265-6bbd-4799-b33d-1e9939d5c004@frasunek.com>
 <20260521205333._LNHlSaf@steffen%sdaoden.eu>
Content-Language: pl
From: Przemyslaw Frasunek <przemyslaw@frasunek.com>
In-Reply-To: <20260521205333._LNHlSaf@steffen%sdaoden.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2026-45250: FreeBSD setcred(2) stack overflow
 -> local privilege escalation (FatGid)

> You mean 4cd93df95e (2025-11-14), then got fixed by the mentioned
> due to some other problem.
Thank you, corrected on the website.


