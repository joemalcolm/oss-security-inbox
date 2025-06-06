Received: (qmail 22242 invoked by uid 550); 6 Jun 2025 16:51:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1672 invoked from network); 6 Jun 2025 13:40:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749217222; x=1749822022; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ADsn3gME+xdae0bV2S/vs6DfBNQIrdkHZhhEsoPYP5Q=;
        b=VUO3KkoAPfNxoRbGgB/Qr78pn8hUIMOrru8lFbzdsLvD93YOZcR0HYgBg1rYXbWBPJ
         Xb8Qi8sbi7CyZ981NLBAWQ92AoljueWpqsw12j/6ZPhNHGA2MfdgD6E7PoO6OrpOxviT
         l0x1YWM89IpgEfRxmHDINdK6e2xqAWNb+6Nazjo7X2bT7IEbA+J5/gQGzAOsE/rHdgJ6
         koDeujcTltzm3OCfKuoIQ5qauM9y/nzVOXKUSq7WO3TEBw1E+n5zHDMbGElqy6JgLf7s
         /wg7lZCq0bQ6ELOozYPZcrE0SUGflOrg8V+G1rP+9iiynoRiAsYjIAmuW+zcSrx+4+n1
         pHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749217222; x=1749822022;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ADsn3gME+xdae0bV2S/vs6DfBNQIrdkHZhhEsoPYP5Q=;
        b=wAD5QeUTvPnIiw0GVZWP193ABjv8ssCCFETT42Et+TmSkTXDAMsaOvbWqrYUtMet2e
         YHw0Z4VkAxZNileuaqbS7LZJpdgoV9Ugq9bmbpp8u79pB7ea1TqcwTMzJipH+JCGCUvA
         xsfheGGi0jlRU+zzKJUa7pgzJ48QYUXKsMFT+iomMrK+AD6o1pFrklBrQm/J5D22dzXi
         K93SWORDnMPQGTR/CdujRrFmNj8waNYQ8Z55V4OiXxpjEEpq3KJBnV8Z33KlaX3PYjIA
         KQ/bRrLeulL00jM35QN3SfdP18R+HYOni6GZwJ5bCNOFFeRwEZKIPTjuHbvx2PiW7y0/
         t9ug==
X-Forwarded-Encrypted: i=1; AJvYcCWJU53rlrFg6ze/3uAb0UT0ild6CnXE9CDPiq0NqZVKGqx+xbAFBti8U5GYW+nqzyy3Yg7m/oTsbL2/EIg=@lists.openwall.com
X-Gm-Message-State: AOJu0YweLegmhOGiIxdq/rCkrD5QvAy/u2sSySD557Clp0R74HgvZ/wX
	KHvODfulK5XYtgaxcYSULPqElK5+yhWLzkmdNVd3/iPXE0eSjtlWly7x
X-Gm-Gg: ASbGncuPqsmLOb0QHBQ3FIHMePhkDZT6wP+wZXZWuFsnpdQcSetIfa+RZpZ4M6VU3sP
	1+gIeBaP42w67vr+ZwSL9m8RSj1sGJOo4jiOT7gsiJDjiKjMnw6AufnGSWfZUdnwXlVhbb3IfNo
	4IgOjkvIChIlJwYpCsHIop4SqKRsZUNk6j+0Yv4/zKrd23HbWMRWBVekVCVvEQiISZXU4bAMrif
	AlWfK9J6TqkqdLQqJ37SRYSkhlAMJkxo+N+nqKf/du0qXaao+ustGSbJTA/ljO20cL7qqSLsQmb
	V+AvZGsbGs/o7bAwdlILWSgVsGa6pQ+pZ/EGEz5UKBFoWG99bPPNCrySzrs+Y9o=
X-Google-Smtp-Source: AGHT+IEY8tZvepRNpd5eorIr4PWeMDJVeA4m+0kWowd8ccT/cAtn4WKYMMKO2Lwvk8E3OwpdBTlD7Q==
X-Received: by 2002:a05:6000:188f:b0:3a4:f52d:8b05 with SMTP id ffacd0b85a97d-3a531cc5c8amr3070861f8f.35.1749217221924;
        Fri, 06 Jun 2025 06:40:21 -0700 (PDT)
Message-ID: <7d8815b7-a417-4407-87a3-fb0dc7c4f81f@gmail.com>
Date: Fri, 6 Jun 2025 15:40:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Attila Szasz <szasza.contact@gmail.com>
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: =?UTF-8?Q?Muhammed_H=C3=BCsam_Alzeyyat?= <hussamalzeyyat@gmail.com>
References: <20250603025919.GA11183@openwall.com>
 <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
 <20250606030239.GA897@openwall.com>
Content-Language: en-US
In-Reply-To: <20250606030239.GA897@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

> OTOH, is there other significant security impact?  As I understood, on
> Ubuntu a privileged logged in user could use this bug to obtain root.
> However, is that user perhaps privileged enough to also sudo to root by
> default?  So is this only a bypass of the need to re-enter the user's
> password for sudo?  That sudo from user to root is only a nominal
> protection mechanism anyway, more against inadvertent mistakes than
> against malicious attacks.

I didn't make this explicit in the video, but this works when
running as a non-sudoer user, and also on Ubuntu Server. I think
Canonical Product Security might have better estimates on this, but
I'm guessing many of the corporate, gov, academic, HPC cluster, etc
use cases are impacted practically in such a setting.

Also, many customers ofhttps://ubuntu.com/pro, I think.
Incidentally, I don't know how active user sessions in polkit and the
state of being a sudoer vs non-sudoer works when you hook up workstations
to AD, but it might be interesting.

On 6/2/25 22:59, Solar Designer wrote:
[..]

 > If nothing else, this can be used to bypass UEFI Secure Boot.

Could be. Also, I know that Debian wanted to disable hfs/hfsplus
altogether in kernel config, but it was pointed out that
powerpc and ppc64 still needs that - I guess for booting properly.

https://salsa.debian.org/kernel-team/linux/-/merge_requests/1422
https://github.com/AOSC-Tracking/debian-kernel-team-linux/commit/9b5d19e4bb14e65ff3295e7af394f4048a3bfba0
https://salsa.debian.org/kernel-team/linux/-/commit/d522d84d1b39689b31030eda65b33b29bada5a9a

> Do I correctly read "(any<=5.6)" as indicating that the filesystem 
> corruption bug has been fixed for a long time now?

Yeah, so there was a fix for something that was reported as a
stability problem*, and that, combined with the slab OOB write
could result in the vector that I'm discussing there. The one
without the need to mount a corrupted state.

Incidentally, this also means that if the kernel had actually refused
to fix the issue — which they did for about 5–6 months, only upstreaming
the fix on the same day the CVE was rejected — then the stable 5.4
release would have been affected by that vector
even though the whole thing was kinda dismissed as a non-CVE.

I'll let the reader judge whether this is the right way to
do conservative defense-in-depth or not.

* this was actually the commit that piqued my interest,
because it indicated that something really fishy was going on
about manipulating the B-tree's on disk.
I talked about this for a smaller group of audience, but
I ran into this whole mess through an IoT security evaluation
of sorts by noticing that the company Tuxera used to sell
their HFS+ 'on steroids' solution for Asus, Linksys and a bunch
of manufacturers where the kernel module was essentially just the
upstream driver. Even from the decompiled snippets it was clear that
that driver was somewhat unstable.



