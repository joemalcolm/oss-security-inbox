Received: (qmail 15946 invoked by uid 550); 8 Apr 2025 16:39:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15928 invoked from network); 8 Apr 2025 16:39:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1744130365; x=1744735165; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EcWfB4ogVqCrtI6urCWRen2+5FT9hZt7PFywowcA2q4=;
        b=IZgs+OzT9HiPACmcIeK/lbyjeke+BD+Hn4Rl5WPLRWXoM7x2a1ZZY5r01nhzC9w+FT
         8HqCC6rFYwvOYrbFAgK4GrN0L84YnEfYS2oghoocMBk4AxzW74i3YaKnMzVOyujlegNN
         QGWSNrnKpCSwbUspmmhdtRdK4sxUm/tgLN8ec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744130365; x=1744735165;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EcWfB4ogVqCrtI6urCWRen2+5FT9hZt7PFywowcA2q4=;
        b=mewXLkUNbKU04LpTfeIU98KCwAFz/fGgV1ODmt8F32d29vY0qFF9jiPfjRuSUnj1t0
         xA9zKT4Eg2iRrms6UcER6ERzOrRXiN0oFWnNJcu7Wjig2Yy+OGv05rM05Jc8qSd2Zc7S
         fXbfc8/+n9pIZyb/4WXTEVu5G2x+TSGOFYfNipSGzMx/p/GumZ4WkcwEkkYMB/ybZ5dG
         qeQe2IbMFsM7c7DDqhS2XGc9d/Ncqr0OwTJLynS1rWaodDJNpTneElvnCfweGGVQB+SV
         YQ7iQlXHtH4DUaZKAPERXm+x5Ydxg+gCGV/TAC1JDyy3X8GxXU4IWKEdutG+Y0D7UTmY
         80vw==
X-Gm-Message-State: AOJu0Yy1SK7wFszVWMLC6HSqJv+2rB5u7syKY30OnOqlHJlcve0YHs46
	zVDRvfm0LvzqO/3cpJZvV8brTF2KyZkVfvO1kdI3Tt8Vz+Jx7d9qNTUy31sl1MUu1lT4u5eoGO7
	6G38=
X-Gm-Gg: ASbGnctCE0eOnX5mK47WzYT5RYlPnr0jzeWECqjqTElrYmW9VuA4KOtYh4utyFQuqw+
	pUqhNM2i5uv20Gm+gWRJGELrA938IhlpedfMaxRMJ3BWqcnQrbTELtdM560vH1YBTiYvlgWqMYy
	wVhRIeXZqCf9SfFN1VG7/gT/gAXf1t1SqgeGem4AfZHRXUSzwISc6CKiSbDqm0K4FNynJLVxYjq
	dAPWH6kLTuJriwtpuBOYjSo0cZ7dOVC23kmSKToJLk2aUaBBYzo0eIAQkb6ttpO/C509HqRMpu5
	NAe3RssU96prC9y0PWNHCsQuJi+A6mjIpuX08g6EAThF81doWemfloYyB2NLLhUpcn5LItPIpp4
	bhjUt62QELw==
X-Google-Smtp-Source: AGHT+IGRGoLn7SxyvcgulFly6lLqCD1E6QmjPL2lsLyU93Ky2BW17rg2ehqKMmOgd+tdOquMVhU+Tw==
X-Received: by 2002:a05:6000:1864:b0:39a:c9ae:a198 with SMTP id ffacd0b85a97d-39d820a3e29mr3915254f8f.1.1744130365061;
        Tue, 08 Apr 2025 09:39:25 -0700 (PDT)
Message-ID: <b66f24d0-6f20-459c-a7ab-c5c6267791a1@citrix.com>
Date: Tue, 8 Apr 2025 17:39:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
 <20250306031513.GA4873@openwall.com>
 <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
 <20250306044856.GA6417@openwall.com>
 <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com>
 <20250313035536.GA20899@openwall.com>
Content-Language: en-GB
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
In-Reply-To: <20250313035536.GA20899@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU
 Microcode Signature Verification Vulnerability

On 13/03/2025 3:55 am, Solar Designer wrote:
> On Sat, Mar 08, 2025 at 01:28:07AM +0000, Andrew Cooper wrote:
>> On 06/03/2025 4:48 am, Solar Designer wrote:
>>> On Thu, Mar 06, 2025 at 04:11:25AM +0000, Andrew Cooper wrote:
>>>> This issue wins points for spite, because the highest risk users are the
>>>> ones who were taking proactive steps to try and improve their security,
>>>> betting that AMD's patchloader crypto was sound.
>>> OK, so this is to protect legitimate sysadmins from loading malicious
>>> microcode inadvertently or via a supply chain attack.  Makes sense.
>> Sorry for the delay, I knew there was a distro formally doing this, but
>> I'd lost track of the links.
>>
>> https://github.com/divestedcg/real-ucode which is packaged for Arch as
>> https://aur.archlinux.org/packages/amd-real-ucode-git (and an equivalent
>> Intel package).
> Thank you for these followup postings, Andrew!  They're very helpful.
>
> I have one late nitpick to add - as jericho @attritionorg pointed out on
> Twitter, the Subject line here gives an incorrect CVE number.  The
> correct one is CVE-2024-36347.

Oops, my mistake.  (This is what happens when the sources of information
try to block things like copy/paste, and I'm in a rush.)

However, happy patch Tuesday.

Zen5 CPUs have been breached too, and
https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7033.html
has been quietly updated to reflect this.

~Andrew
