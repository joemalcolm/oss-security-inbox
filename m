Received: (qmail 20420 invoked by uid 550); 29 Apr 2026 03:18:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20394 invoked from network); 29 Apr 2026 03:18:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777432717; x=1778037517; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bYLvenzKxwnvLPMXfNYi7fhY8MxU0KiDmHc+3ZfaRxU=;
        b=bejZTdgHLho4m7AvOhIHVx5697YuJyb97tit+cVy4mucI8OiHMuCktSJZww2xBK5Lh
         da8jX+VrYh+/y6E3cHmdPBQ8SJFiZEBJF3bgrb+s2G+H8CtHTvyDxxkk9mFxromgbq+4
         S9wgwjO01l+cesfxRHfw8G9dqKSvMbDyg+k66q9YtTkjnnxcNFaCUWM30yiW4xp5194X
         4IMB6OWi4uDSMDjW9vIlglqT86GIkeW9c/d9DdpA+/zEwA+lsmPbrVRD0s3yWE/EbNVl
         L26GUUJrlyD6wFxxUv4s2fAZKnSRoTHIJj812ZBrAXyRorkpEka58Rj3ab5wMM5kQfWR
         M51A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777432717; x=1778037517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bYLvenzKxwnvLPMXfNYi7fhY8MxU0KiDmHc+3ZfaRxU=;
        b=EnT49n0J/m0LHgtM7xNnf1RyOwrd3ROBusFZpCapmAugssUnv+921U7nEGC2KYtB6u
         C9XUBK7zpSYLHuYe2WW+FQ3hy8pPxiaPpvtKatBJF8p3wZW6E8Q+YQnok5gHouu8tM2T
         wDa+m4c7lgOwtmZIR37d0cZIru5pQqQxfPI+UMRH/yqaN4/iADD7scB3fpoPMMsUJa/2
         6lIA8TtfAUvEUQOAzo0cK/87CvEsJuVg5CYLxMosVzSY5yijEOkoTiztPC+gtF2ci2ym
         F1V/OiRj3/clw2ghjGcTb30uBIgKgPDopEr9QEsQmvji54JU+Ep2c2IXQdN64zaFBKr+
         5voA==
X-Gm-Message-State: AOJu0YwLEZrgdvEzFUnQ5TIqHYvIwIQfXnwK7UM+IasdFbAvJ4RGP2Qt
	yb8TqB1CA1D45XfTY4kI+bXNSkqYkLUuzfX5TAoCEvU1bVs9OWz2EhDNMKNR6PBI
X-Gm-Gg: AeBDietiCnC+NKtmTVz/cDrb4CfDAB0iB5WYRPCgmcPEsUaRwKuWodkujJ2TmWkQhGp
	r1dSYsNr8HkEMm63W5Oa0+ThnvIafUCUa/WiQ1/bRP3eo18jYpHLOwwINC3uCPNRuMuuInPwMQL
	Ay4wSmcX43+ox4ncsXfGCuB+3GJxj9D30zhnHAAPUzxEZfiWUbABBdruxDBpH5ww+g5HtBmyzsZ
	TSmofVqVJPLC7wgerr9k9rkvT3rzCq16efId3vR6Ut7kxBERhaj+6s3ekF02P1roIaTRo0y0Vjg
	ZA3mOLpp6uIxtwwMgOj2DJ7zGNguaPM7Cx6O3D+EROa0kbuVkRhH/sNGCp7YQt7gYURzvTTXgDX
	XETaIQp/EnVsgogwJbgS4wNdD3UwEtoxZ8RZEc6fDcoEq0h7nyEBwY+PYItWLJPezRrLKeb/l2P
	80Z0y3tENo7P19hLPoy7hkxOt0HwoC
X-Received: by 2002:a05:6820:4802:b0:696:2674:89f6 with SMTP id 006d021491bc7-69669786f8dmr536679eaf.0.1777432716654;
        Tue, 28 Apr 2026 20:18:36 -0700 (PDT)
Message-ID: <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
Date: Tue, 28 Apr 2026 22:18:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 4/28/26 09:58, Jeremy Stanley wrote:
> As I'm sure is the case for everyone, the projects I work in are under 
> a seemingly unending deluge of vulnerability reports from researchers 
> using LLMs to mine for security gold in our software. At the same 
> time, we see maintainers on our projects relying on LLM-oriented tools 
> to develop fixes for vulnerabilities and compose prose for advisories.
>
> While I take a moment to catch my breath, this new Bizarro World we're 
> all living in has gotten me thinking about the risks of public LLM 
> services to embargoed vulnerability handling workflows and traditional 
> coordinated disclosure. The operators of these LLM services are known 
> to feed prompts and results back into their training data, presumably 
> making it faster and easier for the same information to be found later 
> by other users of the same service. Would keeping embargoes short help 
> to mitigate related risks of parallel rediscovery or outright 
> disclosure to other LLM users? It seems to me that there must be some 
> inherent lag in this process, but how much?

The biggest risk is parallel discovery.  If an LLM can find a bug for a 
whitehat, it can do the same for a blackhat.

> I'm sorely tempted, both due to the increased volume and the risk of 
> premature disclosure, to just assume that any vulnerability reported 
> as a result of research using an LLM is trivially discoverable by 
> others, and give up trying to pretend there's any point to working it 
> under embargo.

You are correct here:  you should assume that any LLM will give a 
similar result to another person who asks a similar question.  In other 
words, LLM-discovered vulnerabilities should be considered already 
publicly known.

> Similarly, it makes sense to me that patch development and descriptive 
> prose shouldn't be produced with LLM assistance for any vulnerability 
> that is being worked under an embargo.

This is not a problem if, and only if, you only use local LLMs. Use of 
cloud LLM services should be assumed to break an embargo---they would be 
immensely valuable "watering hole" targets for blackhats if such use 
became common.


-- Jacob


