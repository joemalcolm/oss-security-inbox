Received: (qmail 9472 invoked by uid 550); 18 Feb 2026 00:15:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7422 invoked from network); 17 Feb 2026 23:58:03 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=mL5xG5iqtYlUjGXHAl95T77LzSw=; b=BV/s/j3i+QsPRuPoqMOpDPxx1Kpk
	LINaRPY3eYA3L+uku4qklhQPpyBCQq/loQLQ9B/iZXnKfpTtoX10HKS9FdgdAvXW
	rUKIalthKAyPoT4LZdnLYp1aJ3LhgJp69gyPtJ/leJ1vhapEFdjhC63oxAVRXXOH
	rGWNyvJVgifBkX6U0Mfo9uJmpSbwW7+mm9RII80lPrpKrQjpni1GnnqMcjfg8IkB
	an2m+E8VXXYF5UsAkT7lnj32+6uiymyhkhTfzZxCvhVT/46sr8CqAjtb31XUHTlV
	/6BZVaebJ50nQW1fPyBMXgf0aMxie0VZZ216C5aUazGq9J/L4NP55ozKJg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=NCl
	PMAkufcdvFsTWwWV7cLg+/eMwcKI+ul4+1P5y0AAHe6V/dQI0WjRBq+sIc5EAeaF
	DzEaQGIx29lvq479hPpon07DOaBVh/lLIG04EXuikgRts6Zrk7mwW7pm8q3E9oNP
	x6nCEVNHGX8oUk+DRDRH/TWIhO7IDvO/u6r4B/YZHY2rAi8rajOAHcqrwxOpbsgV
	ePb/f4uBcF8AfQ5o9XM9NfE1jKRlG8BGPMtJ9lrh6wn+Wp48xat9vtl/3r6VeQIn
	fH/VbaHJ2eKeSrietLGMBX8DzhgPYXDR1MGqR0mxgocDki53ap72alTYI8uZcY//
	K5eFcLFjZrvxHYOLxwQ==
Message-ID: <515f855d-cb54-4eb4-912f-a88454e6a26b@geeklan.co.uk>
Date: Tue, 17 Feb 2026 23:57:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <87seazqslh.fsf@gentoo.org> <87a4x7awxe.fsf@josefsson.org>
Content-Language: en-GB
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <87a4x7awxe.fsf@josefsson.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: zlib security audit by 7asecurity

On 17/02/2026 21:21, Simon Josefsson wrote:
> Great to see audits of widely used code!  Gzip next?
> 
> Sam James<sam@gentoo.org> writes:
> 
>> * ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementation (High)
> That vulnerability seems to require that zlib was built with
> -DNO_vsnprintf -DNO_snprintf, targetting a system lacking 'snprintf'.
> 
> Does anyone know of a real-world environment using that configuration?

Greetings from 2005, packaging for OS X 10.4 with GCC 4.0 which defaults 
to C89.

 From gzguts.h:
#  elif !defined(__STDC_VERSION__) || __STDC_VERSION__-0 < 199901L
/* Otherwise if C89/90, assume no C99 snprintf() or vsnprintf() */
#    ifndef NO_snprintf
#      define NO_snprintf
#    endif
#    ifndef NO_vsnprintf
#      define NO_vsnprintf
#    endif
#  endif
#endif

https://github.com/madler/zlib/blob/da607da739fa6047df13e66a2af6b8bec7c2a498/gzguts.h#L95C1-L104C7

I could set -std=gnu99 but then it's not going to be a quiet drop-in 
upgrade for all the exist packages built.
Was actually thinking that what happens during configure and the build 
are completely different. configure "detects" the presence of 
vsnprintf() by the compiler not making any noise, but things are handled 
separately in gzguts.h which until you dig in are left wondering why is 
it complaining about the lack of vsnprintf() when the configure stage 
was happy). Will raise a ticket for that.

Sincerely,


Sevan
