Received: (qmail 25928 invoked by uid 550); 27 May 2024 13:11:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25909 invoked from network); 27 May 2024 13:11:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexfo.fr; s=gm1;
	t=1716815483;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=9PEn7P6vJLHA5CAj91NywjRXiUK/o6MOugEiMJySV/M=;
	b=ULYtAfJeVzjVvmj41IN4lj/PPh/GTl3elALeMoTqtzOr5gEAhJ23KNEFl9hCbsQFpWJ43d
	Lax2TRo83QfbHiyTlQB0vV5PnfhyqnJNRU87p3r0TqQARyibbmAbfdXEK6aworrmzfndVM
	i28NYMWyxZbuyryTkYcBoCV7DAnd5EzIFZhL3tuhXPcWr+qIZRNbjA3DIMGN80Qv6nMXdb
	j4lQudJ/FC6cNKEqmE5WDmi0RJ71oSq2hASbNiTGISm9z24d9SIsop7zOKZ1RRovIdPo43
	6ziXYOBcOt/JdnGN/vc9//4p3Cj0gX9KTsUJ0QSqw1BMOAs/MNhlhyX+HFAh1Q==
Message-ID: <cf9642c5-c59e-459b-a5a9-4b23e9deb036@lexfo.fr>
Date: Mon, 27 May 2024 15:11:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
 <20240418164242.GA2468@openwall.com>
 <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
 <20240527113430.GA14378@openwall.com>
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
In-Reply-To: <20240527113430.GA14378@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: c.fol@lexfo.fr
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

Here's what I sent the glibc's security team a few weeks back; I fixed 
some typos:


# PHP's heap in 2 sentences

PHP's heap is page-based; each page contains chunks of some specific 
size, such as 8, 0x10, 0x18, etc.

Chunks do not have any header or footer, they are raw data. Therefore, 
an overflow from some chunk on the heap directly lands on the next chunk.
Now, for each chunk size, a singly-linked list stores chunks that are 
not allocated (similar to tcache in ptmalloc).

# Exploiting iconv()

Say some PHP application allows you to convert some text from UTF-8 to 
some arbitrary charset. It uses PHP's iconv() function to do so,
which internally calls glibc's iconv(). You ask the application to 
convert some buffer of size 0x50 from UTF-8 to ISO-2022-CN-EXT. It allocates
an output buffer of the same size. Imagine that, by chance, the output 
buffer is on top of a free chunk. We have something like this:

0x7fCCBBAA1000 [output_buffer]
0x7fCCBBAA1050 [free_chunk]

Since free_chunk is not allocated, its first 8 bytes contain a pointer 
to the next free chunk in the 0x50 free list, say 0x7fCCBBAA10A0.

We trigger a one byte overflow. Since our vulnerability is not that 
good, the byte that overflow can only have a few values: 0x48 (H), 0x49 
(I), etc.
Consider that it is 0x48 for this example.

So, we overflow one byte into free_chunk, which will effectively modify 
the LSB of the free list pointer. It was 0x7fCCBBAA10A0 and becomes
0x7fCCBBAA1048.

Using the vulnerability, we have modified the free list for chunks of 
size 0x50. If we manage to force PHP into allocating a few 0x50 chunks,
it will therefore allocate one chunk at address 0x7fCCBBAA1050 
(free_chunk's address), and the next one at address 0x7fCCBBAA1048.
The two chunks overlap, so we can overwrite one's content with the other.

This is the basic idea behind using this vulnerability for PHP 
exploitation.

I have built a reliable exploit against a popular PHP application.

## PHP: file read to RCE

Another funny thing: in PHP, when you call a file-read function (such as 
file_get_contents()), you can perform encoding modification on the data
before it is returned. For instance:

```php
echo 
file_get_contents('php://filter/convert.iconv.utf-8.utf-16/resource=/etc/passwd');
```

This returns the contents of /etc/passwd, but converted to utf-16 using 
iconv.

I managed to build a fully reliable, PHP-agnostic exploit that converts 
a file read primitive (for instance, a call to file_get_contents() with 
a controlled
parameter) to remote code execution.

Therefore, with this bug, any person that has a file read vulnerability 
on a PHP application has RCE. Any person that can force PHP into calling 
iconv()
with controlled parameters has RCE.


Charles

On 27/05/2024 13:34, Solar Designer wrote:
> On Mon, May 27, 2024 at 11:16:53AM +0200, Charles Fol wrote:
>> Although very late, here is a follow up explaining the impact of the
>> vulnerability.
>>
>> Provided that you can force an application to convert a partially
>> controlled buffer to ISO-2022-CN-EXT, you get an
>> overflow of 1 to 3 bytes whose value you don't control.
>>
>> This can be triggered in at least two ways in PHP:
>>
>> - Through direct calls to iconv()
>> - Through the use of PHP filters (i.e. using a "file read" vulnerability)
>>
>> Due to the way PHP's heap is built, you can use such a memory corruption
>> to alter part of a free list pointer,
>> which can in turn give you an arbitrary write primitive in the program's
>> memory.
>>
>> With this bug, any person that has a file read vulnerability with a
>> controlled prefix on a PHP application has RCE.
>> Any person that can force PHP into calling iconv() with controlled
>> parameters has RCE.
>>
>> We have provided more explanations on a blogpost of ours (I do not think
>> that I can post it here, it shouldn't be too
>> hard to find if you're interested).
> Surely you can post a link to a blog post, although we strongly prefer
> that besides the link you also post a plain text copy of most content,
> for archival.
>
> I assume you refer to:
>
> https://www.ambionics.io/blog/iconv-cve-2024-2961-p1
>
> This ends with:
>
>> This concludes the first part of the series on CNEXT (CVE-2024-2961).
>> The exploit is now available on our GitHub. There is still much more to
>> explore: what about direct calls to iconv() ? What happens the file read
>> is blind?
>>
>> In part 2, we'll dive deeper in the PHP engine to target an iconv() call
>> found in a very popular PHP webmail. I'll describe the impact of such
>> direct calls on the PHP ecosystem, and show you some unexpected sinks.
>> Finally, in part 3, we'll cover blind file read exploitation.
> The GitHub link is:
>
> https://github.com/ambionics/cnext-exploits/
>
> I understand it'd be difficult to convert a so nicely formatted blog
> post into a plain text posting, but perhaps you can now post the plain
> text description you had shared with the distros list?
>
> Are your OffensiveCon slides online or will be soon?  A link to them can
> also be shared.
>
> Thanks,
>
> Alexander
