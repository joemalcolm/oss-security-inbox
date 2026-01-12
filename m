Received: (qmail 28004 invoked by uid 550); 12 Jan 2026 03:45:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26393 invoked from network); 12 Jan 2026 03:10:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768187400; x=1768792200; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Om8Ik1Ptk1Y6KHySNqg/hifZOwv6si+tqSE7jUZAt48=;
        b=WOK756vTjmVcHMTgSiFDNwskllveHI5Tj1Fd9zUjXrjQwE6T6AXL1SFTcp9phRp0qJ
         gXhwFY9dThiSC84ucJKAn7dsryGBFrefKUnJWVEX46U7BbEDzVSgoSGr2s/yBCIF3dlT
         ijOPC0dkA4J16CI0iBQd+DoDfXQodgcH6XIeTIAPRQsRPrmhWFmIOT1dkAVuP1gPFhs8
         h2QZEqiTWrcRwEVc0PVTa1EvyYT3pclUQXf86EWo/DvpPUoRnFydZ3D8b8yeIn7zOt0Y
         ics1131PFfcU1TctoC97a2d0Yf62f4YknCYMMnTfwOlzNrQcdhFkusxN4QOOngVjkvYT
         XbRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768187400; x=1768792200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Om8Ik1Ptk1Y6KHySNqg/hifZOwv6si+tqSE7jUZAt48=;
        b=antQc3HTgBWDLrRxZ33CQesLljldjfz0DnYXUx2/E2hpDm7muq/E5ExZo0mqDbWrS3
         EqjNGC7c+qXu/Bn9hnrUh43GzAp1A0G4ViD0ZyilrB31qKxc+upXpNdpkUEii+EEmUG5
         vxIejJ38c39Vb9z/zHyPN+wyRsZQq3u6vhdA6v5/K7W646IMWRF3NAQBf/z8XJMzDtkx
         PP/LU1tNumUOpAZDJaYIvRuturwev4gmcQZycOZocRorZPqNsVXiRGmDFD6nggEzpaF6
         Tna1it8NI370xsZkX2YRjOST3vA7ArQOYlmXhwEUSxrsyD5Hj8SwcLPppe9vxecWU472
         6OVw==
X-Gm-Message-State: AOJu0YzEQ2C0gWmEMzYrayM3hrR2y3upvOddKRXSQoxYgxmkLeyggrHY
	oS/hgUaAc4qL9Ca2i7750Cw1Z8ChaXSnhlspxH3ENKJHdN295T3fhZlY2VnkbeZS
X-Gm-Gg: AY/fxX5wX7RgYVfSL+arXIrh0pJlkKdhmu1V0pkIJjA/8v2LZhhdG8mFSA7u+0CJgzA
	HBgleVjRd11werSnG+bHB2Nhs6sR/vGh4xZZO/gjD2o2isfsjBEolEfsZdtcDehAcDH9t4UaZlq
	XcmAuIH6pAUFs/WaBQaTGxX61FK0cWO7QvSxtNkzkuY1klkfVePcvOZGauD3+UOP13j0Y+Q9P/T
	abJpOEva+U4WLY2X4dNDIVEwmKdTM4BWYj4rjpCXMho4O8PYr8BmnOLn7nf7eE+wVio7Lwg7By9
	IACwatPK9mO7j1p3NgwzEO5whPvwVU9szLAaTG5mlfsb1GlvljGAPFo5b02lpNLi2X4t1wfF1Km
	ry1GNKmDj64WLykFrlEQmyYQs2bnfmScrMg59ASUqtVzDkP9vf96BxIQRSoqnRHOe2zKKfCT9wT
	zy3yZwe77Ox1pBcz+mhg==
X-Google-Smtp-Source: AGHT+IHv6GiJcFZdR0Tvzdl8xitNNMvkWoKXDFhp8Wxex/1W3GTAjSeJoKqMNNhcoEZ4UuQU8ErizA==
X-Received: by 2002:a4a:c88e:0:b0:65d:4d:4243 with SMTP id 006d021491bc7-65f54f5f6a5mr6724201eaf.45.1768187399732;
        Sun, 11 Jan 2026 19:09:59 -0800 (PST)
Message-ID: <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
Date: Sun, 11 Jan 2026 21:09:55 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 Alan Coopersmith <alan.coopersmith@oracle.com>
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 1/10/26 19:54, Alan Coopersmith wrote:
> https://github.com/harfbuzz/harfbuzz/security/advisories/GHSA-xvjr-f2r9-c7ww 
>
> advises:
>
>> HarfBuzz Null Pointer Dereference Vulnerability Report
>> ======================================================
>>
>> [...]
>>
>> 2. Vulnerability Description and Impact
>>
>> Description
>> -----------
>>
>> A null pointer dereference vulnerability exists in the
>> SubtableUnicodesCache::create function located in
>> src/hb-ot-cmap-table.hh:1672-1673. The function fails to check if
>> hb_malloc returns NULL before using placement new to construct an
>> object at the returned pointer address.
>>
>> When hb_malloc fails to allocate memory (which can occur in low-memory
>> conditions or when using custom allocators that simulate allocation
>> failures), it returns NULL. The code then attempts to call the
>> constructor on this null pointer using placement new syntax, resulting
>> in undefined behavior and a Segmentation Fault.
>>
>> Impact
>> ------
>> DoS can be triggered.
>>
>> 3. Scenario
>>
>> The function prototype is as follows:
>>
>> // src/hb-ot-cmap-table.hh:1669-1675
>> static SubtableUnicodesCache* create (hb_blob_ptr_t<cmap> source_table)
>> {
>>   SubtableUnicodesCache* cache =
>>       (SubtableUnicodesCache*) hb_malloc 
>> (sizeof(SubtableUnicodesCache));
>>   new (cache) SubtableUnicodesCache (source_table);
>>   return cache;
>> }
>>
>> [...]
>>
>> Although all operands are pointer types, there is no null check for 
>> the return
>> value of hb_malloc, causing placement new to be executed on a null 
>> pointer.
>>
>> [...]
>>
>> 5. Result
>>
>> Segmentation Fault occurs.
>> [...]
>> Analysis
>>
>>     Error Type: SEGV (Segmentation Violation)
>>     Access Address: 0x000000000000 (null pointer)
>>     Access Type: WRITE (write access)
>>     Occurrence Location: hb-ot-cmap-table.hh:1692 (inside constructor)
>>     Root Cause Location: hb-ot-cmap-table.hh:1673 (missing null check)
>> [...]
>> Severity: Moderate 5.3 / 10
>> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
>> CVE ID: CVE-2026-22693
>
>
> The fix is listed as:
> https://github.com/harfbuzz/harfbuzz/commit/1265ff8d990284f04d8768f35b0e20ae5f60daae 
>
> which was merged yesterday, weeks after the 12.3.0 release, despite 
> the CVE record
> claiming "This issue has been patched in version 12.3.0."

Aside from the dubious patch, this is a good example of a legitimate bug 
but bogus CVE:  how exactly does an attacker trigger this without either 
having *already* completed a DoS attack (consuming all memory) or 
achieved arbitrary code execution (altering the allocator to return NULL 
even though memory is available)?

In short, this is a crash bug, but not a security issue.  This is 
different from (for example) a parser bug that results in NULL being 
dereferenced if crafted input is processed.

Are we now using CVE IDs as some kind of global bug tracker?


-- Jacob


