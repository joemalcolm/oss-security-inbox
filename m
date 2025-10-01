Received: (qmail 7289 invoked by uid 550); 1 Oct 2025 15:53:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15608 invoked from network); 1 Oct 2025 08:42:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759308132; x=1759912932; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ypiXC1OnWGqkbcKL2LNq5U0W+6gDcfqr9kBk2FJs8n4=;
        b=c1k5+gySBqkAZLtvlQUcHsicY+ngrq8m4haLEBBrUoE4Msu81ACo+WH0TCzTOqksB8
         r4LdSvwUhhNH1kbelAwMbopIWJrYT+pZ/xE3dSGBqfyQ8/iZQ9GF1VqNGn2GtX1hoHDD
         34DGgn/Kbvsry/XNe7JwiYxgCrSjH50Cdy2wy7qwPU031nFox+rnpJYHEsIz+9P4R+0U
         z5a4TA0cA56ExlSY8ZaiFj33rw8GVoVO4mJuPmTkzu/ANB/23BlXNw5PSiJC3kJR1Od/
         RfTFKj7qP7btO1SXZGI3cf+tmGM9pg7gBg23o5XaeWRb/xzD4ycRtUGTGlNKQdVQtUHN
         aP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759308132; x=1759912932;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ypiXC1OnWGqkbcKL2LNq5U0W+6gDcfqr9kBk2FJs8n4=;
        b=N5R06c/jnIMYmhikpK60ROxhs2CZPfpCsvxux/JZOXCZut4u+Q6ChM5CPNaYc1+3pn
         VjksmYKnYiiMOo4C/QLpkg+a/8s0/8mn/UYW/6gAWi9rX7WoRC/xuUf6+JK5h/ZMP2GY
         +nOSpfVyYY/RisXmy5x58l2/mvPocwornifnAznFWqT+5FjhFOVXjX3LSkBm6OdCYOdp
         RDu16CFXBuIFENGCSjVL6cMFUNwKc3+qIbSiKUY7wK0JLIawvEZuWTXU29epC+1qRWku
         7aU9T78aFDz1S2Na6IwWn2agM/rUa6qwKaq1cBaug8CPJWt4Dsd9HHGbYUhnh+0xhH2H
         Xi7g==
X-Gm-Message-State: AOJu0Yz6ETRoIh2uI1B5Uw3+yK5ZQX3ecAqqlzHmJFJXEZRhlf4TP3BT
	iGoIaJJpWZCfozVqGOwjwsK7qBE6bm32/6yRplPWye0gbXUs6vOVfItlue1N+A==
X-Gm-Gg: ASbGncvqE0UskZdpcg3tZ04gXIofoOuGgRMp5I6CNkyrZjeOMm9cpOHfRcgY0daDhKh
	BOPVx6qYDZQAh1BaJpwjE6U8hyf6QKxzx0rA9lVWteT38Rfxio0PM0u2buTY25KEUxHJLJpcvyU
	FlAfbCBot/3qUO1sdUARvgAbSp9f2k5Tmw679UWdpmwgVJg8qH+ISrlOcPKynmdBqzaORU0qelQ
	r8uGXB+VmseVwiD0CS9nS9Llx8Za/UcrylZUtJzUvCs/4yU8lPPqmp85aM6vQrHG4BwExmZOQd+
	jZ3ImQn2pkAUj1YYlTnl1g2G/uUehMp24vyqHybEX3xzVU1lJHY3jH0PdS4EujuIG4o4IEZLoXN
	icclsIcSLk8WWlO9Svawo8Woo6YRtQhsJ90qvNmW4e11G9GVAtKm9nRhXkvM=
X-Google-Smtp-Source: AGHT+IFBzvumMPdv4kSAPN1F5o/yMg3RC+6TC5EYoHcs17upyj9sxjuJLUQ1YAKj6qjrK0XidLCgaA==
X-Received: by 2002:a05:6000:2910:b0:411:3c14:3a8b with SMTP id ffacd0b85a97d-4255781e63fmr1911788f8f.61.1759308131749;
        Wed, 01 Oct 2025 01:42:11 -0700 (PDT)
Message-ID: <59d11aa9-12b5-44c7-95c4-e3a9d3831190@gmail.com>
Date: Wed, 1 Oct 2025 10:42:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Mike O'Connor <mjo@dojo.mi.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
 <aNyAr-XUGTlZHWtg@dojo.mi.org>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Content-Language: en-US
Autocrypt: addr=pochu27@gmail.com; keydata=
 xsFNBE1NaIwBEADSYHqI0pM8UZrI75t4Jli3+hvc5RpmQ/fcZGyzGI/NRoedMMkrRUC7OWzp
 NYVhJ1R1i5NZMkK9WgWkQovA/Brv8RKsrtHRdq+clJF+gNieZVD7j/ANH8DbuP1fs+K/ar9e
 d8WZUKLnjH4q/Gpd1JNlxt3C5oItPAXuQkE6w9fLpKZBEyqfbn9z6TgoeXJTpk1Nh5XlbBSE
 S92iVKMXZQQavX1XuZNUANWT32bVGgBBZ91X7xh+umUZb4DjSR81P704pwPyJnsn6kJRqreG
 FcXeZJL1+8P6UdlUjDaebkOWEw3gXspNKvzenJOIGoET5m204P2d0AVb+M1IsUhWqt3CpZ0y
 en7F8XDzuJ8xwpZKHEXKyMBzrfmZ1aJU2xHgN9SjKAJsSZ/AmHu7eKNuOwE1mnRQ5f+wQ5qZ
 q93D9p0aCZn4qFN0X7d9jeRMNvZ1Vx1MQ8jdJoSBBPjZRP+THRVdPcNYipVWeqAgMbqhNytE
 rchbBeKP2uQXzXuFqIpvBYEqscC2MdcbV763d9844D7t+cH4yIuyPLiIJOg2XNwGTs8eyfmB
 r1HKSN4tdbQ8aoWNuOTj6aX7otzsrv33mB8qDeWdDtHwC5IeBKpxcS9Hfr38vdVQ9X+uPzCB
 NX2ablOMebFDYAmktvaYAea+VLhumbB9vmgPpv3mak2kBpt1YQARAQABzSpFbWlsaW8gUG96
 dWVsbyBNb25mb3J0IDxwb2NodTI3QGdtYWlsLmNvbT7CwXcEEwEIACEFAk1NajcCGwMFCwkI
 BwMFFQoJCAsFFgIDAQACHgECF4AACgkQnUbEiOQ2gwIRMBAAoqYLi0Vm2y+R3SJ48WTJXMU5
 fTFEi3iASn1kCF6S13TKGlfV28EKTRMsZjSnCEhtCxfnqrOJz9xlLTkYdtK96QLfoo5fGp2S
 SFtML5YK/BufIbOUETGxy1iCcBQA7EaXiYxrlnSFWf8Vok+qIEiOd+Kf6p01UT8Zmy+3jaed
 pWqhQAeLPnaGb5ouf2i4LaMnKhqRvQUG6pvwkgI1ARA44bfexQS2J59h+C3tkVVurTCnJaY4
 Jecr2AQ8fFEnIdLTaBf1+kbYxW5LT+2l1R3HwWoAA5KEBl0nlIKkcd625Swo/CirBJQ58c5a
 isqbJtSwp9vZ6lFBOAmVpTc7K6WyxDpLJnwkepp4XwynzSx8ij5bmesZRswIP61tR+978AGu
 8iHV1dFtnRBs9DLGqSVCMB0+eiliHhcsORtvRb9wWPtGIje9sUgdqHcHa0T17mF1SMQcv2Sl
 +S4VcBwTkK05w+oW1UcJ4jcau2Kma4RYltqFdQssbVltqaEuiwyIMyIcddlAo0EdBJ9jM+MH
 ajWbox2zWr/wl/w+UCXqSeefgyISzDWumak3w4u3wTmfl7UNrN0ZViYggIbEOYEfBYbO1qsT
 aSEqv8KUmwBdtDqqhAaEMA0/keUr9VS+4Dd8tw8DmWohJGTskji0D7DTmRxq9Y69lfLrm72P
 bZPcUBdpCX3OwU0ETU1ojAEQAObFjnZX5JXcXQYW1UGHmnsnZFW9D9SIxpalI8DWiJwcP9ZB
 4BKNZU4Vvpc2QxjWuzX/7poEzNJakOPGPKiRtw6MVyUQKeKFZXrdLSY9IAYRBv3/wmDjrjxu
 NLbArL76LxDR9rUXhpd96o0sD2/U3xS/MXKAz42KNmNijSKZOZm9ldLFisT69g/7etTLCUND
 +hX3iZP5t5IhM5BaH3lIeR8tNaZg4sWCk2BG2JyDkgsK18qUB4lT7ZpwTKHHRsaLQeMIyyd4
 VVE4ainBFt6PLMJrnOaVo/RqvtTM1HYOaNTecqtvXjzqznRPuJZR+cLKbIyvp/GxT9eTKUla
 M2vsGPrgceBvIkMdlJTruJtJYikcrQ5G9Ul0mpX4kKqkB422M87fJwUT4KHvYuojr9l4UjVy
 qyVrOwUbd2wrIZfgQ4kLcL0wHCtRUuZ+nBXph7nU0DgQKPpf4WOufwnCZp+EEH7PB/xvqYJn
 dU9KeoovWaRA411oZ0GNoQpNzCwvGDUsK1ihtksmUfHZPPaF7/Kn61ZNIDzu9Q8/yhtnUNBX
 wzjqcoWghFfJJ2irRgoCvD4qGvsHvykQgtWii74IvAafrIYMJwrtZBR35tVzkHDVNE2MbFgz
 U+qSXTYDjYp8I8KyNnsqpT33TRJrMjdTOHl0yRx9C6nzLfBl5U1btbdsQ8VVABEBAAHCwV8E
 GAEIAAkFAk1NaIwCGwwACgkQnUbEiOQ2gwJEVg//YJxRC2MRxiHSPumYlJTvPQfrAorlCrkF
 xhRio+0R6czICqQcP6SQivmPICmEwVA2CGvURAHrbDFpeA3htdmv+an2FvofYd5HsNwAZua9
 rY1FRh7kne31rP/LhJrX31jJZ5MOfISWJXLmgZWVPgRVzSPnwY9Qy+GtCGs7Lhrv6j7BHiIR
 yif79VCVCy6qOA1vW70bILwDvmkGU8JBq4aKI+CaHUZvT0QD1cMn0q7RfhE1yiXxNq2LFvz9
 xQNuvlBvrIPURRq7d6D7r/9OqGiILCGSnEsaQdDDBDL5qZjTtxX29nL9Cw4S/uMDgaYGLabH
 g+J6eUol4IQyOFXe9pWbGXwUgjvBXALncOGckF6pX6MHLitB9Gqom3JZ7jnnVcGTa29ILEme
 a13MzRCd9EljBqIs1zrus08jfoiReTXw5j8NHlaNDGwzi3ceCXPFoJC2ob+26gIT5MUzJMVx
 VsFdtkLAqoeGckRyBiWzNFPgjLhM5QLy5uKvj8zRIS8WxITKZq74XTyMKPQfZN/Ypi1+9/fg
 YtC3ajjcI2XGALeSzg6GbU+D/ppKA1GZUlEWTFXf9wwMkcqbcDbGUjhrX4irqS7Y9uzfVE+X
 E5pvxcEnB0Ci8PlPYUSH7VcIAz3euxD0cnhvaFDog068sl+4OMBZFNqw28+BOx0gvlRf7lzK R74=
In-Reply-To: <aNyAr-XUGTlZHWtg@dojo.mi.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

On 01/10/2025 03:15, Mike O'Connor wrote:
> :> Second, I had expected ECC to "kill Rowhammer dead" only to find that it
> :> can be possible to cause enough bit flips to get all the way from one
> :> valid ECC word to another valid ECC word before ECC scrub reaches the
> :> location.  I suspect that the DDR5 built-in ECC is supposed to resolve
> :> Rowhammer, but we will have to wait and see if it actually achieves that
> :> goal.
> 
> You won't have to wait very long, it seems:
> https://comsec.ethz.ch/research/dram/phoenix/
> 
> ...
> 
> As someone who fielded inquiries about CVE-2023-51767 in the context
> of some commercial OSes/platforms when it first came out, I'd suggest
> this ought to be tagged as REJECTED.  It's sad that this bogus CVE is
> still causing confusion.  This almost makes me long for the good ol'
> days when CVEs stated out life as "candidates", and learned people
> would weigh in on whether it should be promoted to a full CVE.
> 
> If I read this thread right, the author of the paper didn't request
> this CVE, and it was assigned via MITRE (probably the result of some
> external requester).  I'd suggest bringing it up with MITRE, get to
> the source of who actually made the CVE request, and properly dispose
> of this.  I'd suggest engaging MITRE directly, not just righteous
> venting on oss-security, hoping it finds the right CVE folks.

The CVE got assigned by MITRE, so one can dispute it with MITRE directly. 
Apparently it's already been done, and the CVE appears as disputed [1]. I'm not 
sure if it will go from there to rejected.

Cheers,
Emilio

[1] https://www.cve.org/CVERecord?id=CVE-2023-51767
