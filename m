Received: (qmail 26137 invoked by uid 550); 27 Sep 2025 11:33:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15638 invoked from network); 27 Sep 2025 02:33:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758940416; x=1759545216; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ducKPH99brj1v13UzKHxrP/DY8w/q0gQ1pDH5an21Pw=;
        b=L4ur67Kh/hH6uLzKgn7Q+y3jWno8Wka/+CY9tZUhulDj420q7jEn519YknNDOf4HkF
         QhAHl5bdd4IXE9abUoTdPaJF6+cpo/0sXxOy7LgRfbYeYZEOYpg9/htOdzk4Q9C5F5CW
         z1SlcwOcHVpr4M5/wm5s+kx+VBiqP4IGt4JJrF32bUS/0+n8qk5eiWduZTIqlVNhmTK5
         EGHUIIn/NS2+nywhm6f604gxbkJhffEutblTs5fML3ykRv96nlIcXWghco1l6mBh7rt6
         CJpNFGFRN3KpTO0jETR3SIMUbyX0k/VbNLZO8q/dfwZHJHZfa8z8PLqBWazFAjnD6gJ2
         x2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758940416; x=1759545216;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ducKPH99brj1v13UzKHxrP/DY8w/q0gQ1pDH5an21Pw=;
        b=Qwpye6QMbczlr2DrSHsubBCkECWKaHgzW5ra1f4vopnzSaoBhGV6X8yDScXGNqVbay
         DNQ4OWnQUUMjdxmiQ+LZQYeSv+V7Bzzf27MwCGJz6Km4n/+2EF3ra7Djk2jYmjxwwDl+
         Lmge/NecBD7CyywLq68kY7pNprZOE8trLXa3YlWiTMu+eK21YpJudHZow1b54DvciPZ5
         RuecDJp6nIEw3e0qvBzLJ3asx+1X/q3omSdRR6vCKy2cOlLeQwqVaDG5pxxvReNpsWVP
         +x68I1LdnYKQzjHkHBJSqF4jaOERuzFZB4Vu7rGdXVGXeOpa2u9QVUkgDQ6yc1fcUvWp
         g7Ig==
X-Forwarded-Encrypted: i=1; AJvYcCVd2Iw4+gvzFfbzHGwBInySDBClRjuiH2a5YugQwS1SiixVLUpG9gVnFle959KjExwwD8JUNtcxZE8R/fQ=@lists.openwall.com
X-Gm-Message-State: AOJu0YyWDucLU97i1c5t7tdsftTdf7YkaVjEz9ByoeCBWFq4FyZXbdPr
	aTTRGBakpwRvdCQYWPbcs8uBmp4aX2NRB3rz62SNAoROT2RITDW6cssl
X-Gm-Gg: ASbGncvOCSTkUonMOZzhGSxodC0ZQ1BWI/jDKAqPgOEXHZjagZVEh1Wf34jJolDjF6y
	nc1zVIQZr2dtFnX9xLkGA/mG7Hhyuf+Nt3VvyNNLYfDv6gCm6VylE3/sCXEMcXXYa9eH7lR0aDd
	eHZrvMm1boL6z+PbU8d84ieWTKnhfYAaoth38xYRk77H5dw0i8RzqDpaWQTuDIpj6c3nTn22587
	oZnExWUDJB0ZcIQOzIbY+Yuy+2yrQZQ9yaFpWv9kMvTtsA3R4lGbnn/q7KFkkB3ovyZTBGbb102
	OSACIt4oeJrXoF2pp5uYvY3qKBPctycTFHCByWRq3E0BzyIV4rzoojItJsk7JyOyY9rU3TiimfS
	FbnkPhXR+F1b0MSSeLRfFlMJLFsdp/bzmfziyA8HI
X-Google-Smtp-Source: AGHT+IHIuHvh5Fl6magDW80QqrTjH3LMW/DUNlcW9VUSBShSBPOLrY/oa0o/O1V4T81RoHecy4+Amw==
X-Received: by 2002:a05:690c:930c:20b0:74b:dfcb:fa6c with SMTP id 00721157ae682-76403ec53a8mr92271097b3.28.1758940416297;
        Fri, 26 Sep 2025 19:33:36 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------7MoOLnmnlPZ4qjzclpvdicOG"
Message-ID: <071df386-676e-47df-958d-287023b32ea2@gmail.com>
Date: Fri, 26 Sep 2025 21:33:26 -0500
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
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
 <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
 <607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com>
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

--------------7MoOLnmnlPZ4qjzclpvdicOG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/26/25 20:04, Demi Marie Obenour wrote:
> On 9/26/25 20:06, Jacob Bachmeyer wrote:
>> On 9/26/25 09:19, Demi Marie Obenour wrote:
>>> On 9/25/25 22:33, Jacob Bachmeyer wrote:
>>> [...]
>>>> It seems highly likely that Rowhammer is an inherent consequence of DRAM
>>>> density beyond a certain limit and highly *unlikely* that reducing DRAM
>>>> density below the "Rowhammer threshold" will prove to be an acceptable
>>>> solution.
>>> Seehttps://arxiv.org/pdf/2407.09995 for the proper solution: store a
>>> per-row activation counter alongside the row itself, and when any row
>>> in a bank exceeds the threshold, take action.
>> I am somewhat skeptical about this, simply because there have been many
>> "proper solutions" to Rowhammer that have thus far failed.
> Have any of them had a proof of correctness?  MOAT at least claims to,
> and if that proof is correct, then either it is secure or one of the
> assumptions it is based on is invalid.

Unless I misunderstood the paper on a first reading, that proof is only 
an upper bound on row activations before mitigations are applied.  That 
says *nothing* about actually preventing bit-flips.

In particular, the possibility of some as-yet-unknown access pattern not 
mitigated by MOAT being usable for Rowhammer is simply out-of-scope for 
MOAT's correctness proof---and disturbingly plausible to me as DRAM 
densities continue to increase.

>>>> [...]
>>>>
>>>>
>>>> The stack is intrinsically aligned on much finer than page granularity;
>>>> introducing additional "jitter" to the locations of stack variables (and
>>>> spilled registers) is a solution available today with minimal cost.  All
>>>> you need is "size_t slide_size=random_stack_slide_size(); void *
>>>> slide=alloca(slide_size); memset(slide,0,slide_size);" near the top of
>>>> main (and possibly other functions to "mix it up" more) and a function
>>>> random_stack_slide_size() that gives an appropriate unpredictable value.
>>>>
>>>> The key is to avoid trying to prevent bits from being flipped (that
>>>> proverbial ship has sailed on current hardware) but instead prevent an
>>>> attacker from being able to predict accomplishing something useful with
>>>> those bit-flips.
>>> I suspect that in general this is provably impossible.
>> You suspect that ASLR is generally provably useless?  "Sliding" the
>> stack is the same basic principle as ASLR.
> ASLR is an awesome mitigation.  It definitely makes attacks much harder.
> I have yet to see a case where it provably makes an attack impossible.
> If you are aware of one, I would love to know.

Provably impossible?  No, but it *can* increase the number of bits that 
an attacker must accurately guess beyond feasibility.

>> The "Rowhammer Mayhem" attack evades ASLR by exploiting the kernel's
>> physical page allocation policy, effectively converting the significant
>> address to an ordinal page number ("Nth page allocated") and offset
>> instead of a virtual or physical address.
>>
>>> My hope is that
>>> EU regulations like CRA and PLD will force hardware recalls when defects
>>> like Rowhammer are detected.
>> You realize that legal cudgels like that could very well kill the entire
>> computing industry if it turns out that Rowhammer is due to physical
>> limitations, right?
> There is no law saying that DRAM must be used, or that it must have
> a feature size as small as it has.  A larger feature size (bigger
> capacitors) could stop the attack, albeit at great expense.
> Increasing the refresh rate and noise margins would also help.

Both of those are effectively mandated by the marketplace and current 
technology.  DRAM is the only currently practical ultra-high-density 
fast working memory technology, and the small feature sizes are needed 
both for capacity and performance.

It is not just a matter of "great expense"---bigger DRAM capacitors also 
mean *slower* DRAM. The laws of physics are not subject to repeal or 
revision to suit our wants.

> Another option is to cryptographically authenticate every row.  If
> a full-width MAC is used, the attacker must flip at least 129 bits
> and they have absolutely no margin for error: even a single error
> will be detected.  If the attacker cannot do this (and I have seen
> no paper suggesting they can), this prevents Rowhammer from being
> a memory corruption vulnerability.  If the memory is also encrypted,
> this reduces Rowhammer to denial of service at worst.  DRAM rows
> are very wide, so the cost of the MAC can be amortized across a
> large number of bits.

Computing a cryptographically-sound MAC is very expensive, although 
using an authenticated encryption mode with existing hardware RAM 
encryption could help.  Even RAM encryption at all might help, if a 
non-malleable mode is used, since then flipping one ciphertext bit will 
cause multiple plaintext bits to flip.

> The burden should be on hardware vendors to create hardware without
> security holes.  Formal verification at the HDL level can catch
> defects in the source code.  Some proofs might be able to be
> generated automatically, while others might have to be written by
> hand and machine-checked.  For other issues, there is no solution
> I know of other than being extremely careful in the design process.

Rowhammer relies on physical effects that are not normally modeled in 
VLSI design and may or may not be sufficiently characterized to 
predictively model.  As far as I know, the DRAM vendors are not talking 
about those details.

Further, normal programs do not make the access patterns that cause 
Rowhammer bit flips.  The hardware is arguably working correctly when 
used as intended and not actually defective.  On modern hardware, a 
normal program frequently accessing the same row should hit DRAM once 
and then the caches.  Rowhammer attacks arrange fake working sets that 
exceed the caches and produce highly unusual access patterns.

> If defects like Rowhammer, Zenbleed, or Spectre forced product
> recalls, there would be a massive economic incentive to produce
> hardware that lacked such defects.  I suspect this would solve the
> problem in fairly short order.  The question is whether the
> economic cost of doing so -- and of not doing so -- is something
> that society, and end users, are willing to pay.

You realize that between Zenbleed and Spectre, *both* current x86 
processor vendors would likely now be bankrupt due to expensive recalls 
if your proposal had been adopted?  Where would that leave us?  With 
other CPU architectures?  Well, then...

Rowhammer affects basically the entire DRAM industry.  What would be the 
economic results of an industry-wide recall?  Would the recall simply be 
ignored because users prefer to actually *have* computers?

I suspect that the result of such EU policies would be the industry 
leaving the EU market.


-- Jacob

--------------7MoOLnmnlPZ4qjzclpvdicOG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/26/25 20:04, Demi Marie Obenour
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <pre wrap="" class="moz-quote-pre">On 9/26/25 20:06, Jacob Bachmeyer wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">On 9/26/25 09:19, Demi Marie Obenour wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">On 9/25/25 22:33, Jacob Bachmeyer wrote:
[...]
</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">It seems highly likely that Rowhammer is an inherent consequence of DRAM
density beyond a certain limit and highly *unlikely* that reducing DRAM
density below the "Rowhammer threshold" will prove to be an acceptable
solution.
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">See <a class="moz-txt-link-freetext" href="https://arxiv.org/pdf/2407.09995">https://arxiv.org/pdf/2407.09995</a> for the proper solution: store a
per-row activation counter alongside the row itself, and when any row
in a bank exceeds the threshold, take action.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
I am somewhat skeptical about this, simply because there have been many 
"proper solutions" to Rowhammer that have thus far failed.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Have any of them had a proof of correctness?  MOAT at least claims to,
and if that proof is correct, then either it is secure or one of the
assumptions it is based on is invalid.</pre>
    </blockquote>
    <p>Unless I misunderstood the paper on a first reading, that proof
      is only an upper bound on row activations before mitigations are
      applied.  That says *nothing* about actually preventing bit-flips.</p>
    <p>In particular, the possibility of some as-yet-unknown access
      pattern not mitigated by MOAT being usable for Rowhammer is simply
      out-of-scope for MOAT's correctness proof<span
      style="white-space: pre-wrap">---and disturbingly plausible to me as DRAM densities continue to increase.
</span></p>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <blockquote type="cite">
        <blockquote type="cite">
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">[...]


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
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">I suspect that in general this is provably impossible.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
You suspect that ASLR is generally provably useless?  "Sliding" the 
stack is the same basic principle as ASLR.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
ASLR is an awesome mitigation.  It definitely makes attacks much harder.
I have yet to see a case where it provably makes an attack impossible.
If you are aware of one, I would love to know.</pre>
    </blockquote>
    <p>Provably impossible?  No, but it *can* increase the number of
      bits that an attacker must accurately guess beyond feasibility.<span
      style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">The "Rowhammer Mayhem" attack evades ASLR by exploiting the kernel's 
physical page allocation policy, effectively converting the significant 
address to an ordinal page number ("Nth page allocated") and offset 
instead of a virtual or physical address.

</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">My hope is that
EU regulations like CRA and PLD will force hardware recalls when defects
like Rowhammer are detected.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
You realize that legal cudgels like that could very well kill the entire 
computing industry if it turns out that Rowhammer is due to physical 
limitations, right?
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
There is no law saying that DRAM must be used, or that it must have
a feature size as small as it has.  A larger feature size (bigger
capacitors) could stop the attack, albeit at great expense.
Increasing the refresh rate and noise margins would also help.</pre>
    </blockquote>
    <p>Both of those are effectively mandated by the marketplace and
      current technology.  DRAM is the only currently practical
      ultra-high-density fast working memory technology, and the small
      feature sizes are needed both for capacity and performance.<span
      style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">It is not just a matter of "great expense"---bigger DRAM capacitors also mean *slower* DRAM.  The laws of physics are not subject to repeal or revision to suit our wants.
</span></p>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <pre wrap="" class="moz-quote-pre">Another option is to cryptographically authenticate every row.  If
a full-width MAC is used, the attacker must flip at least 129 bits
and they have absolutely no margin for error: even a single error
will be detected.  If the attacker cannot do this (and I have seen
no paper suggesting they can), this prevents Rowhammer from being
a memory corruption vulnerability.  If the memory is also encrypted,
this reduces Rowhammer to denial of service at worst.  DRAM rows
are very wide, so the cost of the MAC can be amortized across a
large number of bits.</pre>
    </blockquote>
    <p>Computing a cryptographically-sound MAC is very expensive,
      although using an authenticated encryption mode with existing
      hardware RAM encryption could help.  Even RAM encryption at all
      might help, if a non-malleable mode is used, since then flipping
      one ciphertext bit will cause multiple plaintext bits to flip.<span
      style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <pre wrap="" class="moz-quote-pre">The burden should be on hardware vendors to create hardware without
security holes.  Formal verification at the HDL level can catch
defects in the source code.  Some proofs might be able to be
generated automatically, while others might have to be written by
hand and machine-checked.  For other issues, there is no solution
I know of other than being extremely careful in the design process.</pre>
    </blockquote>
    <p>Rowhammer relies on physical effects that are not normally
      modeled in VLSI design and may or may not be sufficiently
      characterized to predictively model.  As far as I know, the DRAM
      vendors are not talking about those details.<br>
    </p>
    <p>Further, normal programs do not make the access patterns that
      cause Rowhammer bit flips.  The hardware is arguably working
      correctly when used as intended and not actually defective.  On
      modern hardware, a normal program frequently accessing the same
      row should hit DRAM once and then the caches.  Rowhammer attacks
      arrange fake working sets that exceed the caches and produce
      highly unusual access patterns.<br>
    </p>
    <blockquote type="cite"
      cite="mid:607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com">
      <pre wrap="" class="moz-quote-pre">If defects like Rowhammer, Zenbleed, or Spectre forced product
recalls, there would be a massive economic incentive to produce
hardware that lacked such defects.  I suspect this would solve the
problem in fairly short order.  The question is whether the
economic cost of doing so -- and of not doing so -- is something
that society, and end users, are willing to pay.
</pre>
    </blockquote>
    <p>You realize that between Zenbleed and Spectre, *both* current x86
      processor vendors would likely now be bankrupt due to expensive
      recalls if your proposal had been adopted?  Where would that leave
      us?  With other CPU architectures?  Well, then...<br>
    </p>
    <p>Rowhammer affects basically the entire DRAM industry.  What would
      be the economic results of an industry-wide recall?  Would the
      recall simply be ignored because users prefer to actually *have*
      computers?<br>
    </p>
    <p>I suspect that the result of such EU policies would be the
      industry leaving the EU market.<br>
    </p>
    <p><br>
    </p>
    <p>-- Jacob<br>
    </p>
  </body>
</html>

--------------7MoOLnmnlPZ4qjzclpvdicOG--
