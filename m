Received: (qmail 16059 invoked by uid 550); 12 May 2026 13:19:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16022 invoked from network); 12 May 2026 13:19:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778591982;
	bh=vON5YNsTRtFwNC0bzpJGWRU18tCOISOAg0LFBneY9Ps=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To;
	b=eYWjhG0EqV+aY2b19rHc6ZfOx2PjbWDyAdkA2cfj8gy/2+RJeHwCdXX8hN7N9oFg9
	 s0fuX465e/FqLrpatr+t4aFBHuryGGfY7IWgkpBVUpEd20vworOSyVIVLHbe6uIdG+
	 HiQ09ujgMYTRykxWV0KsUhksAFKxA+asAqQUfmKmzvmvS/QytKP7Nidl15SJXhFnQh
	 UnYxMyegIJvVN56t07TSp0TCaYOHgJ60MiYZMPy9W+r6MP5zWH/3gUppYXdaI+l0CA
	 T4AsYP/htB073Mp5EzYnnUL4J8xmoZbVqMKT0//xImK0kXl1Fls6iI3QaU0rLzihQL
	 u03cS7a1vBH6A==
Message-ID: <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
Date: Tue, 12 May 2026 15:19:39 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
 <20260510074756.GA17210@openwall.com>
Content-Language: en-US
Cc: solar@openwall.com
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <20260510074756.GA17210@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and
 CVE-2026-44928

Hi Alexander,


On 5/10/26 09:47, Solar Designer wrote:
> On Sat, May 09, 2026 at 08:18:49PM +0200, Sebastian Pipping wrote:
>> just a quick note that uriparser 1.0.2 released today is fixing
>> vulnerabilities CVE-2026-44927 and CVE-2026-44928.
> 
> Thanks, but let's please be including vulnerability descriptions right
> in the postings.  Also, when it's one vulnerability, its title should be
> in the Subject line.  When it's more than one, then if there's a way to
> group them e.g. by category or severity, that could go into the Subject.
> 
>> Some key links are:
>>
>> - The change log of release 1.0.2
>>    https://github.com/uriparser/uriparser/blob/uriparser-1.0.2/ChangeLog
> 
> This says:
> 
>>>>>>>>>>>>>> SECURITY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>    * Fixed: [CVE-2026-44927]
>        Stop truncating `ptrdiff_t` to `int`
>        Thanks for the report to Ilia Alshanetsky and Joshua W. Windle!
>        (GitHub #304)
>    * Fixed: [CVE-2026-44928]
>        Fix `EqualsUri` with regard to `.absolutePath`
>        Thanks for the report to Ilia Alshanetsky! (GitHub #305)
>>>>>>>>>>>>>> SECURITY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>    * Fixed: Fix OOM related memory leak in `CopyUriMm`
>        Thanks for the report to Ilia Alshanetsky! (GitHub #306)
> 
>> - The fixing pull requests
>>    - https://github.com/uriparser/uriparser/pull/304
>>    - https://github.com/uriparser/uriparser/pull/305
>>
>> - The official CVE metadata
>>    - https://nvd.nist.gov/vuln/detail/CVE-2026-44927
>>    - https://nvd.nist.gov/vuln/detail/CVE-2026-44928
> 
> These only say a little:
> 
> CVE-2026-44927: In uriparser before 1.0.2, there is pointer difference
> truncation to int in various places.
> 
> CVE-2026-44928: In uriparser before 1.0.2, the function family EqualsUri
> can misclassify two unequal URIs as equal.
> 
> For CVE-2026-44927, it could help to clarify actual security exposure
> and impact.

I understand.

My understanding of the impact of the ptrdiff_t truncation
(CVE-2026-44927) was "DoS or more", and I focussed on fixing this in the
about 15 places rather than analyzing the impact in more detail.

Ilia and Joshua considered impact more than me, and I'm BCC'ing them
so they can reply to this mail directly if they like, please do not feel
pushed.

Let me add that the public CVSS score input for CVE-2026-44927 is 
(again) mistaken; none of these are correct:

- Attack vector: Local
- Attack complexity: High
- Availability: None

(Seen at https://github.com/advisories/ghsa-gmxg-5w57-j63q just now.)

Best



Sebastian

