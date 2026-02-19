Received: (qmail 32037 invoked by uid 550); 19 Feb 2026 00:10:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17880 invoked from network); 19 Feb 2026 00:06:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=IpNPsbpZykdcD2s+nF5h3FJA4lw=; b=qbIGtksc+LNWlZqjiskOwMhKFgBT
	EOWhZb5/JOcBQeDqHCZN3gRHq63jDUtCSTFYqT1FP+pZb6PNkiDYGMQh60bC8+a6
	cHZi5BUCPcioRG85FJtqqjLIRKrRx1bhwhtbZzc0y1mIbaazYp6V4B8PigdiilVK
	BJ0R3FeLuYTzRuPgKp0sL5A6Wjt5rj6o33Ahs4dRdwUBHChGZOvDL9CS1vY4HICg
	Eer7IuWec3TcHiYdSTIW6yUVxi5AxlNkFanfZAN3BgnzOFVTx0ZhZPl5rLysXCuE
	Akss9G+82tpECjFcpbLxsRrjtc+N00JtTJTSAKFrZMcOpWHBsG2oebHVLA==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=coK
	p+FqjnSKTOiHQuRW9aXtAdRZgoAYf8iLKyGpsZKURKX2D0tFT7oAg2b3c+lJIk7H
	1mFLu3NIOpY0wvlNZZgVHTicdC7NVhtfu/iDE2Rtfh1Nl65RiCqwmMmIyAvYGf0t
	BEzdKZ787eCMflwv77rF1XJjJgMBg26Czh03jjIGYBsI7kGDufIXda/Iazt0HKNf
	p5AREMUSUM4EzAWiwTn425EST2JXvln58kwGowqsNpd61wchpngCtf5teQCbzpan
	MBKi8CX7JCZuzv3ByaReaJSViMvRo9avj9srz7TuhbASuC2UVX0u5a503is0FXCi
	9HxqhKi8rU5o4HgqE4A==
Message-ID: <91f5f502-2d9d-40cd-8518-1f6526030870@geeklan.co.uk>
Date: Thu, 19 Feb 2026 00:05:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <87seazqslh.fsf@gentoo.org> <87a4x7awxe.fsf@josefsson.org>
 <515f855d-cb54-4eb4-912f-a88454e6a26b@geeklan.co.uk>
 <75f0e607-6842-4f5e-b523-64f5cbcdc883@geeklan.co.uk>
Content-Language: en-GB
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <75f0e607-6842-4f5e-b523-64f5cbcdc883@geeklan.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: zlib security audit by 7asecurity

On 18/02/2026 12:15, Sevan Janiyan wrote:
> Dug in a bit further and realised the logic in gzguts.h makes the wrong 
> assumption about "if C89/90, assume no C99 snprintf() or vsnprintf()" as 
> these functions have been around for a very long time[1] though 
> formalised in C99. All versions of OS X include it and you are likely 
> going to be building with a compiler that only supports C89/90 on the 
> earlier releases or defaults to it.

I did some more digging and found that on OS X 10.6 (from 2009) and 
prior vsnprintf() is not used because of the discrepancy in gzguts.h, 
though configure is happy.
On OS X 10.7 (from 2011) onwards you're good if you stick to the default 
compiler which is clang.
If you switch to the fallback secondary compiler (llvm-gcc 4.2) then 
you'll have the same issue as OS X 10.6 and prior, when building on OS X 
10.7 & 10.8 (from 2012).
Issue goes away in 10.9 (from 2013) since it only includes clang.
The patch I submitted[1] in the pull request fixes all versions which 
had issues (10.2 up to 10.8) that I tested, when running the test suite.

While I've investigated the issue on Mac OS X, I suspect the issue 
applies to legacy versions of derivatives from the same lineage[2] in 
general which use legacy GCC, if you're still building modern zlib on it.

Not sure if that's what was meant by "real-world environment". :)

Sincerely,


Sevan
[1] https://github.com/madler/zlib/pull/1167
[2] https://www.tuhs.org/cgi-bin/utree.pl?file=Net2/usr/src/lib/libc/stdio
