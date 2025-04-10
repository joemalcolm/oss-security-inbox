Received: (qmail 32650 invoked by uid 550); 10 Apr 2025 22:45:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28339 invoked from network); 10 Apr 2025 21:51:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744321868; x=1744926668; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Nt92STsnZpsQF+lnPfn56nLYcTqWmCaggfcs8ysgd9c=;
        b=FT6pX/d3eIfBRzjCilGBgP+tLFualzyriLC40pIsGFCT6S3GASimQlb885vXnvZk3j
         +kPugBmLJ28LC6GsGRD4gmkGIcTQzh9Y72Usdj8T6Be7UkNB6odXI2RXE+MyNXuvJZPs
         zFXWbmcz7jnukOiM8ZSIogjQblLCJCcwt4YDrCx7IzwpZIVQFd7OUiD+2L6qk9NfA+6N
         LRafs1OnEt0HAK2/4s5SuVKLGBRroXRH26zxMYv4bk5NGK7qjXpklcTIxV8w+kDJl1nG
         N9/dcZWQ99l82BxOnYJZ0traaBTxAZ+Sz+XuwpzATbxJYmGg4922tN+aAQHik4SOIPpJ
         hwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744321868; x=1744926668;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nt92STsnZpsQF+lnPfn56nLYcTqWmCaggfcs8ysgd9c=;
        b=QPET+F0KqMHrF/q/fKQU8xFpg2syHIXz5xkb/SrqUp9bNaSqeFHA40PX8v+ka5bK+p
         iNXS3BQbc/s5I6ChMzJLRtIjo/PzYlmBAx6W1FSCxhxFWWATfZnKtE3JDOmEl5vs++TH
         8prQ+gErwMI9c0IrTwGoRtJLuUTMu1yvsIYJlCRs8zx5R1Dt2NVIkn7U+mc+bMYm2FDa
         /aCyVjpm1HRvO9Qm8pA2E/1/5QBiHCKqVxN5XTyLv2ug5R4iOYF8pX9Lu6S5gv1MPVPG
         F24VqoCF8y0kgzFmzn5iaZybP7ZaqGO7doognnSMmoBg0JyO9baNBNvWZVNSdOrNeiXD
         5Chw==
X-Gm-Message-State: AOJu0YwqthZfonmWrdErI3p61WNNesuytcCnDKEj3VxbeoDxRW7LA/gT
	F4xkeIgOZ0gMDFVeO2aP2uz1v7+QYm3XyNUd1TwzznBiVQt8OMygAML6Xg==
X-Gm-Gg: ASbGncvfnLCP11q2PLZnGzwlAyB8ELhOCJyVFctT+jb5ifjYXKl2EcRj9KBxp/Tvrn6
	mm+H3qHeuZ1LLecW2/tfVavtOESKSbTVFfqcsp14GFwGTAbtEjm2RovxS2+Apn1GJ0RSTDJPvVR
	tIw0UWUKf37OOuGBzQlYRqOpfRMRB2I12f1H3duWi6n8TnJEYnS2KO795zJqd8inZ3uFlP84gTO
	RWtafA8mNcXgE3zQi9t0ijdpdPwXUN1D9Z8eDUPvZGEZyLiSmqsgqvI1R7JfuZmpUB3/fkdobg/
	Ln1HJJ/+1e6VCMRJk68gw09K9RL1vjxug7NxmyWY4bwqt3U=
X-Google-Smtp-Source: AGHT+IGS3/U5QX4vpJCwrb0SydeOBxsg0JkjbY0VgtbNHanqaYAvR1IuTQltkiPH/ci+r9KBA1DEyA==
X-Received: by 2002:a05:6902:478f:b0:e6d:f287:bfa with SMTP id 3f1490d57ef6-e704dfa6681mr1026895276.22.1744321867684;
        Thu, 10 Apr 2025 14:51:07 -0700 (PDT)
Message-ID: <bc692002-3fae-4692-bdf8-f1aab1853217@gmail.com>
Date: Thu, 10 Apr 2025 17:51:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <VI0P189MB276612AABA4D5DB2B4018524AEB72@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Demi Marie Obenour <demiobenour@gmail.com>
Autocrypt: addr=demiobenour@gmail.com; keydata=
 xsFNBFp+A0oBEADffj6anl9/BHhUSxGTICeVl2tob7hPDdhHNgPR4C8xlYt5q49yB+l2nipd
 aq+4Gk6FZfqC825TKl7eRpUjMriwle4r3R0ydSIGcy4M6eb0IcxmuPYfbWpr/si88QKgyGSV
 Z7GeNW1UnzTdhYHuFlk8dBSmB1fzhEYEk0RcJqg4AKoq6/3/UorR+FaSuVwT7rqzGrTlscnT
 DlPWgRzrQ3jssesI7sZLm82E3pJSgaUoCdCOlL7MMPCJwI8JpPlBedRpe9tfVyfu3euTPLPx
 wcV3L/cfWPGSL4PofBtB8NUU6QwYiQ9Hzx4xOyn67zW73/G0Q2vPPRst8LBDqlxLjbtx/WLR
 6h3nBc3eyuZ+q62HS1pJ5EvUT1vjyJ1ySrqtUXWQ4XlZyoEFUfpJxJoN0A9HCxmHGVckzTRl
 5FMWo8TCniHynNXsBtDQbabt7aNEOaAJdE7to0AH3T/Bvwzcp0ZJtBk0EM6YeMLtotUut7h2
 Bkg1b//r6bTBswMBXVJ5H44Qf0+eKeUg7whSC9qpYOzzrm7+0r9F5u3qF8ZTx55TJc2g656C
 9a1P1MYVysLvkLvS4H+crmxA/i08Tc1h+x9RRvqba4lSzZ6/Tmt60DPM5Sc4R0nSm9BBff0N
 m0bSNRS8InXdO1Aq3362QKX2NOwcL5YaStwODNyZUqF7izjK4QARAQABzTxEZW1pIE1hcmll
 IE9iZW5vdXIgKGxvdmVyIG9mIGNvZGluZykgPGRlbWlvYmVub3VyQGdtYWlsLmNvbT7CwXgE
 EwECACIFAlp+A0oCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJELKItV//nCLBhr8Q
 AK/xrb4wyi71xII2hkFBpT59ObLN+32FQT7R3lbZRjVFjc6yMUjOb1H/hJVxx+yo5gsSj5LS
 9AwggioUSrcUKldfA/PKKai2mzTlUDxTcF3vKx6iMXKA6AqwAw4B57ZEJoMM6egm57TV19kz
 PMc879NV2nc6+elaKl+/kbVeD3qvBuEwsTe2Do3HAAdrfUG/j9erwIk6gha/Hp9yZlCnPTX+
 VK+xifQqt8RtMqS5R/S8z0msJMI/ajNU03kFjOpqrYziv6OZLJ5cuKb3bZU5aoaRQRDzkFIR
 6aqtFLTohTo20QywXwRa39uFaOT/0YMpNyel0kdOszFOykTEGI2u+kja35g9TkH90kkBTG+a
 EWttIht0Hy6YFmwjcAxisSakBuHnHuMSOiyRQLu43ej2+mDWgItLZ48Mu0C3IG1seeQDjEYP
 tqvyZ6bGkf2Vj+L6wLoLLIhRZxQOedqArIk/Sb2SzQYuxN44IDRt+3ZcDqsPppoKcxSyd1Ny
 2tpvjYJXlfKmOYLhTWs8nwlAlSHX/c/jz/ywwf7eSvGknToo1Y0VpRtoxMaKW1nvH0OeCSVJ
 itfRP7YbiRVc2aNqWPCSgtqHAuVraBRbAFLKh9d2rKFB3BmynTUpc1BQLJP8+D5oNyb8Ts4x
 Xd3iV/uD8JLGJfYZIR7oGWFLP4uZ3tkneDfYzsFNBFp+A0oBEAC9ynZI9LU+uJkMeEJeJyQ/
 8VFkCJQPQZEsIGzOTlPnwvVna0AS86n2Z+rK7R/usYs5iJCZ55/JISWd8xD57ue0eB47bcJv
 VqGlObI2DEG8TwaW0O0duRhDgzMEL4t1KdRAepIESBEA/iPpI4gfUbVEIEQuqdqQyO4GAe+M
 kD0Hy5JH/0qgFmbaSegNTdQg5iqYjRZ3ttiswalql1/iSyv1WYeC1OAs+2BLOAT2NEggSiVO
 txEfgewsQtCWi8H1SoirakIfo45Hz0tk/Ad9ZWh2PvOGt97Ka85o4TLJxgJJqGEnqcFUZnJJ
 riwoaRIS8N2C8/nEM53jb1sH0gYddMU3QxY7dYNLIUrRKQeNkF30dK7V6JRH7pleRlf+wQcN
 fRAIUrNlatj9TxwivQrKnC9aIFFHEy/0mAgtrQShcMRmMgVlRoOA5B8RTulRLCmkafvwuhs6
 dCxN0GNAORIVVFxjx9Vn7OqYPgwiofZ6SbEl0hgPyWBQvE85klFLZLoj7p+joDY1XNQztmfA
 rnJ9x+YV4igjWImINAZSlmEcYtd+xy3Li/8oeYDAqrsnrOjb+WvGhCykJk4urBog2LNtcyCj
 kTs7F+WeXGUo0NDhbd3Z6AyFfqeF7uJ3D5hlpX2nI9no/ugPrrTVoVZAgrrnNz0iZG2DVx46
 x913pVKHl5mlYQARAQABwsFfBBgBAgAJBQJafgNKAhsMAAoJELKItV//nCLBwNIP/AiIHE8b
 oIqReFQyaMzxq6lE4YZCZNj65B/nkDOvodSiwfwjjVVE2V3iEzxMHbgyTCGA67+Bo/d5aQGj
 gn0TPtsGzelyQHipaUzEyrsceUGWYoKXYyVWKEfyh0cDfnd9diAm3VeNqchtcMpoehETH8fr
 RHnJdBcjf112PzQSdKC6kqU0Q196c4Vp5HDOQfNiDnTf7gZSj0BraHOByy9LEDCLhQiCmr+2
 E0rW4tBtDAn2HkT9uf32ZGqJCn1O+2uVfFhGu6vPE5qkqrbSE8TG+03H8ecU2q50zgHWPdHM
 OBvy3EhzfAh2VmOSTcRK+tSUe/u3wdLRDPwv/DTzGI36Kgky9MsDC5gpIwNbOJP2G/q1wT1o
 Gkw4IXfWv2ufWiXqJ+k7HEi2N1sree7Dy9KBCqb+ca1vFhYPDJfhP75I/VnzHVssZ/rYZ9+5
 1yDoUABoNdJNSGUYl+Yh9Pw9pE3Kt4EFzUlFZWbE4xKL/NPno+z4J9aWemLLszcYz/u3XnbO
 vUSQHSrmfOzX3cV4yfmjM5lewgSstoxGyTx2M8enslgdXhPthZlDnTnOT+C+OTsh8+m5tos8
 HQjaPM01MKBiAqdPgksm1wu2DrrwUi6ChRVTUBcj6+/9IJ81H2P2gJk3Ls3AVIxIffLoY34E
 +MYSfkEjBz0E8CLOcAw7JIwAaeBT
In-Reply-To: <VI0P189MB276612AABA4D5DB2B4018524AEB72@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2024-50217: Linux kernel: btrfs:
 Use-after-free of block device file in __btrfs_free_extra_devids()

On 4/10/25 8:22 AM, akendo@akendo.eu wrote:
> Hey everyone,
> 
> Not too sure how or whom to ask about: But I saw that there is CVE-2024-50217 that affects every kernel since 4.8.
> 
> However, it is only fixed on more recent version of the linux kernel like 6.11 or 6.12. Any reason this wasn’t backported to older kernel versions?
Linux kernel patch backporting is best effort, sadly.
-- 
Sincerely,
Demi Marie Obenour (she/her/hers)
