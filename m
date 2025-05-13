Received: (qmail 13973 invoked by uid 550); 13 May 2025 15:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27825 invoked from network); 13 May 2025 10:49:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747133386; x=1747738186; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OCjZMirvF/zy6a+Z7/47oiGb6xEHo0Uh8Xr0huoIWcc=;
        b=cB/KqWE6elWRlPuNWArMAmWzd5KUxisAPCZeLQlQ6vJ0rmoN7QMRUfY5qCSYtdt64n
         3uq3fosRcL5R2ObLMgYCUG4Ulz4uRtyxUXbkAYG+pAtUAll9xgubQ3gq8T6dJFohZc5q
         zAk8n0Dg3442eixIWqh0oaFvnNYPvykkNX2kBTKypi/GeFjkN0w/R3rkcw+C0k3tgFn5
         7O84lW8BHE/LtyvxZiHT0XyoNmWwhDdAWYrjnST7OLXSdbt2wAsLQ4LOU3s8hFvnI27s
         5hCGb9DmvmqW0805vS+Jju2w+8r6wFsluWfzNuv4VMyNGEt8zlkls6vtaeWP4dbjfSp9
         VEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747133386; x=1747738186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OCjZMirvF/zy6a+Z7/47oiGb6xEHo0Uh8Xr0huoIWcc=;
        b=J+w/ksLS2Tq5qIQzxgcewpMP7XzUOMFrNe3zMEeagWd0mtrgJG+5apRx+pmMcInJnj
         +/kFMJ7IZTCMMtBlShyYpcUiqhJhSHBd+kvEWKGsm8RchWCSvvT7uTQTYUCMt3iz4GHn
         SHnfsu61W1z+qnZpNG6jLCp6/Q9lWHcCjiX/hWB118zWgdspWZQZQu5G4BoT9ritaUqW
         mbdvyhsxxfeKlgRqVFYXASYA0Bs9aIf8In0wIj0jBOQ9Kk05vl8vHPW5/BsnyqRiLtNR
         X+EQ51et45HaXC1dC2w6Zi65UONB+Hgqm1ChwLq4tQPSZ1vCU0zKUAvKPUA/HkcFKlnB
         XfJg==
X-Forwarded-Encrypted: i=1; AJvYcCXhVp0i9NVg/v3aHoziGH5sGAmXn2yzkdBX+JdFAI/2RW8STxsUOngBJzvTzRoWmGKdXxNEqxhFqoO7L3E=@lists.openwall.com
X-Gm-Message-State: AOJu0YwWz1n2H+w3PN8MvAAunHyOYeEkaGMHwK3yTv3LAYu6HyZXBw6i
	ARpoJju14wYiTutlLS//hckca1bypKtchD3zumwBYuNb3Ea9wXiG
X-Gm-Gg: ASbGncuN7ovPhsDEn+59jRWwXVT5mJ4CQSi+4Erdc5BzHpNRTHDRUZvvXEAndv1YODf
	HrLk0jnzt+ctTcFSukrcRA/zFtxppgozaB26gbVUuaIJraBfQNsNCLcHnlBsz3cMOol86jC3ipH
	xG0wjWhisKAFPzo/N6iX4rGZvhnQ3PrTMrujxxUPHwK8EsAGYX9walixWEZQaHxlFXP7UmOnQm3
	UtthPU1cmedq71krbL9BAfD4e1GqG7GoaeqQuaSMhWuyX1S2Afb+7yf8u2A3GnEHOWP6p36sya4
	gBz98E7I6oJAHAVkAlK02V1OORlwXXandBlzfiANd57CHrDqYEDtIThTx6jR+eeNQ5kXGUDv8nT
	bfGgygERw8i3hG/sJWqcUnUm7Mqc=
X-Google-Smtp-Source: AGHT+IFCBy7sa36EE9Q2/aZNlKDlhNvr1/5CRvn/XJ5Hi0vDUzYvzSUcQmQ96H35z8eQj77ROgm02w==
X-Received: by 2002:a05:6512:6802:b0:549:8b24:989f with SMTP id 2adb3069b0e04-54fc67605d7mr5228128e87.0.1747133386009;
        Tue, 13 May 2025 03:49:46 -0700 (PDT)
Message-ID: <c26387d6-44a0-46a4-9673-a1d14624c465@gmail.com>
Date: Tue, 13 May 2025 12:49:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Johnston <matt@ucc.asn.au>, oss-security@lists.openwall.com
References: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
 <42b72ad8-61d2-48f6-9d29-0774149e344e@gmail.com>
 <f4a0fa7f299ca02b5cf46a805d9c989c@ucc.asn.au>
Content-Language: en-GB
From: Albert Veli <albert.veli@gmail.com>
In-Reply-To: <f4a0fa7f299ca02b5cf46a805d9c989c@ucc.asn.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Dropbear SSH 2025.88 fixes CVE-2025-47203

Thanks, this worked.

On 2025-05-13 02:47, Matt Johnston wrote:
> dbclient 'localhost,|touch 123 '
>
Although I have a custom CLI as login shell in /etc/passwd, but if I 
change it to /bin/sh then it works.
>> 2. Both dbclient and ssh are symlinks to the same dropbear binary.
>> Does this CVE apply equally to both, or is it specific to dbclient?
>
> It applies to both.
Thanks. That means I am vulnerable (except for the login shell part that 
complicates it).
