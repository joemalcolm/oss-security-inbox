Received: (qmail 19868 invoked by uid 550); 6 Mar 2025 18:11:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19848 invoked from network); 6 Mar 2025 18:11:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1741284683; x=1741889483; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QABLI7VpL+XbY0CMmFfRyLJMHXCvyz0YeMpqhNCsaJU=;
        b=N0Ui7Kw5NcxzbovVFIQVsO73q3/Qq+EarWoLgXiqAcKvEeCufu/9Ra1nwvJMXcneUc
         0tsGvPnCElnJ5aVZrm/oSZvEiMJuPBJaDj0gCQO71XNF1yGTD38wjJi4gXGI8ZOrtS2r
         MstxXSZZuEqMpf/GiXUFThR1U3pI74wFxAEEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741284683; x=1741889483;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QABLI7VpL+XbY0CMmFfRyLJMHXCvyz0YeMpqhNCsaJU=;
        b=mkdyU80T1+7ldM65Ii1szp8oGwSXeS+ocrV05+s3Qz0ar//6/19vXrgOxmjou8gDM8
         3UxV9JjyWWimedpZrjDU/n7Hg4D/ZH2ovSaewiICrzR/oayooFmhv4htAWURdqYQqHvx
         PO0AYKn4IbRCE113uay3C+X1LNwk+CGE0rpKxZo4BIcaV1noG6tX+Jkmnhl5EqrzFdjX
         W8DgmxbU6Sb1pasypnl24wVsWWvgxbShUaOgVAcYcgJQxUsiIKI0joYAEyConTSYaaUe
         NduFqpHDzT7Y8RXv/UPThtSQZtFk9Z+BV5ZHgqzQ/XVUu/Qbh4axTi8nEXCV7Yr2+Mfr
         oB4A==
X-Gm-Message-State: AOJu0YxCEOd0ZsMd+20RRvcyDO5rZyRqffNEl216tGoiCTs/+caHXsdP
	07Alk8KB5MDNXECXmBKsdbXKidwlwBxEzn306wA30DggeCYQeE72LEpe2LwmO825nkpRGZ3QLwk
	F
X-Gm-Gg: ASbGncvMAKBVynMv3/dSAyuDEbLFqdsEzutD5gWce9t97baQrku9/mb2PvTLvzusCkt
	h1Wfjs+Msj54VkgCEh/5eePBbtxe+2HvYusqm0Ws8iInTCzJdbsIu6hOmWED8Dtba9n5CeTzXxu
	yR+61cX1nDowXfuT49a0nR1XTh4kl/0x2rWg+k0VpiQ/g8yQUyZL/Y5lv7v4PSdDDMp6wouHN7E
	WISXyabZSMfRmRX2IrG/bdRQAOiW3m5hBC0uW2hxAlWh3HiN8/WXPv/SV9rNFjOB0t6ne+qITLJ
	xIZxsHAwm+Aa+lIHZBcOVsVgdva6EcdP52mC7w7le+D9y/XZZ1s/TbxbB7z+c8TxHV1YGyNnzAl
	OSi//4FBJ
X-Google-Smtp-Source: AGHT+IEY0FNHd1EoLxDrwYc1+s+6xL5k3NQUlw6Cfyb1cRgYaoQNzHL7D5PMkj4cqSS6m4TIR2f97A==
X-Received: by 2002:a5d:6483:0:b0:391:2a9f:2fcb with SMTP id ffacd0b85a97d-39132dd6c47mr89629f8f.36.1741284683147;
        Thu, 06 Mar 2025 10:11:23 -0800 (PST)
Message-ID: <fb77b285-53f4-46ef-a9a7-e5ab60706da7@citrix.com>
Date: Thu, 6 Mar 2025 18:11:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
 <20250306031513.GA4873@openwall.com>
 <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
 <20250306044856.GA6417@openwall.com>
Content-Language: en-GB
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
In-Reply-To: <20250306044856.GA6417@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU
 Microcode Signature Verification Vulnerability

On 06/03/2025 4:48 am, Solar Designer wrote:
>> Under Host UEFI Secure Boot, there is a security boundary between kernel
>> code and root.  Part of the requirement is "no unsigned code running
>> privileged", and while this is technically a grey area (the malicious
>> blob is signed; it's just not signed by AMD), it's also easy to argue
>> that root definitely shouldn't be able to load a malicious microcode,
>> just like it shouldn't be able to swap out the kernel with an unsigned
>> one and reboot.
> Yes, but can't Xen's and the kernel's new protections be bypassed by MSR
> access via /dev/cpu/*/msr?  The AMD microcode loader released by Google
> now doesn't appear to require more than that:
>
> https://github.com/google/security-research/blob/master/pocs/cpus/entrysign/zentool/loader.c

For Linux, /dev/cpu/*/msr isn't available when lockdown mode is active.

For Xen, guests can't load microcode at all (writes to the relevant MSRs
are simply swallowed).  Actually loading microcode is done via
hypercall, restricted to privileged domains, and digest checking can't
be disabled without a reboot (or a livepatch, which in a UEFI-SB model
needs to itself be signed).


Answering Bastian's question from the other fork of this thread (sorry,
I'm not CC'd).

Maintaining the hash list is a concern, but in the immediate term, the
relevant maintainers in Linux and Xen.

Something better is being worked on, but there are challenges beyond
just technical ones.

~Andrew
