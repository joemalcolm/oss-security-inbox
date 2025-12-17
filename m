Received: (qmail 13345 invoked by uid 550); 17 Dec 2025 01:50:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1158 invoked from network); 17 Dec 2025 01:43:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765935826; x=1766540626; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nay8CNDrkEwH1SSaa2TIfEpOprsGwpzfVvTY89XPQ6g=;
        b=D93Ovch573DUUyl0PkweIz14NDgLJii64kfDOnyKnm/pAVwnZoGAWmR+YOFD43ybBU
         ZrpkyU+QLOscXFuIVXzep3XhYYNd2rtvIQPSBGwUhO88GI0P3Xa4adSchRXHfogw9QvW
         nZep7RLQP2WvfDwgA998ILHqjw6wyaZFte1JrklhQgTWhL1dorv2s7O3H0aE93IsjmG3
         hlSYD++5OIGVhrjg2cwxBHNLwPerE4n7cEN3n7D6jibI1QbW/50O2ItV8Z6a9LiXCzPW
         mdlmQRpBn2cEBFiwMTlQ8KsoNrqmdqvuMGc6MP/2FWW3Ms1LCgRJoI4h3+/4yMy/SSok
         6cRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765935826; x=1766540626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nay8CNDrkEwH1SSaa2TIfEpOprsGwpzfVvTY89XPQ6g=;
        b=DVgmR2FXTrKlYWQd5t3wcC1r3XplMCsVubaq8QmCkdv6X1sLX3WJyqkChHYg8JSqT9
         R9RzBmM5EpGF1HiTnb/R/D6Ht0Fqs8bVJdAgd6CHNe5hawv2uCou+FdPi4miHS5V/N1N
         K2h5/JHISI8e1/3VlzhR3+8pQGT2lxmTb8v71f+igpCNGLYugkJJQ1j2kvlHb50p11F0
         wzfpw4nXftP/IIt+JhV9mwaDlHHdt17zEyuwP3jjOhhmYHCZxo1o3fmvlVyK3SnQjQf5
         t7s0ROETCpfSyBeaOCyT5UitqYYkQpyOXGR16RUsC2pIiLLGXbf0mM+IihliPRj/m0LU
         0/ng==
X-Gm-Message-State: AOJu0YyFRIXRJivYlJn0fqePs9fYdXi0mGBa3iHSgHtllmQEqw4if9iv
	T+4eHeF3Z4V2GOr71uxNwc4R5MVsPhGYyyhz184lu5txcJlUZH5pv3/93zSiO8TH
X-Gm-Gg: AY/fxX5DOeU62jpyA59VBF0nOIFdOidTMdXuhocw+I4Gky3iiCqGf8257lSVotj+WFi
	GN/jpSXUCrwjhIJCnNi/gYC2P25dzxL0TrUj8GwXtVKs5NVEFf6dv7v2EAtjjigQ8SqI3nOWksR
	TxRCn3JeRyJzNnjMW+jyYm2rLMFA5P9/8sTF7Mj2o3qoPbeoj7NQHGP0l1hUKJREnQMK7UgzqXE
	/2JiLjY67km6xh3SkROHC4hTHMDBkcvrqF4dA911BjdNpvNRiu8VfT5hMJjw2mA1avpJd2oPQPq
	bgQMLRM//fLT+PtVdUAX3wuIrdp/yfzK5Ds0DwUhiBiq4jPkaAKRobtBepes79YIkIN/hnbmHEc
	9wwHyy2ANBRjEHEKzEeNyevapJHEqnBwl7g2jmDfqH/V30IzdvpnV7N6GLY91HblN825KntG8Oc
	dKTewo4J4=
X-Google-Smtp-Source: AGHT+IFbOj5ZlVNUftYNeNFgNf18BL6zxr3i4QU/fWjLS1kGRqzUUm+W2d0aKwXd9m7OgbEuI5Dqng==
X-Received: by 2002:a05:6830:4c08:b0:7c7:6275:419b with SMTP id 46e09a7af769-7cae8353d39mr9174565a34.20.1765935826457;
        Tue, 16 Dec 2025 17:43:46 -0800 (PST)
Message-ID: <a508afdc-888b-45cd-b479-9601a833acfe@gmail.com>
Date: Tue, 16 Dec 2025 19:43:24 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, turistu@gmail.com
References: <68b13971a63c33c7a18c8c236d0b4b23.d2701554@milliner.nutritionists>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <68b13971a63c33c7a18c8c236d0b4b23.d2701554@milliner.nutritionists>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] [CVE-2025-14282] dropbear: privilege escalation
 via unix domain socket forwardings

On 12/16/25 08:27, turistu@gmail.com wrote:
> [...]
>
> But this dbus/systemd thing is only meant as illustration; there are plenty
> of other ways to (ab)use this; in particular, xwayland / recent linux distros
> have gutted the X11 cookie auth, only relying on "si:localuser" (i.e. on
> SO_PEERCRED checks) for authentication.

This looks to me like the problem here is systemd and wayland offering 
abusable endpoints and distributions intentionally weakening security.

Gutting X11 cookie auth is *completely* *inexcusable* in a networked 
environment.  Could that itself qualify for a CVE on all distributions 
that do it?


-- Jacob

