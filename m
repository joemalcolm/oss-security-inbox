Received: (qmail 26389 invoked by uid 550); 26 May 2022 22:26:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7579 invoked from network); 26 May 2022 18:18:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2vLjDUgkGA2jj8CCT0Xo9eCpS7xqD6wAGHhOnUBjSA0=;
        b=fo/vPoRVemKRpNalUCwZ0dqZGZ0Dt6q4HLDsB3CyvMHb00bWR3gD23XYRjkkZ/8xKJ
         meJRfUZOeqiztnSI2iDe6fWiWL2VcePjfcG7ykeHam/IHGHEaUbaVo6nZCGRU8i4DG9y
         Njm73nofeQ1f+EWR/n6ViZnm21kOaNnrjWrHNA34SQ21Ulv6AwPEO5q0nBspocNNMDdQ
         bEJASIZp8hSqDH/akvIcS8HDKEti0uXugT6N11/Klq69gVS/Hkg7nr2gsm45izYam7Fe
         RmKzvds4WifXpvNtyRcATCuFbewQDTW0RHdy0ypuGmSvuzFIDQxCRK6yZWFgmM6dlpcQ
         1xNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2vLjDUgkGA2jj8CCT0Xo9eCpS7xqD6wAGHhOnUBjSA0=;
        b=MFdYoXPx7GN1GWD5ce60Z2Pt4BsLOCBBB0ImvMJAfuNKE0WHRE6aklN00C4mqij7Nf
         lSEZfAzvthK5u+NIAU8E9Ivud/es4yG6B92f3tDYUU+WA+Uxob6bt7E6xxtmfIlKYfoi
         AKCcxnUfFZK9xj7eki+1VohEuFH3SNZIHROEkK2ZXFteXrH04tjP6WYr3cEdEb/kVr2x
         Hp6Kx9ezoNLwFaE4OKHo9mQBYlRiWtSy5f1ZR6LHoFUZiD6wnIa8kTQ8VpuNWaxnJ9QA
         cBEIYSxBx8XIA1O0Avzpo41kfpwTOsAAge63PManrJwBy2usqYaKm1a+PuUy4REq/DLG
         S6hQ==
X-Gm-Message-State: AOAM53006qbVaqIbWIWfzl8AY7FK8rpjGIbU9I17h3Qih94a1zLqVslS
	YCiqxUpRCpCIEL7S+SiQB90+LEMnrWX5ztb8hX72oL4b
X-Google-Smtp-Source: ABdhPJz8o/DhVDgoxxcUKDBAoZ61DkKV4xVt2LOoRTIYS7wmiju+cNbbBn4E4CIGx2krIrYjATxlazQlUSnv2CY00XU=
X-Received: by 2002:a1f:5e0b:0:b0:358:30c7:b10c with SMTP id
 s11-20020a1f5e0b000000b0035830c7b10cmr4006776vkb.30.1653589083119; Thu, 26
 May 2022 11:18:03 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com> <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
In-Reply-To: <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
From: Philip Pettersson <philip.pettersson@gmail.com>
Date: Thu, 26 May 2022 11:17:52 -0700
Message-ID: <CAHQ_-nSt-YAyuSpjtFAe1Pvi9txYT7Z7kCT8j3nT4BjrqHOqCw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>, peterz@infradead.org, nslusarek@gmx.net
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

Hi Norbert & list,

On Tue, May 24, 2022 at 3:23 PM Norbert Slusarek <nslusarek@gmx.net> wrote:
> I don't intend to share the exploit to the public, mainly because
> the issue was fixed only few days ago. Instead, anyone wanting to check
> his own system for the bug should resort to the attached PoC repro.

I think it's important to remember that closed mailing lists filled
with private/embargoed exploits become valuable targets. They have
been compromised ever since Zardoz in the 1980s, vendor-sec was
discontinued for the same reason. By keeping zerodays in linux-distros
you paint a target on every recipient of the list. You should assume
that any working exploit code you share to a mailing list will
eventually fall into the hands of bad actors. Therefore, I don't think
selective full-disclosure works.

Regards,
Philip
