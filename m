Received: (qmail 19709 invoked by uid 550); 4 Jun 2026 04:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29780 invoked from network); 4 Jun 2026 03:41:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780544454; x=1781149254; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NlV2RLwkN1UHhr4bjxEggUdHynaKzNBTKywZY4d82gU=;
        b=OeGJXcRDzbYvjhA6UlBsuEPokqncl3WzdXVmVFC9ek3AK/o01jVMwKWRkfg/7Z/ihA
         VBSqSTu/ptd6tbUpQX7jVNAIqROki0dejYhKRHL9vgUZbmxmSJ+klTEGv+ZRx3wzC9HW
         L4HA5nui9sTGhRrceMM0OoAq7+KGvSxPHOE4Hn6Gz7wyEs9YsFJGgm41mvr2Y4TNE6PP
         jW5GtnVJZJRqoalzEBDb98Jq1No5w8iqDOYwXnipxGFBwXOkMtuNFX9uSRDrAtR5zfY4
         8FMz9/Ez6SMejEOA9XfrOl7FYQ2M3T04zPYFws2h9z9YhsjwJpPVj3Tg5pV3JTuZxUrJ
         dOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780544454; x=1781149254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NlV2RLwkN1UHhr4bjxEggUdHynaKzNBTKywZY4d82gU=;
        b=bNPUuCR8rrzCqSystgwglLMd/GwgAHeQSzctk1E1hJ+iBy5pIi0yS4ntF6+I+DdNV6
         oBFfFy50uutVTuKdAcTB381orTEiRbnY0x/wiIZmUnHdSTw90PhdCpxw+3st3yyAUOdA
         ZODa2LDs67yb6ms4IQ77xJaEnb4qNUECAAeSYDTSO6Zbvard7XjxI+jGLAJCKSgAilCG
         rkc/lFuw0CiFOF59eZxoReQoxyIQAy90kTSEyPvH+x/j6GQHCd0iqOQxTHri0tAFyRXc
         1gGIghE94iRMYUJNrL+5TbvGzU/OjeUgJfyMlgxmtPww97mHYuFIWCT79ObPD/CYc3Lh
         9P6w==
X-Gm-Message-State: AOJu0YxUQxKIORnyLzDOiYo6erhsGlMqY26P2l5gWPLsyDGOqm33cnof
	DXVl4qkHg9SPhbHtVhQFPA/OG+vCVxJzxrhflAZ416dembfIKLrbvWKo
X-Gm-Gg: Acq92OGZPssa1/d+4VIuJIr4GqIxquKh2h8YDILl9AsMmItSQ2LzJfrhfJGvBq9cCAh
	kZDSge52UQkcHlsgY1bmU+giNKv/H2xG11rzrG6s7+yWDQ3KzGa5m4zSC6+f3ZDm9bpFRvOT/n1
	zFSVT4g/kIdcJnQZuiNp/KlHfRmf9eAqSLhxZxRDA8LCcpdW0ClC1nHMxvLnkl+tKeTQH/4NT1P
	uK/P6Uz186OOP+y502hAj54S0DPn7IqwORt0E0tVogpRVnK3UE1dZv6LBNqTXu6h3tWl6UkSm+8
	PaHCudKYS8npIrhhrgx6rsxxdZaweg1nndloShTsmpMn8vFJAAK/3zk5dTbmNjUo706wG4Rd+V1
	BMOsUITGKENy/hDcj+aRQfT0fCUVkI7N5f/PyYPAyLTJJnY40bokcPkE8wjFhWsmJOsiYSmBlFF
	OKIB3G/w0LEJxpJJngFZ/XbjU4NSWHX8Y=
X-Received: by 2002:a05:6808:2f0c:b0:486:4c2c:63f2 with SMTP id 5614622812f47-4865a906ac9mr3749677b6e.2.1780544454184;
        Wed, 03 Jun 2026 20:40:54 -0700 (PDT)
Message-ID: <fb77a57b-82e7-4e72-8ec5-a30fe9c1b3db@gmail.com>
Date: Wed, 3 Jun 2026 22:40:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleg Sevostyanov <savant05@gmail.com>
Cc: oss-security@lists.openwall.com
References: <CAJv4Csu5=C04SfEWEWe7QuUTTYbwRieTxCXQ4chO3tPXDvGxHw@mail.gmail.com>
 <dba33ac5-e1de-47d1-ac39-05fc42dfa3f4@gmail.com>
 <CAJv4CssaPRCG40QqABsMj89riidUxAO35LVns_X=Df-+qfThpQ@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAJv4CssaPRCG40QqABsMj89riidUxAO35LVns_X=Df-+qfThpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Linux kernel TLS ULP use-after-free in
 tls_sk_proto_close()

On 6/3/26 04:16, Oleg Sevostyanov wrote:
> Thank you for the comments.
>
> You are right about the reproducer. I mistakenly included it despite 
> saying
> that I was not including it. I apologize for the inconsistency.
>
> I also agree that taking lock_sock(sk) earlier in tls_sk_proto_close() 
> looks
> like the natural mitigation direction, given that the function takes it
> unconditionally anyway. I will bring this point to the kernel/networking
> maintainers when discussing a fix.

The pattern of deferring a lock that will be unconditionally acquired 
would be a good target for a broader locking audit.

Having the lock functions return a dummy value so that acquiring a lock 
can be the first executable step, as part of local variable 
initialization, is a more radical solution to this category of problem.  
The "unused variable" problem could be resolved by making that return 
value a "lock cookie" that will be later passed to the corresponding 
unlock function.


-- Jacob


