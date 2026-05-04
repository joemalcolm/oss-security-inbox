Received: (qmail 16055 invoked by uid 550); 4 May 2026 16:04:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9643 invoked from network); 4 May 2026 06:02:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777874567; x=1778479367; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WI1a1IC+aRbA2w3JLf2sUfc5HJ0amnaoZa3DqX8zJX4=;
        b=omfSzR8NfS6QDiGDOdsz0ajP0siWtqgD5JnjElMMqQdVm7DLXuHQarA+TIoskWQ59h
         lZ7C9FsSV08WgSD03kQloRCRRHxh9dDPLeF5+KBr4J73fDwqlx9qZNQKKl0hs1nAKB9f
         4ZF1tFiYr3phx8RCrq9tB2HN8HPeryhEeu4plBy/iZzcF6QHMA1NFVn9w3phyiZ2J/7j
         Trjid8VcOzMaP4ZAeHWA9VbcPTOxZsi2ZTBv+AT8Hi/azOnNA7MYwvuUu9c8Kocw6+si
         FM+jGhzQIuaB6un9fE0LoXCgrNIMwaUuYRM8jby28Hm/DTl3tsA7vRZv0aiVKS7UykO3
         nesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777874567; x=1778479367;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WI1a1IC+aRbA2w3JLf2sUfc5HJ0amnaoZa3DqX8zJX4=;
        b=dfTrEtRAjTWQx6Z94CfERCvPIgFwmjR7dAsMtAb7mMvcwmLDYzEZau+9eg0iiaT2t1
         OSMau90Iecf2RXTGtxGCu5gF4IvYLMvGHA9jccb/Elcn3DMzCEfhiSD43J8nh+Ff3QOw
         MuNnG3XhqpnOJTmd5cgzj4gSMqyOKYHUlyj/CeSJBTmqmSZ71aJ0A9JMSUueKRF8Wkbm
         4IZuP4Ywj4ITOsCovS3HNQ4o2LIbHzdhGo5SfjHBSLrg6oD68WdETxxNMuK15fksaM6X
         PArVb6oKdaXbtoLgDJaIFgOzbqQyYOqBxnmwHTSG874mG/XY/Qvuo+f5pVoRorlBT+LR
         17mQ==
X-Forwarded-Encrypted: i=1; AFNElJ/2LxBDpwart2FOkvkfN9Wy0iwIQr4T59CUx0onU5LC475tYJbqgVqtLnfdaEL5OlhcfaFu7nWVXtpGKSo=@lists.openwall.com
X-Gm-Message-State: AOJu0YzEiYmmPr7PDqgp0dBGG6pRiWluq+3WmhL/Iy+XFHqT9xhv0Jus
	6U9ruNkmc44DoVKMajrBONUCKINxOfDDPaPGmSPIomAK7BZ+G4D82Om/
X-Gm-Gg: AeBDieuxc3dH2sYQ+vNcDEx09qb6VitJDWmGA6+eYL16GSoPFcmCIiKx8JqlK9/J3v4
	Fh0xJdHlT+fSlU7rs21kVs9voAic7FLPxpfqf0IBZWAUfUHEnUn+ZKLJLo6gERDQjVIAWAM4imp
	dxbf+vrsO8I5rdJ/pfn5mQT5Mv9o22YTnHjb4kERagyBQEyapbw1byEaO0fEkYyvqop/GZJXAlY
	1U1fFH8mykEngU/3VNHnj+a9c/aUjuQTjc69E8hMchmz/DYbQGHzUwbjmeFThzh3q05rrJLppsd
	sblkNHkdfjjkPY+FcJpa6u5xPthYC80kSw2lD7V4TPAXkvX3yWJS6vzvsC7ibvEuzb265izj6Ib
	WT5Q89ByqUSnRgoyCmdYhym7699IlOkWjfpm+dnPDJGZ16BZX0gc3WrUbki7m2JELTQSZ1GXiDE
	1Pwyj7d75mpXQ30V1mkLLuFMkf9nTCTa7gYzwDUXZF0oYAcH32RZdEAhHxKG1/Hp0oYnz8PFWff
	ySTbzf8TXe1LaIj1UYAeEXOfzvj
X-Received: by 2002:a05:6000:2410:b0:44a:247e:67b1 with SMTP id ffacd0b85a97d-44bb301c729mr12599906f8f.5.1777874567222;
        Sun, 03 May 2026 23:02:47 -0700 (PDT)
Message-ID: <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
Date: Mon, 4 May 2026 07:02:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org,
 oss-security@lists.openwall.com, "axboe@kernel.dk" <axboe@kernel.dk>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: CVE request: io_uring zcrx freelist OOB write

On 5/3/26 12:00, Mohamed salem Eddah wrote:
> Hello,
> 
> I am reporting a security issue in the Linux kernel involving an
> out-of-bounds heap write in io_uring/zcrx.c.
> 
> This issue appears to have been addressed in commit 770594e
> (“io_uring/zcrx: warn on freelist violations”, April 21, 2026), however it
> was not assigned a CVE and does not appear to have been included in a
> formal security advisory. As a result, multiple stable and downstream
> distribution kernels are still affected.
> ------------------------------
> Vulnerability Summary
> 
> *File:* io_uring/zcrx.c
> *Function:* io_zcrx_return_niov_freelist()
> *Introduced:* Linux 6.12 (initial ZCRX merge)

FWIW, it was added IIRC in 6.15, but not 6.12

> *Fixed upstream:* 770594e (Apr 21, 2026)
> *Status:* Fix not yet present in stable releases
Did you trigger the problem or the warning in a new kernel
without the attached modules? Which kernel version / hash
was it? There was a fix for the scrub case, but otherwise
don't immediately see how that can happen. I'll take a look.

-- 
Pavel Begunkov

