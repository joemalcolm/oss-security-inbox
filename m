Received: (qmail 27840 invoked by uid 550); 1 Feb 2024 09:48:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27822 invoked from network); 1 Feb 2024 09:48:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706781046; x=1707385846; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lj7COJXzmxS5+yH3rpjxTlnyaAt68sJX4vvhaxttIaw=;
        b=J7qb9Pk7ZY9SaEImMHMAy1KOOlLNWL/zTshT47OANzedlPNqp82bcGfr0RvLkKUaU3
         RXkcyrPSyeaQQBGG//ANIKDjcN2bvn3XxJbEi9MjZqCWR1vboxQj8bnhHA7vcPoJlC04
         O1GCsKRX4yFA0XwbdCMN1QR42J28fB4yqN72vbWpaAlWrArIROSpv0nHSEEONbpZZJ6g
         IxybC3LWYMNAHq9TFYNfDTvK57kJYA2C6fRkCe3tnGHP31kbYDo7abcihwYdhg+beB8k
         bVMp4c8WPdO6vPtB/qeIrePq3MqI0yaxgmXI/4aay+xOjYlUbjBjts1RnuyWGmmI7idS
         1c7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706781046; x=1707385846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lj7COJXzmxS5+yH3rpjxTlnyaAt68sJX4vvhaxttIaw=;
        b=YosnuOyd+1tuov+a/O4uOk7l/kTKBpK+kkfkaBRErxTkA4Iy4xT63gNchb0/EEEdkx
         ImqyjzSbQH1aF+1CJnCwiDQeWrBSYqEBCNSz6qu8UvMyxATU5McMD9E46Yy6232O2GFx
         5A1klfDgjHdSrbqadY8911wYieN7UkowMQ3tkNncJhsGM6t/BjC6Asn4gpRPceW/EQRF
         pl41GoCCiCo2jKV8YO9h6Mz20aQ/tltlrIMsfQWzyCVUFPLkRPNLEOUHMTGLQ5j6TSyS
         qZxodhQysib8y6uVdjSr63BHSeYJ08WEA7tnz60/M2Xsz5ppRpFSp4AA0f8wyL2HG3By
         6sQA==
X-Gm-Message-State: AOJu0YzkVyEgLDwRyIuZg8V9Jx8lfhWlmk4KSZX1qcJhSy+sl1UxkAdm
	2hHPSthVyEP4CYDXofsuU16QqYK9nFJRqAj8AX9oFupFK1n88LD6
X-Google-Smtp-Source: AGHT+IE687xqv1PLmMlqAeoHwuCTndUzyQeE1cvxPCcAfumA5A5Y6xIpV7VVRRRRzgv5tZM+EeQrPQ==
X-Received: by 2002:a05:6808:138b:b0:3be:8642:2d1e with SMTP id c11-20020a056808138b00b003be86422d1emr2098710oiw.5.1706781046071;
        Thu, 01 Feb 2024 01:50:46 -0800 (PST)
Message-ID: <ce4e335d-2492-ff63-7529-61b862fec800@gmail.com>
Date: Thu, 1 Feb 2024 20:50:42 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Amos Jeffries <squid3@treenet.co.nz>, oss-security@lists.openwall.com
References: <aa1585dd-d109-463e-9639-9b6f576a3f1e@oracle.com>
 <47f2f72f-302d-2bdc-447d-0d970d9f8b15@gmail.com>
 <8cbdda76-dcfc-41b3-b613-b88a80784328@treenet.co.nz>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <8cbdda76-dcfc-41b3-b613-b88a80784328@treenet.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Numerous unconfirmed FOSS CVEs disclosed on FD
 mailing list



On 2/1/24 19:54, Amos Jeffries wrote:
> On 27/01/24 12:03, Matthew Fernandez wrote:
>> On 1/27/24 08:53, Alan Coopersmith wrote:
>>> While I can't speak for all the projects involved, I can speak for the
>>> X.Org maintainers & security team, and I can say that we were not
>>> consulted or informed about this CVE filing - if I wasn't on the FD
>>> mailing list, I wouldn't even know it had happened.  The CNA responsible
>>> has not yet published the CVE to the CVE database yet, so we can't yet
>>> file a dispute, but once they do, I plan to request that they withdraw
>>> CVE-2023-45916 for xedit, as there is no security boundary crossed here
>>> and the bug doesn't allow someone to do anything they otherwise 
>>> couldn't.
>>
>> We (the Graphviz maintainers) were also not consulted/informed. Though 
>> we do not plan to contest the CVE.
> 
> 
> Please *DO* contest CVE issued for non-security bugs. It helps 
> discourage this kind of bad behaviour if their CVEs get removed. May 
> also help CNA to identify repeat offenders for closer inspection of 
> reports.

The CVE in question is CVE-2023-46045. MITRE still shows it as RESERVED 
but many downstream trackers already have the details.

Whether this has a security impact or not is environment specific. So 
I’m inclined to be conservative and leave it. Though the affected 
versions are wrong, which is going to impact downstream triage, so we’ll 
have to contest that.

The Graphviz project doesn’t generally request CVEs. Though sometimes 
third parties request CVEs against Graphviz. We’re usually fine with 
that; if someone wants a CVE to track, OK. These third parties rarely 
(never?) consult with us before requesting. So Graphviz commit messages 
and changelogs almost never mention CVEs, because we’re not aware of 
them at the time.
