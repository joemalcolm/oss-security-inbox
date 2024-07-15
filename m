Received: (qmail 28371 invoked by uid 550); 15 Jul 2024 16:58:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11635 invoked from network); 15 Jul 2024 16:46:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=almalinux.org; s=google; t=1721062000; x=1721666800; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nX7PzINxIaA/DVtwWbja2lVWP3unObY63kmTF0Vo3vs=;
        b=fEP3FnAVdBWDw0jdilMa+TPfq6E08mbPML6Xd5SdWipsRDVcVrPKhJL79bUzwkzmtQ
         9VSE3Sb7KIOMkF/SaHFqZtTCwloavh4+FyH/zNqax19QQm/zqX7hI8JBPkCGU+JuuHfv
         WEJpbf8snDo0OTYa1OpOIfe7aygQYB0FyOnipshe4CLa3hxSI5ekFMbda9Yh27Zmrpxg
         Rsr7oI+qhjo18iML6OhaD6OUYNGR5d/EIcCCdxRbdwuxxDaOPcCJwG3oPKfj6evOdXnl
         fZevWN4EKOMgoVZFuuUsbsz2I4GzwgWy/Ay8G2OaDQ57dMUcrG+g0OwmK0/5gW/ZPuaR
         Lbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721062000; x=1721666800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nX7PzINxIaA/DVtwWbja2lVWP3unObY63kmTF0Vo3vs=;
        b=W0NBroPU7VoRMt70LRCfgED4tKSWZiYFhbzgFxIX+MXAks/gxnoZleKiavR/5BXZZ3
         M2VeKwZBRelz7dd+vZU1mjEYQVKfgoiprJGsGnfJ8I42P2kLWrJkZczHklM00OqVsouj
         VdzhsCpxP49gxL1lltHZAVDdp6susGbKIdZeujni1345vDiTD3ADeC2BaCKpn2rPUzVd
         eWN/agTn+WjVCtmzy/KyzyJG34PcnWT0RTmxCBkppaOjJfao+SXzAwj2KAs6p57Cf4pa
         9TizXxy6UeMbhWwiHqp0Zo5pjJ+0mWg29rF1P4onputbbvN1qX0sHObzp0MR3UPZ22N8
         Llpg==
X-Gm-Message-State: AOJu0YwjYCVRq6xRM+SSHTn+KbM/tgCiVJBeFeYBpm1LLDmtlJodXSP1
	P7SiBgqaj+Pd9a4CPZbQV1ljaPVAQsWsDaBHtQP0NDZqWdI86cimF8hTW6ePExSLT4DClH5nxoC
	h
X-Google-Smtp-Source: AGHT+IGBJIUUVmkyMgxLNvL7L0pO4++491hriovhxYLhwrfwmZupKPkyLlo6eIKT1ZMXe9JNhBcZKw==
X-Received: by 2002:a0d:e602:0:b0:613:febf:7a7c with SMTP id 00721157ae682-663542a2fbfmr513667b3.16.1721061999818;
        Mon, 15 Jul 2024 09:46:39 -0700 (PDT)
Message-ID: <cc557953-68e0-4e47-ac66-d3a98278864e@almalinux.org>
Date: Mon, 15 Jul 2024 11:46:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
 <Zo7mU_N9joNTZ4gV@itl-email> <Zo759RRNseuva6zO@aeon>
 <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
Content-Language: en-US
From: Jonathan Wright <jonathan@almalinux.org>
In-Reply-To: <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

Just to confirm, I'm more than happy to vouch for Michel, Davide, and 
Neal.  I've been working with all 3 for a couple of years now and 
they're an excellent fit for the list.

On 7/10/2024 6:54 PM, Michel Lind wrote:
> Hi Demi, Mark,
> On Wed, Jul 10, 2024 at 04:15:33PM -0500, Mark Esler wrote:
>> On Wed, Jul 10, 2024 at 03:51:44PM -0400, Demi Marie Obenour wrote:
>>> On Wed, Jul 10, 2024 at 11:23:56AM -0500, Michel Lind wrote:
>>>> I am submitting this application on behalf of CentOS Project's Hyperscale SIG.
>>>>
>>>> Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG co-chairs), would be joining if approved.
>>>>    https://sigs.centos.org/hyperscale/sig/membership/
>>>>
>>> I know that at least Neal Gompa is also a Fedora developer.  Would it
>>> be permissible for him to also handle security patches for Fedora, if
>>> Fedora is also affected?
> All three of us are Fedora developers - but AIUI, we will not and can not use
> membership here to contribute Fedora patches - until the embargo is
> over.
>
> For Hyperscale itself we plan to use the head start to have local builds
> ready to go, and commit and do a public build as soon as the embargo is
> over; if it needs collaboration we can use private Git repos and E2EE
> private chats to discuss the fix among ourselves.
>
> This is, to the best of my knowledge, similar to how AlmaLinux handles
> embargoed security issues - the fix is ready to go but is only made
> available once the embargo is lifted.
>
> Now - wearing our Fedora hats, we certainly would try and help get this
> fixed in Fedora once the embargo is over (as we've done before) - and
> knowing a CVE is going to be made public would certainly help (e.g.
> trying to make sure one of us is around) - but we won't be participating
> in the list wearing our Fedora hat, or discuss embargoed issues with
> people not on the list.
>
>> I am curious what this could mean for Fedora Asahi Remix [0], as the
>> applicants maintain both distros.
>>
>> Is there interest in the Asahi SIG applying as well?
>>
>> I heartily endorse the applicants membership request and appreciate
>> their work. Hooray for ARM \o/
>>
> So... if this works for Hyperscale, we could potentially discuss with
> other Fedora developers about having Fedora itself be represented in
> linux-distros. Something to bring up at Flock! There's already some
> discussion of this in the Fedora Security Matrix room w.r.t. last week's
> OpenSSH CVE.
>
>
> Best regards,
>
