Received: (qmail 12176 invoked by uid 550); 27 May 2024 09:17:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12152 invoked from network); 27 May 2024 09:17:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexfo.fr; s=gm1;
	t=1716801414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=iCJ7Y6F1/CyKalrPIfUWra8pr5Kw8n93MljM0y6Kedc=;
	b=AEg0le9Bdl9VDVXaXOj5sZQyJuiRuVjvq0l+roh1LwRv0qX5igo7va8wH58Ai8W59zJw6Z
	JmkNk084m9bnvQ/H21vA0YTz1Atakh3Iyel2hlxacniD+AX1dLWmDBKwKsepvBzp+Yp4Kv
	psWYO9yS+ipQ48Ix1qMgDDXdV88ZsEv4Jn2dW7WpGiV7bKhh618UNnj8BgjBSb4iaOOdd6
	rrqAa2P20f/5AmDpPFLkHdiXYjZ/myz6Hhix8oK57kO0S1oNRY/RmikBtzF7j9zq0y58Em
	P81D9UBIiePwjRe1mreAGX8o6KfFbriAyXQUYt1cFvkI8KZ3NIUu4sNmFCp39A==
Message-ID: <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
Date: Mon, 27 May 2024 11:16:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
 <20240418164242.GA2468@openwall.com>
From: Charles Fol <c.fol@lexfo.fr>
Autocrypt: addr=c.fol@lexfo.fr; keydata=
 xjMEXl6H8BYJKwYBBAHaRw8BAQdA+RnAUbRefB5nXGX4/HyTyrqkZABJNHz4fsW4Xku8m+7N
 HENoYXJsZXMgRm9sIDxjLmZvbEBsZXhmby5mcj7ClgQTFggAPhYhBA6AoEK6ZuIuKkQuRy0o
 TfyKO89gBQJeXofwAhsDBQkJZgGABQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEC0oTfyK
 O89gCk8A/19fXw2UUxu1UTp6TBnGJvGWUsyqrDc3AUqhn3SL9gG8AQDG+XpKdLh4uePU3frI
 d2dYJSw9pruB30bTe/bAJfKVCs44BF5eh/ASCisGAQQBl1UBBQEBB0DINIasKkdfV1ZYHzxU
 3YD0amnuvtNM84C+xTCVte3gZAMBCAfCfgQYFggAJhYhBA6AoEK6ZuIuKkQuRy0oTfyKO89g
 BQJeXofwAhsMBQkJZgGAAAoJEC0oTfyKO89g358A/jNsppyetu8n4uHvrAnk1bFFC0GRHmGI
 Bj5wHwbQw+wMAQDAMpZIX/uZIZ3GpBSGvqJWQ777nHTwz4ZwsL+csASZDw==
In-Reply-To: <20240418164242.GA2468@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: c.fol@lexfo.fr
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

Hello all,

Although very late, here is a follow up explaining the impact of the 
vulnerability.

Provided that you can force an application to convert a partially 
controlled buffer to ISO-2022-CN-EXT, you get an
overflow of 1 to 3 bytes whose value you don't control.

This can be triggered in at least two ways in PHP:

- Through direct calls to iconv()
- Through the use of PHP filters (i.e. using a "file read" vulnerability)

Due to the way PHP's heap is built, you can use such a memory corruption 
to alter part of a free list pointer,
which can in turn give you an arbitrary write primitive in the program's 
memory.

With this bug, any person that has a file read vulnerability with a 
controlled prefix on a PHP application has RCE.
Any person that can force PHP into calling iconv() with controlled 
parameters has RCE.

We have provided more explanations on a blogpost of ours (I do not think 
that I can post it here, it shouldn't be too
hard to find if you're interested).

Best regards,
Charles

On 18/04/2024 18:42, Solar Designer wrote:
> On Wed, Apr 17, 2024 at 02:36:02PM -0300, Adhemerval Zanella Netto wrote:
>> GLIBC-SA-2024-0004:
>> ===================
>> ISO-2022-CN-EXT: fix out-of-bound writes when writing escape sequence
>>
>> The iconv() function in the GNU C Library versions 2.39 and older may
>> overflow the output buffer passed to it by up to 4 bytes when converting
>> strings to the ISO-2022-CN-EXT character set, which may be used to
>> crash an application or overwrite a neighbouring variable.
>>
>> ISO-2022-CN-EXT uses escape sequences to indicate character set changes
>> (as specified by RFC 1922).  While the SOdesignation has the expected
>> bounds checks, neither SS2designation nor SS3designation have its;
>> allowing a write overflow of 1, 2, or 3 bytes with fixed values:
>> '$+I', '$+J', '$+K', '$+L', '$+M', or '$*H'.
>>
>> CVE-Id: CVE-2024-2961
>> Public-Date: 2024-04-17
>> Vulnerable-Commit: 755104edc75c53f4a0e7440334e944ad3c6b32fc (2.1.93-169)
>> Fix-Commit: f9dc609e06b1136bb0408be9605ce7973a767ada (2.40)
>> Fix-Commit: 31da30f23cddd36db29d5b6a1c7619361b271fb4 (2.39-31)
>> Fix-Commit: e1135387deded5d73924f6ca20c72a35dc8e1bda (2.38-66)
>> Fix-Commit: 89ce64b269a897a7780e4c73a7412016381c6ecf (2.37-89)
>> Fix-Commit: 4ed98540a7fd19f458287e783ae59c41e64df7b5 (2.36-164)
>> Fix-Commit: 36280d1ce5e245aabefb877fe4d3c6cff95dabfa (2.35-315)
>> Fix-Commit: a8b0561db4b9847ebfbfec20075697d5492a363c (2.34-459)
>> Fix-Commit: ed4f16ff6bed3037266f1fa682ebd32a18fce29c (2.33-263)
>> Fix-Commit: 682ad4c8623e611a971839990ceef00346289cc9 (2.32-140)
>>
>> Reported-By: Charles Fol
> I hope Charles will share further detail with oss-security in due time,
> but meanwhile his upcoming OffensiveCon talk abstract reveals a bit:
>
> https://www.offensivecon.org/speakers/2024/charles-fol.html
>
>> CHARLES FOL
>> ICONV, SET THE CHARSET TO RCE: EXPLOITING THE GLIBC TO HACK THE PHP ENGINE
>>
>> Abstract
>> A few months ago, I stumbled upon a 24 years old buffer overflow in the
>> glibc. Despite being reachable in multiple well-known libraries or
>> programs, it proved rarely exploitable. Indeed, this was not a foos bug:
>> with hard-to-achieve preconditions, it did not even provide a nice
>> primitive. On PHP however, it lead to amazing results: a new
>> exploitation technique that affects the whole PHP ecosystem, and the
>> compromission of several applications.
>>
>> This talk will first walk you through the discovery of the bug and its
>> limitations, before describing the conception of several remote binary
>> PHP exploits, and through them offer unique insight in the internal of
>> the engine of the web language, and the difficulties one faces when
>> exploiting it.
>>
>> BIO
>> Charles Fol, also known as cfreal, is a security researcher at LEXFO /
>> AMBIONICS. He has discovered remote code execution vulnerabilities
>> targeting renowned CMS and frameworks such as Drupal, Magento, Symfony
>> or Laravel, but also enjoys binary exploitation, to escalate privileges
>> (Apache, PHP-FPM) or compromise security solutions (DataDog's Sqreen,
>> Fortinet SSL VPN, Watchguard). He is the creator for PHPGGC, the go-to
>> tool to exploit PHP deserialization, and an expert in PHP internals.
> The event is on May 10-11th, so in 3 weeks from now.
>
> Alexander
