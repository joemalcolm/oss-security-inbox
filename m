Received: (qmail 23960 invoked by uid 550); 20 Jan 2026 15:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13466 invoked from network); 20 Jan 2026 15:34:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768923288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=IvhZyb0aLHznnS+gMawZQreX7gcRJgPTbhG3inRjIg4=;
	b=HrUwkbpBtbJpRcoJL7yYxygTbXGWQySUHu7Mp3kvbzQ2kW7v1HCr9egckfOO8rejs0RmmA
	6PcxOSvx1dwhUZpYrcMaAVPu9N01FU/OHQUPZRPdcgIgylr1hteXR+MAEGNraO6/dK2qVu
	szc6fJFR0e24YjuUZ1eT0hmEUnyZtJU=
X-MC-Unique: qAgsa-0wO-mEHN5fBEUEdQ-1
X-Mimecast-MFC-AGG-ID: qAgsa-0wO-mEHN5fBEUEdQ_1768923285
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768923284; x=1769528084;
        h=content-transfer-encoding:organization:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvhZyb0aLHznnS+gMawZQreX7gcRJgPTbhG3inRjIg4=;
        b=LQ66eGFDS5NLF+sEeaQ+N7X9J/3pEOzQMU1+918PpSUXYYUrfbdW+XWQG6HhUObhTy
         zxGYlzDvaIbe1/C7DdK7Pu378ZNuCSB3EZsbb621n8QogAdzQ6QRgOSsvJcITk/Yq+V8
         OgkjxIC+0nDU6FpC6gcilRRV3jhE+qsE/9gEdB+7xcjERkdevhxzAVJl3VP7FUzeQRaM
         OcYHXq15hdCZ1vULmoyevbtXi4XLn5yt2PQRz8YlPNJdkoAUAt1gAntKG7xClrc7xWIn
         7MCqNxyQKqtAcdN1lJkBbMpfpkO5S6ghh2hhpiomvhUSMc/hVyfLqRa2hu2B1KudhrGe
         C6jg==
X-Gm-Message-State: AOJu0Yz4TvCtiwMCW9dk6/afnkBxQQUruV42CMXht0T1JWDN6vBlXNj5
	YaRqfx4PP18ygqsptCIudXuR+OGz9MFH4nkGwPHpWfxxmA24jkqCsnAkbqlVok9mW6i3n4GqKII
	wEtAe1HK6WeiINVMpRgYobBQRdRwtRxBfhAqc9CEBxLQcbM4lGMlIjL6MmdBXOi2QxJStRuGSAH
	3K4BRYbfz4skoUibWuZtPFIb+wIVj1X6VYGiXl00PQLxakTZVFcLA=
X-Gm-Gg: AY/fxX55gWOJFpxC14XC93jtzMoW57Kc4j45zLMv80wi2Wy5+K9SSeBwPcS0+Sj5Dez
	DaKyIWxBlEsucexvviPAwHrhiIxog4nBscyhtS3Dcnj1vpkw1Iwa7F8bgWb5+i/U6lQX9hamH2i
	aKwSycZnTUj+wxvCt6FDX5cBSMm2NcwL/qwBB7unQ2qNHe6kNP3kIsfYDlbLmiIUO9+r3gtKCor
	Nu5toHd2cQVjDI+P8+qMyOVNPkophQAPVmpNokkB0sfi8VTCdnZL1Gq7vJNiSecO+rJtG3WGOkS
	QJdAaoRR43F0a3m7Kgu2MPahOVAGynl+HpidWXh1wKT2+OcZB5uiOWv4zi1+RE0gCWw3tUepkAI
	YuVI7sCpCOgMi+kwetuwlMbyf2DtJuwmb45bHP7Lp/yFSeWHbcYVniERpE39hVoIm0cq4ilGgKW
	nXGXpAHncJeA==
X-Received: by 2002:a05:7022:e20:b0:11b:4351:2687 with SMTP id a92af1059eb24-1244a70c43cmr12526053c88.17.1768923284460;
        Tue, 20 Jan 2026 07:34:44 -0800 (PST)
X-Received: by 2002:a05:7022:e20:b0:11b:4351:2687 with SMTP id a92af1059eb24-1244a70c43cmr12526023c88.17.1768923283805;
        Tue, 20 Jan 2026 07:34:43 -0800 (PST)
Message-ID: <760c39e2-e88b-40df-a47c-a74907a94c5e@redhat.com>
Date: Tue, 20 Jan 2026 10:34:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t1tzUoqNiT8YQRBaUWwIi1JgnXTq0preQrVvt2Pf1rw_1768923285
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2026-01-20

The following security advisories have been published:

GLIBC-SA-2026-0003:
===================
wordexp with WRDE_REUSE and WRDE_APPEND may return uninitialized memory

Calling wordexp with WRDE_REUSE in conjunction with WRDE_APPEND in the
GNU C Library version 2.0 to version 2.42 may cause the interface to
return uninitialized memory in the we_wordv member, which on subsequent
calls to wordfree may abort the process.

The implementation of WRDE_REUSE in conjunction with WRDE_APPEND fails
to clear the we_wordc member of the structure, and as such, when new
words are added internally, a leading we_wordc count number of entries
are skipped since they are assumed initialized.  These skipped entries
are not initialized, but are the contents of a realloc-expanded array of
pointers.  If the caller inspects the we_wordv array, it will
dereference invalid pointers and crash. If the caller calls wordfree,
the malloc implementation may detect the invalid pointers and abort the
process.  Calls to wordexp using WRDE_REUSE and WRDE_APPEND have never
worked correctly and thus the existence of applications that make use of
this feature is unlikely.

CVE-Id: CVE-2025-15281
Public-Date: 2026-01-20
Vulnerable-Commit: 8f2ece695d8822e9ecc63ecd157e90bf17a6fe65 (1.93-260)
Fix-Commit: 80cc58ea2de214f85b0a1d902a3b668ad2ecb302 (2.43)
Reported-by: Vitaly Simonovich

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

-- 
Cheers,
Carlos.

