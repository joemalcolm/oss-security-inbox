Received: (qmail 3800 invoked by uid 550); 30 Mar 2026 02:21:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3776 invoked from network); 30 Mar 2026 02:21:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774837266; x=1775442066; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uAlUQaVDm+m7f4Gy/Em2Qvc9P+yKoSAtz/KOpg60B98=;
        b=XCxjKhKn7/AxeG/nXR0TOv0frNBocBxpu5aj0fKMWx2rJdyMczXPSA6whIehjVGY5n
         ta04ZS3qVmEef0DCXbKGR8gEMnYbMD4/wtDW6DReqiTtvcKuGY0ocRnIu3RWHaTWhR2N
         HmQ+7hPLKT0usrEpsZ7Xt2YhAQ9L3x/r31Kl15eE/b0PVAwKq7f3EECJBSYm3BEcgm/I
         QuDYQ8yj6GcyBq/2zFR4ydIAtug7armnd1lS4aFGy3gk9a9dRTPVvZk6q4MT3xYpKwIc
         rwW7UR0H6J2l7KjhGm2H8XoF0+ociFGkqtGtRQzJii83wXKGgfe/8JIGo2ho51nEHr/1
         0bKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774837266; x=1775442066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uAlUQaVDm+m7f4Gy/Em2Qvc9P+yKoSAtz/KOpg60B98=;
        b=LSOrmlR/67MaMJc+WOjLO9trN6KqtVr1YpHdOoRHWyIMw89Dx7rift2PkarPJs4ieM
         ttpdoR9KLbtkkV+v4+bHY798yNH4kmTQ2M/z9LbWLwoheBe6FNZtAtgEcEHswXrit90E
         7Wqq7rOvNn2P6hG+YrMqlmDrFTt3YX7193/LZkiXWsi2b0vXMjFVU6pXASSXYkXBZRmc
         eLE1CE+k9kFuHWKTaBbDy61/7kDpPF4iK2E9fsr/s/3YiF1FVWToF3Jd+/v+Hn+j+lBe
         Gq8btnTKWWFIM7o+qVPME7S4dxwzgkjnWkm8CKqrSpD/6baoDphdFqU337e5DzHy+AEz
         MywQ==
X-Gm-Message-State: AOJu0YxQI4ixar4LXlof1pioAONuT/4ZJwjqWTWqBMYh7lRwczF8kJt8
	wTEla7hztUD/OksoCqabZS+LXHbDPi/EHIdZh5gaPeBaVVzR5rg9/xog5UTg2w==
X-Gm-Gg: ATEYQzw1q3IUB2ZnwwIoROqpo9kqJjETSplvXlZXEv9m9AoiZRJjfsdJsroNKme6tCZ
	R9KZD/0F0OUidw4YvGlo1YnBaZxoN6vS6lL2xxGrvkXhzkDGgFQumklV7kyJZ3Q+G3HeTZ5KYX0
	Uc553t9EGgzVAyyY6zRShkWQE7i63tNxHl4zwJEG/vr/CUbGf4lPGbNW3/ePfLKcfYUFZn2Prs7
	tzLZhPRhLESDjjgTbTBYy2x/LyoowXB1tlj+57d+n4xak/CGKfDFiK8kjlYgOcMtjcKF0kOXdiu
	0YtMCCFgv41jAoNIJsER1mYJ6Rq/f250I/XpON9lA8XodCV0AuRWKClQijHNOHQWlMxP5qXsi8H
	UsCWylfel/xQPwSt4BFGlfqCDooSa+LOUOG/XcGt0zJ8dIHRKrTxDTEcG2JRQFGr3CdLoJgBmrs
	wrMKNJVGS2ibKNGAUnpA==
X-Received: by 2002:a05:6808:4704:b0:467:819:dc61 with SMTP id 5614622812f47-46a8a40057bmr4459969b6e.23.1774837266605;
        Sun, 29 Mar 2026 19:21:06 -0700 (PDT)
Message-ID: <f8ecb7ca-4753-44cf-b0a0-dea7a3a6e00d@gmail.com>
Date: Sun, 29 Mar 2026 21:20:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Stig Palmquist <stig@stig.io>,
 cve-announce@security.metacpan.org
References: <acmRBjpjfsGHDxJz@ava>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <acmRBjpjfsGHDxJz@ava>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2026-4176: Perl versions from 5.9.4 before
 5.40.4-RC1, from 5.41.0 before 5.42.2-RC1, from 5.43.0 before 5.43.9 contain
 a vulnerable version of Compress::Raw::Zlib

On 3/29/26 15:55, Stig Palmquist wrote:
> ========================================================================
> CVE-2026-4176                                        CPAN Security Group
> ========================================================================
>
> [...]
>
> Solutions
> ---------
> Update to Perl stable release 5.40.4 or 5.42.2 or later, which include
> Compress::Raw::Zlib 2.222.

You hint at the other solution under "Workarounds" but neglect to 
actually mention it here:

For *any* Perl version, simply install Compress::Raw::Zlib 2.222 from CPAN.


-- Jacob


