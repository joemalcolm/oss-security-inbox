Received: (qmail 8033 invoked by uid 550); 26 Sep 2025 02:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10049 invoked from network); 26 Sep 2025 02:33:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758854024; x=1759458824; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JNOqIWavx8rFIfX3JbcVc4qINNoTU+wFd5Mii2ny7gE=;
        b=CbJgq4A4/6WtxrQZebOgMjAb0SPbgDubuH1AgvoJEvd31Rbfz8Rgmcu3xfD8xkFexf
         mZVLvcggc8TbgMm6AWV/bv/gYJnTzvZvGJ3asGyyvEiX/swXVSO2X/0R89QD3jCCWLzW
         4cjHJHvdta+znHaGmTJyouKchWlB7v7l/Aun7HHOE0xGrp66x3SMep40ep1r06l2e9oP
         BrIT8qkcNIZigcGZg63Kdm7RtmRuqj9fwS0HWIVwOmE4FFoIt7EPT+MH7AmtFQWBAMYf
         nim6R89DsKgzgOSIQ9tG28BbGbpPnnloBD15Muw57XLIuciwkmdRKBotVeTUTO5yRWi3
         d7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758854024; x=1759458824;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JNOqIWavx8rFIfX3JbcVc4qINNoTU+wFd5Mii2ny7gE=;
        b=WNj33yhEQPPW9aVPUFW8Nf1NtTSUYrMSzMPSPj/JfHcVmrYjkRLGCngZbtX3KgWqCC
         v1qCp4NkdunqzOWuxD0dXF2Mct3tmmk2rUrY3GVRbk3XEVZKTD/ggBmUwNnXOuvo2nOz
         2GuyRMd/YN1AWkaT2ZI4qINVinqxNHKZJAR4QPaB+XAwEYuJHzOq2lx7cWRsVoBeRkVW
         +tu0o7YVm9/V4nIzqZm7thH+8lHDxwSrihCBnb9XvRe4SmvepIZvNlnocDPAqOUoUBpH
         lBcq4IWMVPGiYvqHgM+QXjAEwRmcDJeRVzfpfEqZtj5A/mFju38o8awkewU4wTcQVYDx
         kbZA==
X-Forwarded-Encrypted: i=1; AJvYcCWd0HOTja0v/M2LVuNMLU0Oi7ciRXRWqbEH3TSbXvgu9a9W9Bog6lBegCPgUspQRMj2NEAIfRQ37UcWvIg=@lists.openwall.com
X-Gm-Message-State: AOJu0Yy7NhAE4GyneAYUSxlJDmhmEccoEMvh9jUeceeLVuXgY2fIFB80
	9k2+tnypdcWQFhn1CmbsKuMKHf7CxSwcy57VYbD9h9dM62HsWKaEBewa
X-Gm-Gg: ASbGncsNbTcOusNB+e/vUBc+LEvWOxkBlaAiqYQhU2iIk2UaBZMI0WCJ3eFzJUtxAic
	rXyeqe0RoEZs4xKfbYwHobnWbn9JtRFVml+aCpNTWmCOESRSPSt2XRCJro/JNLW21sRlOUdt0ni
	XIJn+SKa14VRYiMEjQX1kHJCZeK/8QSa5HK/rJE04SJAn8amdfgexYxUzjQlwoUG/9RJHyn0FeV
	w9EBtAEPX0Ureo7htiViuhyFtBq0B+0GuWrr5nEnwdWAJEkA+0/0ZwDtesGwweWUurF7geFBa5l
	Jv7GsXat9wlQ7kKpzf/YlXIYgae9F6HzMfPzVFuDEQbT8StpYCoPr3hU/+fWM5bs/VkgVx61x9X
	NB2ah+JsvUrC9YrzRdX3Bm0CxRVJ6MQ==
X-Google-Smtp-Source: AGHT+IE8MhtR6Od0OXaM0CDkDsxRvAGn/kgtb8tTDEOPjSLHaq/p/0gd5aI/ciS8a1G6vc+t1rb0GA==
X-Received: by 2002:a05:690c:4b8b:b0:74e:a5d3:d95 with SMTP id 00721157ae682-763fe2866a6mr68813797b3.22.1758854024357;
        Thu, 25 Sep 2025 19:33:44 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------U7vyLdj9h354lRx9E7zz7k3o"
Message-ID: <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
Date: Thu, 25 Sep 2025 21:33:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Demi Marie Obenour <demiobenour@gmail.com>,
 oss-security@lists.openwall.com, Peter Gutmann <pgut001@cs.auckland.ac.nz>,
 "Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer
 <solar@openwall.com>, Andrew Cooper <andrew.cooper3@citrix.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

--------------U7vyLdj9h354lRx9E7zz7k3o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/25/25 14:38, Demi Marie Obenour wrote:
> On 9/24/25 23:51, Jacob Bachmeyer wrote:
>> On 9/24/25 06:45, Peter Gutmann wrote:
>>> Jacob Bachmeyer<jcb62281@gmail.com> writes:
>>>
>>>> The critical issue for exploiting Rowhammer to corrupt spilled register
>>>> values seems to be how long those spilled values remain live in DRAM before
>>>> they are reloaded into the register file and ultimately used.
>>> It also depends on whether they're ever actually read back from RAM or just
>>> end up sitting in cache for a microsecond or two before they're re-fetched
>>> from there.  There are some attacks that exploit the difference between
>>> (glitched) data in RAM and data in cache, but in this case it'd mitigate
>>> Rowhammer by having the corrupted data in RAM ignored if it's still in cache.
>> Indeed, if the spilled value is never evicted from cache, then it is
>> never live in DRAM and Rowhammer cannot be used to corrupt it. However,
>> if I understand correctly, modern systems aggressively flush caches on
>> process context switches in order to close cache-related side channels.
>>
>> This seems to suggest that the solution to "Rowhammer Mayhem" may lie in
>> improvements to kernel scheduler and VM management subsystems.
> What about hardware fixes?  Those will take a long time
> to roll out but hopefully they can be 100% effective.

First, that does absolutely nothing for current hardware. Declaring all 
(or almost all) current hardware e-waste is severely environmentally 
irresponsible if it can possibly be avoided.

Second, I had expected ECC to "kill Rowhammer dead" only to find that it 
can be possible to cause enough bit flips to get all the way from one 
valid ECC word to another valid ECC word before ECC scrub reaches the 
location.  I suspect that the DDR5 built-in ECC is supposed to resolve 
Rowhammer, but we will have to wait and see if it actually achieves that 
goal.

It seems highly likely that Rowhammer is an inherent consequence of DRAM 
density beyond a certain limit and highly *unlikely* that reducing DRAM 
density below the "Rowhammer threshold" will prove to be an acceptable 
solution.

>> Perhaps a yield primitive that yields the rest of the current timeslice
>> but guarantees a full unpreemptable timeslice upon resume?  That would
>> allow a brief sensitive computation to be effectively made
>> uninterruptible but would not permit monopolization of the processor.
>>
>> Perhaps more randomization in assigning physical page frames to prevent
>> the kernel from reliably using "bait" pages?  The attack in the paper
>> seems to depend on predictable page frame allocation.
>>
>> The latter could also be implemented in user processes:  allocate a
>> randomly-sized pad on the stack to shift "inner" stack variables away
>> from their predictable locations.  Making the pad multiple pages plus a
>> fraction of a page could also counter predictable kernel page frame
>> allocations by shifting the sequence of pages allocated.
> One idea I had is to add physical guard pages
> between uses of memory for different purposes.

That depends on assumptions about physical layout that may not hold.  
(What if the DRAM is interleaved such that the guard pages end up in a 
different bank or chip?)  Apparently the researchers already had to hit 
areas at some logical distance from the target; I doubt that the exact 
physical DRAM layout in the chips they used is published.

Worse, skipping page frames like this may work for one DRAM density and 
silently fail for another, or even between two different chips with the 
same density but different internal layouts, or even between identical 
hardware that has different memory controller configurations for some 
reason.


The stack is intrinsically aligned on much finer than page granularity; 
introducing additional "jitter" to the locations of stack variables (and 
spilled registers) is a solution available today with minimal cost.  All 
you need is "size_t slide_size=random_stack_slide_size(); void * 
slide=alloca(slide_size); memset(slide,0,slide_size);" near the top of 
main (and possibly other functions to "mix it up" more) and a function 
random_stack_slide_size() that gives an appropriate unpredictable value.

The key is to avoid trying to prevent bits from being flipped (that 
proverbial ship has sailed on current hardware) but instead prevent an 
attacker from being able to predict accomplishing something useful with 
those bit-flips.


-- Jacob

--------------U7vyLdj9h354lRx9E7zz7k3o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/25/25 14:38, Demi Marie Obenour
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com">
      <pre wrap="" class="moz-quote-pre">On 9/24/25 23:51, Jacob Bachmeyer wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">On 9/24/25 06:45, Peter Gutmann wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Jacob Bachmeyer <a class="moz-txt-link-rfc2396E" href="mailto:jcb62281@gmail.com">&lt;jcb62281@gmail.com&gt;</a> writes:

</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">The critical issue for exploiting Rowhammer to corrupt spilled register
values seems to be how long those spilled values remain live in DRAM before
they are reloaded into the register file and ultimately used.
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">It also depends on whether they're ever actually read back from RAM or just
end up sitting in cache for a microsecond or two before they're re-fetched
from there.  There are some attacks that exploit the difference between
(glitched) data in RAM and data in cache, but in this case it'd mitigate
Rowhammer by having the corrupted data in RAM ignored if it's still in cache.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
Indeed, if the spilled value is never evicted from cache, then it is 
never live in DRAM and Rowhammer cannot be used to corrupt it. However, 
if I understand correctly, modern systems aggressively flush caches on 
process context switches in order to close cache-related side channels.

This seems to suggest that the solution to "Rowhammer Mayhem" may lie in 
improvements to kernel scheduler and VM management subsystems.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
What about hardware fixes?  Those will take a long time
to roll out but hopefully they can be 100% effective.</pre>
    </blockquote>
    <p>First, that does absolutely nothing for current hardware. 
      Declaring all (or almost all) current hardware e-waste is severely
      environmentally irresponsible if it can possibly be avoided.</p>
    <p>Second, I had expected ECC to "kill Rowhammer dead" only to find
      that it can be possible to cause enough bit flips to get all the
      way from one valid ECC word to another valid ECC word before ECC
      scrub reaches the location.  I suspect that the DDR5 built-in ECC
      is supposed to resolve Rowhammer, but we will have to wait and see
      if it actually achieves that goal.<br>
    </p>
    <p>It seems highly likely that Rowhammer is an inherent consequence
      of DRAM density beyond a certain limit and highly *unlikely* that
      reducing DRAM density below the "Rowhammer threshold" will prove
      to be an acceptable solution.<span style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
      cite="mid:544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Perhaps a yield primitive that yields the rest of the current timeslice 
but guarantees a full unpreemptable timeslice upon resume?  That would 
allow a brief sensitive computation to be effectively made 
uninterruptible but would not permit monopolization of the processor.

Perhaps more randomization in assigning physical page frames to prevent 
the kernel from reliably using "bait" pages?  The attack in the paper 
seems to depend on predictable page frame allocation.

The latter could also be implemented in user processes:  allocate a 
randomly-sized pad on the stack to shift "inner" stack variables away 
from their predictable locations.  Making the pad multiple pages plus a 
fraction of a page could also counter predictable kernel page frame 
allocations by shifting the sequence of pages allocated.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
One idea I had is to add physical guard pages
between uses of memory for different purposes.
</pre>
    </blockquote>
    <p>That depends on assumptions about physical layout that may not
      hold.  (What if the DRAM is interleaved such that the guard pages
      end up in a different bank or chip?)  Apparently the researchers
      already had to hit areas at some logical distance from the target;
      I doubt that the exact physical DRAM layout in the chips they used
      is published.</p>
    <p>Worse, skipping page frames like this may work for one DRAM
      density and silently fail for another, or even between two
      different chips with the same density but different internal
      layouts, or even between identical hardware that has different
      memory controller configurations for some reason.</p>
    <p><br>
    </p>
    <p>The stack is intrinsically aligned on much finer than page
      granularity; introducing additional "jitter" to the locations of
      stack variables (and spilled registers) is a solution available
      today with minimal cost.  All you need is "size_t
      slide_size=random_stack_slide_size(); void *
      slide=alloca(slide_size); memset(slide,0,slide_size);" near the
      top of main (and possibly other functions to "mix it up" more) and
      a function random_stack_slide_size() that gives an appropriate
      unpredictable value.</p>
    <p>The key is to avoid trying to prevent bits from being flipped
      (that proverbial ship has sailed on current hardware) but instead
      prevent an attacker from being able to predict accomplishing
      something useful with those bit-flips.<br>
    </p>
    <br>
    <p>-- Jacob<br>
    </p>
  </body>
</html>

--------------U7vyLdj9h354lRx9E7zz7k3o--
