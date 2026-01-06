Received: (qmail 32126 invoked by uid 550); 6 Jan 2026 15:20:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3869 invoked from network); 6 Jan 2026 09:43:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zone.ee; q=dns/txt;
 s=zone; bh=J4NX8ffN815bKiiLeIAKcaUg+7jKpU7j0GHXPGgHrM8=;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 b=yM0boUEEj0PkDr85H9XGT+eSexMAPwUQWbwV16CH1xVvKP54iIGxBrtHM/4ICrQQMfdbKxQ9e
 95DXRLBUx7CZd/4O4IJeHRiUbYGTVG86ua961cW6VBBdsJ309tloCFqrG74sj/9KSokX/8h4vNZ
 3gXVXcycvRdhGXEAd64DgLYs+J1DZ2l+AfCv8yiV5L6ukCp1wpYLvgGoD3DIN15xr38X1OtGZmU
 IlEhHeuhomu/p48vRkmAaIVajjSlbYfrxAHC8U+Eq60zosvZKeB+N/G/npTQRqvyckJq19bZyvB
 TnVa/23YGp6Lo5utZSN5iFOjXp/sQgjZdCd+T1J9XjBQ==
Message-ID: <aa5751dd-a982-477c-82ff-dafcb91ca0db@zone.ee>
Date: Tue, 6 Jan 2026 11:43:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Taavi_Eom=C3=A4e?= <taavi@zone.ee>
Cc: Demi Marie Obenour <demiobenour@gmail.com>
In-Reply-To: <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Hi,

On 03.01.2026 22:41, Demi Marie Obenour wrote:
> Are you concerned about the attack surface of these libraries?
> OpenSSL has a substantial history of vulnerabilities.  One of the
> goals of OpenSSH signatures is to be easy to correctly implement,
> even in languages like C.
>
> I'd be interested in what ASN.1 compilers and libraries you recommend,
> especially ones that support BER instead of only DER.  I actually tried
> writing one myself and it's not easy, though definitely not impossible.
On 05.01.2026 21:05, Demi Marie Obenour wrote:
> Microsoft has a spec, and it does use a fairly reasonable subset
> of CMS, but it is still quite complex.  Much of the complexity is
> likely in the X.509 certificate handling, though.  This assumes one
> uses a special-purpose CMS implementation and not a general-purpose,
> overcomplicated one.

I have a working implementation for S/MIME with BER support* written in 
Rust. Using RustTLS, the crates behind pyca/cryptography for X.509 
certificate handling and indygreg/cryptography-rs for the CMS. Took me a 
few days to write a PoC, so it's very doable. Especially for a vendor 
with an actual need (for a memory-safe implementation).

In my experience PGP/GPG is much worse to implement and much less 
well-defined than S/MIME. That is just spec-wise, even if you manage to 
write a memory-safe implementation.


I plan on upstreaming S/MIME support to pyca/cryptography for it to be 
able to fully check the certificates conform to the CABf S/MIME 
baseline. The maintainers of the project are also thinking about making 
the crates more generally usable.

There's also an Authenticode/PE implementation written in Rust on 
GitHub, haven't taken a close look though.


* - Because CMS currently requires it. But it's a remnant that could be 
removed, there's even a lazy justification for it in the RFC.


