Received: (qmail 11344 invoked by uid 550); 8 Sep 2023 17:52:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7256 invoked from network); 8 Sep 2023 17:48:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=di.uniroma1.it; s=google; t=1694195303; x=1694800103; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:from:content-language
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y7d9FhX/0eQ25J5qWM9Jh1j5bpajH/Zzpz8WKGMb1HI=;
        b=Qz6wKCuG3OvANncQo9OV2PNG3308TzlDszoSIByPZq4mlD7yYrDCilChvDddwEvbBc
         8cinD+yIU/BcfaUC9reGLnJmlpGsDKW+K6cxLjHFKTfyiZ3QTtLt3+1MME9u4kXPvHCk
         vu/HDHBTqGqnWZuFInFA4G9z4qjQS/e3SLgLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694195303; x=1694800103;
        h=content-transfer-encoding:to:subject:from:content-language
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y7d9FhX/0eQ25J5qWM9Jh1j5bpajH/Zzpz8WKGMb1HI=;
        b=vUF0cIJL78i/Qal7VfTvV45tVX1W2aPPJHHAZ2I7ekKaOHrWnQSdIbsRGPugiG6puf
         uutTZRWVlYTZvprX5YuRnHR33Sm2f61cEBQg2AIJ+6gvBdFF/xSq3Jj64C5EO7JO+nS1
         VsrWCyGSpa+RtfRhHaP3IpqnCjIBx3mVKEYxLw3jGeCZV1248Hk6Sx+gwXUqqx+oRYLt
         sfq+4Y+4KIY9RFck1o59QTOaWO7RK0NWWQDWLMVF5LJCu0kKjI6vSHSnxktR2im3Ra48
         ukD/mdnG+r07okIVh5NWwo5LaMu7GOhjVzis4/KeM2rWCyDiGg/JJfUd2bWHT0G87llI
         cW2A==
X-Gm-Message-State: AOJu0YyH9bhq0nwnWP51V3deqoOCW9CR2NJV5Ns91EajUt5A7Kbl/GB1
	tFcrJYbsKcWtCxP8NtM6T9JcwUsLscHcOPleCMCiFw==
X-Google-Smtp-Source: AGHT+IHumFuRJK5HfA/HgQnpDsVAUr/Ki3ALTjiDu74PmRTQWbtout+s6X0rhgtLpn3jnJ7E+ATbIw==
X-Received: by 2002:a05:600c:3782:b0:3fe:19cf:93c9 with SMTP id o2-20020a05600c378200b003fe19cf93c9mr2856930wmr.1.1694195302983;
        Fri, 08 Sep 2023 10:48:22 -0700 (PDT)
Message-ID: <50dfd9cf-a4c8-9b4c-6419-91f68ca45e88@di.uniroma1.it>
Date: Fri, 8 Sep 2023 19:48:21 +0200
MIME-Version: 1.0
Content-Language: en-US, it
From: Enrico Bassetti <bassetti@di.uniroma1.it>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-4809: FreeBSD pf bypass when using IPv6

Hello *,

A few months ago, as part of our investigations on IPv6 security in the 
NetSecurityLab @ Sapienza University, we discovered a vulnerability that 
allows attackers to bypass rules in pf-based IPv6 firewalls in 
particular conditions.

Vulnerability (TL;DR)
==============
A FreeBSD with `pf` as firewall for IPv6 traffic and `scrub` enabled to 
reassemble IPv6 fragments is vulnerable to an attack that uses a crafted 
packet posing as IPv6 "atomic" fragment to bypass the rules. After the 
fragment is matched against some firewall rules (but not all!), it is 
then "corrected" and forwarded to the destination (if no "deny" rule is 
matched).


References
==============
This vulnerability has been assigned the ID CVE-2023-4809.

The FreeBSD advisory is at
https://www.freebsd.org/security/advisories/FreeBSD-SA-23:10.pf.asc

We wrote a description with an example at:
https://www.enricobassetti.it/2023/09/cve-2023-4809-freebsd-pf-bypass-when-using-ipv6/


Solution
==============
The solution is to update FreeBSD to the latest version. All FreeBSD 
versions up to (but not including) 13.2-STABLE, 13.2-RELEASE-p3, 
12.4-STABLE, and 12.4-RELEASE-p5 are affected.


Best regards,
Enrico Bassetti
