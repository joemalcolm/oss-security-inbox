Received: (qmail 1912 invoked by uid 550); 19 Mar 2025 01:40:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5339 invoked from network); 19 Mar 2025 01:32:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742347948; x=1742952748; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7BbVqB32GFRTKCGC5rIqz3rzRFt/RfaNqlf1meQRjo=;
        b=Dl+5AiE3MqF0D0peih7gsaAm+kDRT7pZHEPXBCLTNg/1HwM06xGIU5ClkBHIZkyLgh
         oBlJxZMlFcPNjoRDkBJKD/u5NY8kTzMI5BEYDp5UoOVCzzxltK1aI3UBkWo6qmyCKvBs
         S2cs4Yd17sd8MocYI6wDrEXRYljf1+JC4hhlRuCzJI9bO2LdRhLdNKKbGyyedBVLFzUK
         kM//lmyZVkDTU2DN8mJyalS9XxVnOutVo29py4x6AJgfYz0GhbNZoYKeNQng9+fUk3G8
         YHkq/B2jFkCfWzJJ4/QP4i502mKbgb/8SRKypp7+mWgRp4s7u7mGfPUFhAy0K+qgxXaL
         S1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742347948; x=1742952748;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y7BbVqB32GFRTKCGC5rIqz3rzRFt/RfaNqlf1meQRjo=;
        b=d64GoSOCUJpA95CK2TxMRQbQaBSB+h4eyYoOqyVHxx+AqZp/qnmPM+yT/rqDNEBU1+
         pCMfcNVX6BCHUldwlwwViFEl8cJ342l8nxfz9skFr3XQ83nTa/XRy7LSM4krIoYnDV23
         0p8eLaWMCSpz44a5F2IapGWvF1mcjEq8mjz53DzhwmvHLaeKMaIHz4zXseHEWELTacHs
         v3Np+OU5ruP+yAPqL8hFHTCtJO4Q8sHdH47RXcZV3XcRGTmTtSn5Z9/u/nDusD4snJWN
         uoh0WGnD5i0Vt8DmvTEOneVlt8rq2LvgogHCHeBcf7Ecs941qOrlO1BlFTuj2OMeU4tC
         o3rw==
X-Gm-Message-State: AOJu0YzrQgQwczddTJMX+bX+kEEFI4UMmvoLq8zjXX6Znbw6Lqg3ZSsI
	upotMrGjSFvc8atcH5YysZSc4fouerr+y5QYK368WXFs1vhLAYqH9rZSaA==
X-Gm-Gg: ASbGncvtegPpUpwjSP6AYTJlR/gybvlyYt+5r/26vge0IAEreX5bYsP47WbOsUVJYId
	7iAERQAhgP8c7POjPhPrKvukLnH0ymShd1ncLT5QPGcGzddzLi4MpcYOMSdzQGdLHVq58nDuJh9
	T8o8zsv1e6BeOGUS5sjq490c7t3gOc3j55Vg2aaleeujwd3ncjD93GgmKPa6ai543tLZi7ojpL3
	JK3t3OX88hTFPBhMjo4Fkew8EbKIjrhhq0GP1uIfcG/u4gneBCLX/ESa3094UEDtfoLM+NGzE4a
	axN9tLfOno0PPxk7Q4R8CpOXbz7KkV8OqTfe6aTizA==
X-Google-Smtp-Source: AGHT+IH/uWQgO83J3SrYm2gsoILzgvkOcFS2rwqGiLEMWk0XWEcNiibRSzXzMhp90vMuwfiXhgkZQA==
X-Received: by 2002:a05:6871:62c4:b0:2c2:cd87:7521 with SMTP id 586e51a60fabf-2c74543af28mr611024fac.4.1742347948094;
        Tue, 18 Mar 2025 18:32:28 -0700 (PDT)
Message-ID: <10ea58b5-3b2b-44b7-a5bb-5f06c356e9fe@gmail.com>
Date: Tue, 18 Mar 2025 20:32:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Mark Esler <mark.esler@chainguard.dev>
References: <CAK84RTWeQW-+SAFR5V+Y_utGT8U30NaoVxYu+7CfZz18EQ0Vag@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAK84RTWeQW-+SAFR5V+Y_utGT8U30NaoVxYu+7CfZz18EQ0Vag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] tj-action/changed-files GitHub action was
 compromised

On 3/15/25 14:03, Mark Esler wrote:
> On March 14 2025 at 16:57:45 UTC the tj-action/changed-files GitHub action was
> compromised with commit 0e58ed8 ("chore(deps): lock file maintenance (#2460)").
> This commit was added to all 361 tagged versions of the GitHub action. This
> malicious commit results in a script that can leak CI/CD secrets from runner
> memory.
>
> [...]

How the attacker got the commit into the tj-action/changed-files 
namespace seems obvious (GitHub uses a common storage pool for a 
repository and its forks; an attacker need only fork a repository and 
push the malicious commit to his own fork), but has there been any 
progress on determining how the tags were repointed?

I hope the explanation is stolen credentials, but possibilities include 
exploits on maintenance bots or even GitHub itself.


-- Jacob

