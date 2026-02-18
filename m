Received: (qmail 11699 invoked by uid 550); 18 Feb 2026 16:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6070 invoked from network); 18 Feb 2026 12:15:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=henWiNydlh+4hYTn8t974tc9DXY=; b=cvDnIfs5O8d5uH2PuO1Bdf0PZMFs
	W6YtnAfa4GeJIYtdpb6dPEQ9LiaHln8b29m8VMnts+gFeiBmSEWT5z6pmzfNWPU1
	yBh/Bfb6oeKp9Rnwy1aE7PnFW6o+DyrBQ1Z17jbNNAvrir0Be1Vh6dL78qINLZk3
	yufChC6WgpoVCp8SpSuVtLXRL+VkeYSvG4x11vXwQD7ZB8JioZnulT0KoPVwZxH5
	jIUc/3z47oRq2KHFGJVjfesZHYAVvV8HvbILrLOhWA2E+UGW+XIvNzM5S8tUfxJU
	zW/WiAY2S3a863oIBykGWHiu3gZJc0V2lsnhp68wQXIe9fIcz7twEAIFWQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=AoB
	Qc6KJh36ZYcjG6Zb6paO9sRqjvbODh10tXS0piJJb/q+hwzaNf9qixpiQV+fHxJP
	QgRhgVvPirjydCSEiKoaEiFGzWccW8nfx/0g0/7JxELcw/ZJaGy6/3x2y/8i7OHo
	0b/mZm/8ckzTt4tfqB+LO0/SxPwWgClS4mPuSI3rcExFpYCWbvmj8ixNMWFwgWsa
	B8ATV4KpsQ7CuMrnNGGARONOrhZrHZdj78+KOvyDqSicE4JmqVqpFviW18AA/GbI
	E1g5TV3mLVsjpUjErgG7FSnBF3+kf+2OL2YNf1W3uhor8dHGUZ9xQ41diEpbcTlv
	m9LaO4o837MjgeL62eQ==
Message-ID: <75f0e607-6842-4f5e-b523-64f5cbcdc883@geeklan.co.uk>
Date: Wed, 18 Feb 2026 12:15:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <87seazqslh.fsf@gentoo.org> <87a4x7awxe.fsf@josefsson.org>
 <515f855d-cb54-4eb4-912f-a88454e6a26b@geeklan.co.uk>
Content-Language: en-GB
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <515f855d-cb54-4eb4-912f-a88454e6a26b@geeklan.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: zlib security audit by 7asecurity

On 17/02/2026 23:57, Sevan Janiyan wrote:
> I could set -std=gnu99 but then it's not going to be a quiet drop-in 
> upgrade for all the exist packages built.
> Was actually thinking that what happens during configure and the build 
> are completely different. configure "detects" the presence of 
> vsnprintf() by the compiler not making any noise, but things are handled 
> separately in gzguts.h which until you dig in are left wondering why is 
> it complaining about the lack of vsnprintf() when the configure stage 
> was happy). Will raise a ticket for that.

Dug in a bit further and realised the logic in gzguts.h makes the wrong 
assumption about "if C89/90, assume no C99 snprintf() or vsnprintf()" as 
these functions have been around for a very long time[1] though 
formalised in C99. All versions of OS X include it and you are likely 
going to be building with a compiler that only supports C89/90 on the 
earlier releases or defaults to it.

Raised a pull request[2], let's see if it lands.


Sevan
[1] https://www.tuhs.org/cgi-bin/utree.pl?file=Net2/usr/src/lib/libc/stdio
[2] https://github.com/madler/zlib/pull/1167
