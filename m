Received: (qmail 3108 invoked by uid 550); 6 Mar 2025 04:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3083 invoked from network); 6 Mar 2025 04:11:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1741234287; x=1741839087; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xMCNt79N71b9siM+893MFgefvCIM8C8rumVXWi0B5tk=;
        b=hFXEIfTgAx5PUTK5QYFiQVOZf1RvJN+vjWOgH0B2hth5gIqVmMIr+NSPNnVqXnsnYZ
         cnyr9vXJhPBZ5tjvWFsJznM9WP5TmePXJvj0mnGFjZGioqxt9ULhA0ilXwl8prMeyyRe
         apoQ4TzUyrx4sFqL6S96cWUWR9K8Sqq7WF/n4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741234287; x=1741839087;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xMCNt79N71b9siM+893MFgefvCIM8C8rumVXWi0B5tk=;
        b=s8JQve+gH8uEq335yPNJRIa7KH9ZY5uJkfr5UeniTYhaYyO9eO64CKpvTnn68ZiRlQ
         VbCWBJxe4tzzcIZc6ushi6B2RKsaLKfnIrrj4IVQJlofubUi1Vivl/JPiGuWm1Cc82Uy
         yTp4cBKODeeTD8NwhrsqwY1ZkFWFs36EFluQPbd5ozhPcR+lOL8szwJdH7cVjUeJU2UV
         00WvU/Dh/GuCNv+UrxkzCw2P81/gZ95n2Es2Qo4rz0DnDViXUB8Wjm0OlVEGcGVBPjgC
         6+gaumSsYhNZLpZdXDm/QNZegre7FJQepB131lUci34ZhblGyo1529sZwKc32eecRllg
         je0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXI3LwrMrgHHPFwz9yMSIFCwt3kzfd9DcgxP4AM4LwM/deEMJ+Hjoyz/v1jBvgHwnJXKImEOI9IlZzWyic=@lists.openwall.com
X-Gm-Message-State: AOJu0Yzd5VB0SDqUWTn5sTkpYkAv91PyRYklbMgMsC0x5RIKOJaly/+a
	6vrfzdDs7T3RgCqdCGx42urrZTyP8T73u9GQgxkRnmAFucbikliE1JePzEyW7vvDsfSH3x146Na
	A
X-Gm-Gg: ASbGnct5eviV0W15GnD5G/mZRULQ/N+Oxa0jjOlkjOXXWLlAmMU0ELispDFqPZ5FDpF
	rnWzh8DzZoPDEj7FuHIXZtiHKtzL3Nav1tBhMQtvykr1rbIHwMyFNAl10RiCRKcNIqTqkljMhmF
	SBrpQqG9rGX1tMXUewtwcqg4FFLcT9XVr33F/8M3DuiP87Z9PYJ8WzAjgFS2w9Jl1R/RT7I7Efo
	df2H5IJKADyKqLzZeJRwxGcO0QovpnG6g/WWJyudflMevBRITpoj9udaQnZR4dyFwtmjDBV/xBD
	dXrse28sUh/1EuBhDscUtmUutvc0gq2vsmZ1fyZm17bwQe7H+YMgTaMJJxOIqqrooX59pDpmT1Z
	0ednkV6i6
X-Google-Smtp-Source: AGHT+IEqLQ1XINdW4es+epfcl3+a52E01bE7UqyAyyqZSL7ukw7F6IiBvF7yy6FKVEFe164v//jLDQ==
X-Received: by 2002:a05:6402:2692:b0:5e0:3f83:92ab with SMTP id 4fb4d7f45d1cf-5e59f4fce3fmr5429665a12.30.1741234287336;
        Wed, 05 Mar 2025 20:11:27 -0800 (PST)
Message-ID: <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
Date: Thu, 6 Mar 2025 04:11:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
 <20250306031513.GA4873@openwall.com>
Content-Language: en-GB
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
In-Reply-To: <20250306031513.GA4873@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU
 Microcode Signature Verification Vulnerability

On 06/03/2025 3:15 am, Solar Designer wrote:
> On Wed, Mar 05, 2025 at 07:11:23PM +0000, Andrew Cooper wrote:
>> See:
>>
>> https://bughunters.google.com/blog/5424842357473280/zen-and-the-art-of-microcode-hacking
>> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7033.html
>>
>> Right now there are four known but (reasonably) benign microcodes from a
>> non-AMD source.  However, there is a tool to sign arbitrary microcode.
>>
>> In Xen, we've provided a stopgap mitigation to perform extra checks on
>> microcode load on affected CPU families.  This is a SHA2 digest check
>> against hashes with believed-good provenance.  This is staging only for
>> now, in case it is overly disruptive.
>>
>> This will not protect against an already-compromised platform, but it
>> will prevent an uncompromised system becoming compromised via Xen's
>> microcode loading capabilities.
> Thank you, Andrew!
>
> Maybe you can also clarify what Xen's threat model is here, and how this
> mitigation fits into it?
>
> Specifically, what are "Xen's microcode loading capabilities" and are
> they in any way more exposed than the host system's root account?  Even
> with Xen's mitigation above, host root can still load microcode without
> Xen involvement, right?  Unless you block (at least) MSR access and
> kernel module loading?

First of all, there's an equivalent change in Linux.

https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bb2281fb05e50108ce95c43ab7e701ee564565c8

Owing to AMD either having 0 OS-loading support (client), and/or
sluggish firmware schedules (SinkClose / CVE-2023-31315 was especially
bad), and that 3rd party repositories of microcode repositories ripped
out of firmware exist, there is a small but known usergroup who take
microcode from a 3rd party source.

As of today, anyone can make an arbitrary malicious microcode that will
load on Zen1-4 CPUs.

This issue wins points for spite, because the highest risk users are the
ones who were taking proactive steps to try and improve their security,
betting that AMD's patchloader crypto was sound.

While AMD has, to the best of my knowledge, done firmware updates for
all impacted systems, plenty of the older ones are out of support with
their OEM and will never get this fix.

> Also, by "uncompromised system", do you specifically mean uncompromised
> at microcode level?

Yes.  Compromised microcode can, for example, backdoor the SKINIT
instruction and/or and forge measurements in the TPM, as microcode is
within the trust boundary for such technologies.

Under Host UEFI Secure Boot, there is a security boundary between kernel
code and root.  Part of the requirement is "no unsigned code running
privileged", and while this is technically a grey area (the malicious
blob is signed; it's just not signed by AMD), it's also easy to argue
that root definitely shouldn't be able to load a malicious microcode,
just like it shouldn't be able to swap out the kernel with an unsigned
one and reboot.

In Xen we're working towards properly supporting UEFI Secure Boot. 
We're not there yet (there's a lot of technical debt to overcome), hence
why this isn't a full-blown XSA.


All of that said, it's also likely that there are a lot of vulnerable
but uncompromised systems.  These measures in Xen and Linux are a
stopgap; a bit of extra defence in depth.  They're certainly not perfect.

~Andrew
