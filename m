Received: (qmail 3199 invoked by uid 550); 5 Nov 2025 15:56:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3165 invoked from network); 5 Nov 2025 15:56:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358162; x=1762962962; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QwUDfjOc1+qXrFj4buGmJaSx5lvCB7IttKvSJJ4qFb0=;
        b=kXfOwgbu1ARVY4sG8cklvskls5YvKZwhITDutQGbCAzelgYjRDqaokDUIGDV1xvs9F
         1JZMvzOIAWFZiQtG+a/0lAph6VygfzZ6LFpkK9LPgC4fR2kR5w8WtKYaJg5ndM9Jb9to
         NthcbBkWZZZE00Um7sG8ti8lPEOxu8yGXq5VR/diDewyrO5eVQtrotHyfdJ6xTUcZNH/
         V1vsNaQ4BdBLu+DBlw7ePCFq8aRoTmbM2S/99QhL7SfOQ+4MCr5qAEiIVqP3OptzRnwA
         HD7+RTYWE0UIDYANbHscS21Ub5Cc/3pMGMLqxL32La9kD9KvMdo+ORzYa/W2l3L3VUBt
         WO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358162; x=1762962962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QwUDfjOc1+qXrFj4buGmJaSx5lvCB7IttKvSJJ4qFb0=;
        b=NZuTw+NaME+etTotSuwz3Y6twCDY18I7kyhez/7l50KMDl5l+/Yv4Pqr45rOugjm6U
         cjW5IhCvexgs76BJFbZ1w4UO4qvI69zREL8HRSi+tXF7M9vb8tK7Mi7mSC5PgK9Gh63p
         rtzyioDmSl1Jg/kmqAaCcNHmJ+fA7TxVN10EBsybjOZFjkdDxIX8aXKTNp0BB6KkR+sr
         YPJsS+pJe/aQRpyXqM/n3gEPV1suf7vA37TsfqyoS9ZZYlolZTVquJ9jYhqLkd3+5Z8o
         jadIA6K86DDrmgxTqlUEZdCi3aNZ3691b44qdUc8b61MAyULycmeajZ5hQwy2wdhA9es
         fbfQ==
X-Gm-Message-State: AOJu0Yw9sCiDQRAmITwBO1UT6EAdXeLL9l3rZpjDPWf5zNAemtm2EZta
	09ZlBpG91zE4OTl1Iz8YshuUn6FNlZ2kaBuXRhG8LALefTg1NNqIBuA/QVEcHw==
X-Gm-Gg: ASbGncvOXTkUiv8kmPlxcf5pBJ4G38RjOuTX5HuS/W8wg9CSCmU+y476l+P8Sc51wV2
	2wXRGPBbPA4LOeg0CrVcjc+Q4Dg/bi5s9HZwBFzzlmMv2OOi33a9bbQHxhl/bz/JOLzC6EEzvxs
	8I5pbL9ED1KGQ+OQNt0mlZpbPTcFunSBOAXolcU17ShWWqFAZIfjdQvqaYBFGFdemJW4meKq+bC
	/qCJxLdQPcWyMCIdlrVckUx4PPO9sBT9ynmoR8djxnu/ODGnQfpNMHNQytp3Q6OsRKTFIv3D2DA
	pnZM5qsny6BmDN5sQVq82TAAVq5M+iQY9XU8+S7Sm67NL4a4rw/g7D7KWqlXVXCO1GINoiMC1vP
	2xIZwFaJ3UxHDDfVJcQP2vc0S3TiO3JwlfTU9RytrR12WSDI0auy83mEVGU1Ax37K0QqVcHpEHK
	KSd8ZwQxO1Ns1MIKMHy8Er0YhWKEtNwMbx44mKE+gzmgFrdDKUDawR6w==
X-Google-Smtp-Source: AGHT+IFKZAM8f1HHy4AAr55p11VPLZNNWR5w47X3KvGs8XngGHrwdkjx9FFcEYR7QHDiZUMh+XX8Vw==
X-Received: by 2002:a17:90b:37c3:b0:340:9ba6:8af4 with SMTP id 98e67ed59e1d1-341a70091b1mr4014020a91.35.1762358162184;
        Wed, 05 Nov 2025 07:56:02 -0800 (PST)
Message-ID: <2e1870e5-5a5b-4db5-84f5-e4a3f728db61@gmail.com>
Date: Wed, 5 Nov 2025 07:56:00 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh>
 <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project



On 11/5/25 04:30, Peter Gutmann wrote:
> Greg KH <greg@kroah.com> writes:
> 
>> I totally agree that all "major" open source projects should become a CNA,
>> and strongly recommend taking back control over stuff like this.
> 
> The problem is that individuals can't be CNAs…

Another problem for projects with few maintainers and resources is that 
it’s lower effort to dispute incorrect CVEs than register as a CNA, at 
least while CVE volume is low. This is obviously a worse outcome for 
downstream users who may have already started processing and dealing 
with the false CVE. I’m not saying this is a good approach, but just 
noting this is the way incentives are currently (mis)aligned.
