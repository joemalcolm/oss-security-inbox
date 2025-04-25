Received: (qmail 25661 invoked by uid 550); 25 Apr 2025 15:47:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13691 invoked from network); 25 Apr 2025 04:47:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745556460; x=1746161260; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=adFgpG/pE3odKjjYYEsNYRuQKOb3rUOa9+Uvkn2980M=;
        b=F0UGaNS+8mnWwvNL2z4w8vLjWZpMeAo9RrjFfedrS0qVJRXBfg1tlpKe86FfE8/Gwz
         g+1s43NxSNPgrdmw6gFjF7W7X9tO86EqdjTHliDNHQwIed1TnvWTK1WaIOcrT5bxFroB
         BZ9xtWapF+hP9o6cA30cZutreKMGRkubG0Utwe8zr8lyNcJ35yeg6hYocxMAqGzeoJe+
         yYhs7CJeJU16yAUAC9eMX9G7isSmsDK4fm+7uyQP7iHsDCZYM4Ipm3u5Bzx0hHp3zIVz
         EJkRYCoe5Mk0yLGpD2cWxGTK7bPisO79nvudUZ/9hnl9PRY5wSgxgKn7rt6lOaHSDAiC
         psaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745556460; x=1746161260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=adFgpG/pE3odKjjYYEsNYRuQKOb3rUOa9+Uvkn2980M=;
        b=gwqjR5NZQC7rjzKdujcFfMVALIcDbMcqmxBpB89JtBJXZ+fXd/+QsIKwAli5q2VNqn
         I1XVzRCejeTPh1miip99Lt8U9E72An85EFW59YRuNAzNLZDmwdX/ED3pMDWtvzrP9iFO
         HyPIZuOaycmQYMcGhmX2FZVwPbwyHqeGe0FeiFR/o2+cPZ/1BSru9vVQ1dB/knot6vQi
         Se6dZakEhQ5TG0/TvfgUhEN/GiqXoHltR2l3UYxcE/qfEShu/Hb7/U0ykQ10eLRQeUBZ
         EvuVc1Rm6J+ZRENulgyEwexe8R7qJkwJDGUlGLmaTuxEZJzqYCg/jCLKfQNKpNffCFd5
         VfVA==
X-Gm-Message-State: AOJu0YwEfRKSciMYjR0B3JZMWYQZKgU0fCXhou32NuARTI74uXjP88pB
	ZzjUsbZJbcWp/IZM0Vz3HkaabyWFZw12j+QjKfpTmgE3Wre+rubJWKwYRw==
X-Gm-Gg: ASbGncvHrfbCBLX9bRrWRt3796kEp038wHnlPL55h6h2YcIztwNODBGXvkrMZ808p9g
	1Iw3uHyDCqFms3PwOHh6HlUobMU6tajTkvOiBXv/VzF4ysY86N1be4QtpjUk3m5QtI+8NP2nkEY
	vZxEQ6vZ2oK3DKHxvI4sLKbaC54tZb4Q43xI7ldBKv3SKm/akcVI3wm6AG0eEG2b349zWYDqWaP
	tYegsULNAPr4qUt7tg96HbkRF3CmMDZ2cchiKdazuCrcXVyD2OkuDf4bD2VnKZdasY0H72y/5IV
	wdnz5QGlH7/y6kDq7g2iKsSkGsEan31iOw3zlQ==
X-Google-Smtp-Source: AGHT+IE3qEoNA6OLKWYPQmk/MHkVS+8/PnYAZtZXAZszdBUz4GmEN3AiOyfBMsoMcwW9vZ5lLi4IMg==
X-Received: by 2002:a05:6870:71cc:b0:2c2:d749:82d3 with SMTP id 586e51a60fabf-2d99dae4519mr637427fac.27.1745556459428;
        Thu, 24 Apr 2025 21:47:39 -0700 (PDT)
Message-ID: <5b5ad5e7-8bad-4320-8dd4-9f0af17cbdb4@gmail.com>
Date: Thu, 24 Apr 2025 23:47:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <tencent_11C8C35C2CF529292F8447A8@qq.com>
 <20250424183209.GA22610@openwall.com>
 <20250424190626.4qoptkgyk7tj6c74@jwilk.net>
 <20250425000830.GA25158@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250425000830.GA25158@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-3512: Qt Base QTextMarkdownImporter Front
 Matter Buffer Overflow

On 4/24/25 19:08, Solar Designer wrote:
> On Thu, Apr 24, 2025 at 09:06:26PM +0200, Jakub Wilk wrote:
>> * Solar Designer <solar@openwall.com>, 2025-04-24 20:32:
>>> There appears to be a growing trend towards calling OOB reads "buffer
>>> overflows".
>> Part of the problem may be that AddressSanitizer uses this unforuntate
>> terminology; you get something like this:
>>
>>      ==7802==ERROR: AddressSanitizer: stack-buffer-overflow on address
>>      0xf5f00021 at pc 0xf79c113e bp 0xfff496e8 sp 0xfff492c4
>>      READ of size 2 at 0xf5f00021 thread T0
> Yes, this may very well be the main cause of this trend.  Is someone
> reading this in a position to change the wording in AddressSanitizer?
> For example, it could have "stack out-of-bounds read" in place of
> "stack-buffer-overflow" above.

On a guess that the same message fragment is used for both reads and 
writes, how about "stack-bound-violation" instead of 
"stack-buffer-overflow"?  It is even the same length.


-- Jacob


