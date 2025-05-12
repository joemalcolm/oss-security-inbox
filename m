Received: (qmail 32365 invoked by uid 550); 12 May 2025 19:20:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22199 invoked from network); 12 May 2025 18:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747075659; x=1747680459; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPd13qeE9LQuM2FFCzM6i3PwzEmQvTOGFt3fqXoNPCs=;
        b=YS0eQAqe9bQYN+1+zQGITmpmuNmJ/tjbeLzdAMKfFAbJPzOfvB3SSUbbDvcHOW/cxV
         ixkkcoDAW/SaltlgpYAqMytUcLU7wTQ4GAYRGX/BRlXvvvbTEZPuyGpPPlcMShGYH4da
         WAiQ+E5XWN5LLC/544IVWwELKbLobomCUXR8UvKwkJMcL176tj0aJKuDqwL/SV/EvE/Q
         JWIsd+AdC2tx/qp0I7DnxU2AI+9CbIRdbcximvzd45Kemf/i6GNNgCm3DR87A4Obcd7f
         1kY+bR1HhK1mDjsuXxEvYgqhJ0kN1Fr5crefcRrdlAY8P4pJolJ4iPLYZgP/YH+TJVkV
         k9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747075659; x=1747680459;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GPd13qeE9LQuM2FFCzM6i3PwzEmQvTOGFt3fqXoNPCs=;
        b=G2HWIvq4Mg8mRRLCO7DSgxuVvH4cCyQBz4wyJ7olMD15BNB9T11aSjiIpbWTaFBeLe
         aFcXSQTZcxFjm6Tls1uGuThe6clfGI1Nps/fbDT/QMnhW8RY/iRxGJ/nZKl7fj+07EmO
         sZYiRBz/0U14m3zaOqZSa3IQwa7wU+GBEhN544D4L2VNplFsp3Q8B0z1tyfUW2FTV19h
         +AB3fkDzDPAWI+04NdTVPycHFc4Ty/SRo6ucC9pl3cbeZMsKo7h7yZIo/p9c8rhXDO4N
         7R9xgm8LFLzNficoMSuVAZHsaFiBzmI32YpFjj4B9ZmDTo60pTj7BiRmqLFgsaUEZx3p
         sxig==
X-Gm-Message-State: AOJu0YwdvUWz/PCnjX74I1VB7gdVmJ+LzFWaQKa0JZJmEOYeABAh7/dN
	BYgAVbJjh1cnuwTEelbC3Kik2WTN8DbX42v/6V3o7XpuW+mw5AhpxWoawTLJ
X-Gm-Gg: ASbGncta8UcfABeEQNA1PfsD9Ng9zHCL4nn7hRXA9lp1GgoPye6M+VBfXZN8quaHELN
	qG2jk9vP/TtmgECKCdGjxdi36xBWlfES7oNMhXL6d0z2njA5qCfon+EO9tkmmL0Vjse0afP3T5p
	lj7TrEwhZwJ6cgVL5nuxxehjoKasrOYWOOOrG2DySuvAucvwHq39CFnYXU8LUzZ9hoDcU1O9hNt
	KmgX7AxYz/U/SdzcOd097RcT899uxnPGQurlyF3QiiFb1XmHAd3qSAcPYiKkE1cR5FVmaHP6iZ8
	hxJO0jNzAbRXQ+/gYhkslZRBDItDK75VCG1hncRqRJJsJgIz6ERSkM10aIIvjvHsT9N4a60JFSg
	Kahqk4QvaJoNOvwdqiuDzA2yzI1M=
X-Google-Smtp-Source: AGHT+IGnrj3dV6rNPFGNH/uYJqmvjZU/xRaoAJMKw+bykMOhdnSvdsadwH3zXjb6SuAwKDkymbkSTw==
X-Received: by 2002:a05:6512:6401:b0:54a:c4af:18 with SMTP id 2adb3069b0e04-54fc67c5defmr4510857e87.22.1747075659268;
        Mon, 12 May 2025 11:47:39 -0700 (PDT)
Message-ID: <42b72ad8-61d2-48f6-9d29-0774149e344e@gmail.com>
Date: Mon, 12 May 2025 20:47:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
References: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
From: Albert Veli <albert.veli@gmail.com>
In-Reply-To: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Dropbear SSH 2025.88 fixes CVE-2025-47203

Hi!

On 2025-05-09 18:15, Alan Coopersmith wrote:
> https://lists.ucc.gu.uwa.edu.au/pipermail/dropbear/2025q2/002385.html
> announces the release of Dropbear SSH 2025.88 including this fix:
>
>> - Security: Don't allow dbclient hostname arguments to be interpreted
>>   by the shell.
>>
>>   dbclient hostname arguments with a comma (for multihop) would be
>>   passed to the shell which could result in running arbitrary shell
>>   commands locally. That could be a security issue in situations
>>   where dbclient is passed untrusted hostname arguments.
>>
>>   Now the multihop command is executed directly, no shell is involved.
>>   Thanks to Marcin Nowak for the report, tracked as CVE-2025-47203

I'm currently triaging CVE-2025-47203 to determine whether an embedded 
system we maintain is actually affected. It runs 2024.86, and is built 
with DROPBEAR_CLI_PROXYCMD and DROPBEAR_CLI_MULTIHOP enabled.

However, despite attempting various multihop hostname inputs containing 
shell metacharacters (e.g. semicolons, backticks, pipes, $(cmd)), I’ve 
been unable to trigger any shell execution or command injection. All 
such inputs are interpreted literally as hostnames.

I have two main questions:

1. Is there a reliable way to confirm from the command line whether I'm 
vulnerable?

2. Both dbclient and ssh are symlinks to the same dropbear binary. Does 
this CVE apply equally to both, or is it specific to dbclient?

Thanks in advance,

Albert

