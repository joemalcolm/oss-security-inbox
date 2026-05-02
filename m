Received: (qmail 25795 invoked by uid 550); 2 May 2026 19:46:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7223 invoked from network); 2 May 2026 19:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=terraraq.uk
	; s=20170701; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8j8a48KJUz1aLaA5Mf389osnMD8UPX0uUM4B67UxbVQ=; b=f6ZToOjTmSuagiKf80yu9ktmsN
	PWYBe7rYvDpXQGqNp3VelX7YXGv81Ruwmw7u+5XBWatNdqQkkpzz2QN42WwwIGlxD541EL5o1OJRp
	LHvcUdEEfO8EGy3i9J+Kbg4rUuEer/tbJJ2SeVMW7rtt8AQ6nvn3qE8b7BAx/OTXEzebsZBm+PNgO
	RSjdFEt7Yd23BHjkpHCpKlBDq4aM0SdG8sZqeNJG19eq9EpP8/lbTjevEbPtRTOviqoeCs7dpfCYY
	e2iYNTm16VUO6T+L9lOziXJt9N2qf5IDULyzME46pMA3Gl+OoTP9nCFM7ToX4Y7V/EwY1Fp3tl4VD
	QfB9G2Lg==;
Message-ID: <cfe5a1f5-f7fe-44a5-8af9-8e4c8d68b3d7@terraraq.uk>
Date: Sat, 2 May 2026 20:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
Content-Language: en-GB
From: Richard Kettlewell <rjk@terraraq.uk>
In-Reply-To: <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "mantic.terraraq.uk",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 postmaster@terraraq.uk for details.
 
 Content analysis details:   (-2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On 01/05/2026 16:30, Demi Marie Obenour wrote:
> On 4/30/26 03:19, Eric Biggers wrote:
>> But I also hope this finally provides some more impetus for AF_ALG to be
>> deprecated and removed.  It's a massive, largely pointless attack
>> surface which has been causing problems, including regular CVEs, ever
>> since it was added to the kernel in 2010.  And of course it's gotten
>> even worse lately, with LLMs now being able to find the bugs.
>>
>> Userspace crypto libraries exist.  There's no need to escalate to kernel
>> mode just to do some math.
> 
> The only reason I can think of to keep it is for embedded systems
> with weak CPUs and crypto accelerators that are actually worth using.
> However, those seem to be very rare outside of things like routers,
> which run specialized distros like OpenWRT.  Even when the accelerator
> exists and is worth using, AF_ALG is certainly not an efficient way
> to access it.

I have that use case, although fortunately it's in a context where 
splice() is disabled. But the requirement is for access to the SoC's 
accelerator - the interface doesn't need to be via AF_ALG in particular, 
it doesn't have to offer software crypto (and it might be better if it 
didn't), and it needn't be independent of the specific hardware 
(although in the bigger picture it'd be a shame if it wasn't).

ttfn/rjk

