Received: (qmail 3651 invoked by uid 550); 21 Apr 2023 07:42:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3870 invoked from network); 20 Apr 2023 23:06:00 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=EzbCzdD4ckXE6VuhG8PUhyWqzGg=; b=FL7iH6erxQtY2zA4WZUzHTpoHWdk
	IOSfzfz0TrmwOw8jsrcvga9cySK6u/6bKGWPqCVlEICz4Vkm5c9XTraCoTIPZZYR
	jaW+adyLhDXsD5mJvSDW+2J76K/iOeC8dWJ8UJUbVZR6kZtDvN9TaLBuV9TWR8QA
	vKzCEKonM/0f3wusbHR4HrdonLhFnk7ASLsjm9Nes3O9a2vmwf6dJM8E3+sMKoOX
	UtmRAjT1TXJdxsbqtKBOvILNBBX7VMDneMU2hHWrZR5uRSqVyNUkzWx0eZjm65S6
	xRg/qOvAfCeIL9QGiwi7VW2MGMbgCPGqZdNDvC6F5iOgvCePbunbLLWNEQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=Uly
	iQsD+OWJeL2pVUFv7Nh47S7VU4lMQjexhu4MKil2UpF4PBJngGX2BOBynuz4jQOk
	hFwbQPyrthj+dLkRlLMjxA2pivwruenKhexnVwg2+jMZhBcMdy8+2cekXbGpsNuX
	gM7M2EYZgmnfrXs+hR5T03l7KeWLtpAq6cf9ptMlYiATnEZ/PnJVkdUC7+J+KTwu
	tQ1fVxmoYgCglH0T+7Bpm8eftP5A2oPyPWfvtS7VNV8EJvVp715yH0SCyx8uSVwd
	7zC2/Vj291Cd2PKpGUg1FDkXtWgZjpS+u3a9V8ytiWMWb2XhxqVYvUDgp5uSuOxh
	se/PXB5EdZIwSTEKfaw==
Message-ID: <622ff321-4b43-9b15-c450-7eab4da22269@geeklan.co.uk>
Date: Fri, 21 Apr 2023 00:05:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.0
To: oss-security@lists.openwall.com
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
 <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
 <MW2PR00MB0444E2AA4D31DB0021B8AE2FA862A@MW2PR00MB0444.namprd00.prod.outlook.com>
 <u1prvv$11g8$1@ciao.gmane.io>
Content-Language: en-GB
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <u1prvv$11g8$1@ciao.gmane.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] ncurses fixes upstream

On 20/04/2023 00:03, Tavis Ormandy wrote:
> Honestly, I kinda think it's an Apple bug 😄
> 
> (is their top binary open source?)

Yes, there's a source dump mirror on github.
https://github.com/apple-oss-distributions/top


Sevan
