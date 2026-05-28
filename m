Received: (qmail 24530 invoked by uid 550); 28 May 2026 04:09:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24493 invoked from network); 28 May 2026 04:09:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779941384; x=1780546184; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6OXqaRZZ0eL0s674L48woB/JaUqBf55QqjN6K0llTE=;
        b=D/kjpOFEHtv3slK2Kg9VlXgWXJe1qFklqsP+BEZHKNxIHC6+aLPFUaAWAVoqLtDYwl
         88jizjA3hxhfqsNUONiloF1EHJty1qJEOqbQbcpBL60SvesKmYjXuwxfn0ZCLe9Jj143
         n8MvPWpfC0mSgK+2h3rNUVRwDo8LQQUTUX7XenEyZ5e0d3njEozjo17CVk2onk3im7qG
         nXx69Rmk3h+Z8BJEbe+Gz7tZhYxp1kq16EWHeFallddt8/Uz/P+7rkKJs/3FzWd6be9W
         mHzLUL2J0cbENnR4BjdOG7bKW5S5Pf8ValrSKzTCrU1CG7NPzy7Hep/HJxBdx0FzYc2z
         7V0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779941384; x=1780546184;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H6OXqaRZZ0eL0s674L48woB/JaUqBf55QqjN6K0llTE=;
        b=RnrttjAPs5tHZUe1qf1K0r9yE+ogKvAEWSVtNKzPA/TqyUh0E9d6wBPQqHnsOM2KIU
         8szQtBH24RJTAiLbFhkMS1R+JhypE1g/fGMofvZDPE9OkIda0LGFZ3+xneQf66oAs49U
         dXFgm+bI3UPOaK6v37812TuccYYLEMp5yx4QNLLIPn+jNYENTzAMqoDYOJ8kCOlTRpSE
         0kSL71Ql6Aw2HNYFe7ZhlUw5ayqiSDS+pvP54jtLOxnsSI6HgeTPvReX2qDNlpzhUia6
         lA4cg9PY/v4yCAOrxCUcieQWKMaFHjTDp3dvyTnzoGqInQC3JQU46qB7R0vTR85hobjn
         M31A==
X-Gm-Message-State: AOJu0YyXhSGDbSVpdFal8KGmUJ4y2MEvyLqCFEvcHOh9G3LA/xDac87s
	JxVSiTZlbKkhvZvhic71uBwzUinhbBe5RPWf3nmAjoMOhe7l08NvuMNXO8HlVjTtxBI=
X-Gm-Gg: Acq92OGQzPBX9R6oLhWRLon3uMe0JfN7xObgjW5MiIqLipbCtyLEZ1RuSY2etz+K45R
	7L4gGKjHXd+rZkfvZ+uhWsZhWMkgwDtT/TfNR4RoLwPoLKWyk5u7H7Yu8Ry7y96fivqjD21t+bQ
	QBmMPzmGuIVKO6gyqgNZNuj4NubRNkj9WyuRHUt4Tx5QdnDhZErnl0veBVuI5WrNDNA/2A/607R
	OGyPSMFgsYzDJlP+kXhUEiJOOn3wTNzI3nFiWgyQ0A26X6lP01ozmAMoMAJuwBOsxFjjErerDHZ
	zrNqh5m8Ir/9p6yNuXvEHkiowsMoAmL7LLz260+DnlHMX3vQeEA6RFI3exvCHqsE8QbBOQZfSXA
	p7xQw78v8MnWV6bfKwh/JKvPmU0TwAThZKyENuNp2hb8qQDZbSwpIvygkXtBCJcI84SnqgZO3/4
	x+QzyQn2MBeSvWihBVcXnLdevo/CqL+ZU=
X-Received: by 2002:a05:6830:82cc:b0:7e3:bc8c:5ea with SMTP id 46e09a7af769-7e5fefd43dbmr17429295a34.26.1779941383808;
        Wed, 27 May 2026 21:09:43 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------jwDlSZ4GXWoEdYvcBmUD3shZ"
Message-ID: <7bdc8382-cb71-4fc4-ae59-14682e808050@gmail.com>
Date: Wed, 27 May 2026 23:09:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 =?UTF-8?Q?Pr=C3=A9nom=3F_Ahmed?= <ahmedabdelmoumen05@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, security@kernel.org
References: <CAN+TWHTGkGZu4vdbkMY8F-EDe3m8ScBctW-fdtfcpGbj192SyA@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAN+TWHTGkGZu4vdbkMY8F-EDe3m8ScBctW-fdtfcpGbj192SyA@mail.gmail.com>
Subject: Re: [oss-security] Linux: DMA-after-unmap race in ZCRX via
 netif_rxq_cleanup_unlease() ordering inversion (netkit + page_pool)

--------------jwDlSZ4GXWoEdYvcBmUD3shZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/26 17:53, Prénom? Ahmed wrote:
>
> Hello,
>
> I would like to report a source-proven teardown ordering bug in the 
> Linux kernel that can lead to a DMA-after-unmap race condition 
> involving ZCRX (io_uring zero-copy receive), page_pool, and netkit 
> queue leasing.
>
> ***Reporter:** Ahmed Abdelmoemen **Discovery Date:** 2026-05-26 
> **Kernel Version:** Linux 7.1.0-rc3*
>
> Executive Summary
>
> [...] I am happy to provide more details or assist with testing.
>
This report reads like the product of an "AI" system.  What "AI" 
assisted you in preparing this report?

[I am sending this to the lists to ensure that everyone will know that 
this question has been asked, in an effort to avoid deluging the 
reporter with this question.]


-- Jacob


--------------jwDlSZ4GXWoEdYvcBmUD3shZ--
