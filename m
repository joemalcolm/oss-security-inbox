Received: (qmail 21548 invoked by uid 550); 12 Mar 2026 22:57:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30512 invoked from network); 12 Mar 2026 22:48:23 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 518473C1082E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1773355693;
	bh=c/92UnXCPzdAs4L+cxaoumdHB3NbR1F7lmDtEmOv0BE=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=KYQeEra/IOohhvszhkAYmhw3m7cgu0xkDAAggB7Va4gEM6B7ouMtYvbMTXewrO5Qw
	 UcBONyBEzdouIROcOSXLH1Qpy2l+dPTk3avjORv6FV4gTtt1ApMzM1VnHBJGuw3oAR
	 mtgMgiJF5PhLwa1Bu8dfoAi2LHL1yMPhkEGyD3vstRD0CrbKKeb40ibfGYQFl8u80b
	 nEQg/S61RL8cp6obfxpGNINnD1u+BFaidaIlf7oJxpHTY5igYR6MGxjToIYaDa2hir
	 OIys2E4l2A1ByhHnOdDnc1t+Isrf5DDkwoPhzod2YreViMxQJf/8P7XJMoAXTg9dfC
	 U1tHddQMUnEmA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Message-ID: <8c7594bc-401f-4347-825a-7ab3e4568671@cs.ucla.edu>
Date: Thu, 12 Mar 2026 15:48:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Collin Funk <collin.funk1@gmail.com>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Adiel Sol <adiel@dreamgroup.com>, bug-gnulib@gnu.org
References: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
 <20260312201721.GA24953@openwall.com> <m1cy18wyu7.fsf@gmail.com>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; keydata=
 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
Organization: UCLA Computer Science Department
In-Reply-To: <m1cy18wyu7.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils
 telnetd (LINEMODE SLC)

On 2026-03-12 13:57, Collin Funk wrote:
> Solar Designer <solar@openwall.com> writes:...
>>    /* Do nothing if the entire triplet cannot fit in the buffer.  */
>>    if (slcbuf + sizeof slcbuf <= slcptr + 6)
>>      return;
>> In "slcptr + 6", it appears to rely on pointer math working outside of
>> the object, but that's UB in C.

That's right.

> CC'ing bug-gnulib. Do we make any assumptions about this behavior in
> Gnulib?

No, we follow C's rules in this respect. Pointers can't point outside 
the addressed object (except that that they can point to the very next 
byte and this exceptional pointer cannot be dereferenced).


>> A proper check may be:
>>
>>    if (slcbuf + sizeof slcbuf - 6 <= slcptr)

That assumes that sizeof slcbuf is at least 6. Although that may be true 
here, a safer idiom in general is:

    if (slcbuf + sizeof slcbuf - slcptr <= 6)

This cannot overflow, if slcptr points within the buffer and the buffer 
size does not exceed PTRDIFF_MAX (which is a safe assumption at least 
with GNU malloc-allocated buffers).

