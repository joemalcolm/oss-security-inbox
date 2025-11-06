Received: (qmail 19517 invoked by uid 550); 6 Nov 2025 17:50:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5239 invoked from network); 6 Nov 2025 17:18:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762449474; x=1763054274; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t5shbr4WP6Y6ryZBlklRALqfJFCyMGfzMBK89+cAQkU=;
        b=i2JRTxWLklB6poHeWqmYf3BF2Fi6uTceQhH32suziaOhUlxUgo0l+xXIF/DA6oyNEy
         fUUKF9WLEV8hQXxDy311kcy15fP2qzbmI1AAlNwKR5VWW2Ca1vXf99ndHcTv1oSmtGV3
         3tHROZ8OjShu73av+owP8a+HzPpdTxuYZ2FGcIFK3M6kY4jIbKPew/jdXZvw7o0EibSV
         oJzEpZSv7BopBVpqtI7zfaazx5Pf0QvB0SXihAlGnA/Ua9HOio71YMd5OgciDHrbzZDU
         0Gy9foP0QKEijxJJL+1hV7mV/yimOCId7Gcx8XZVwsA7rSbZJaqoRhuc4rCB/jNaM/4T
         a8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762449474; x=1763054274;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t5shbr4WP6Y6ryZBlklRALqfJFCyMGfzMBK89+cAQkU=;
        b=M69ds7GMDNKwR+82n5rpF1QVJE0L5n961fT3XnDpV2Jd3A27rENoB0SMo9qOYDlgEp
         6ndlwSlQJDwXOsvggzRyKFazaP1IGVwkystr3FDwLm9Ek5R00LL8iIaAa7GWazXzS9YI
         8/xeVAYvR42ec8tLG82KqGqJgwvpC4d0ulxPHqTKShcxS/XQlmFltfCImPYiXN/i3X7K
         8YxlFfi+pZJ5kOg5cMsbmw+BK1kGtooRayXj5kvbP63UHnCJFE5ldaUZJikpUv59oq2C
         HRZPPLOLRGUqOVo1SRq9JxLgGXhR3Dn1S5xyAU5UFpB3LsQhkBkpNRQrQnKtgm5T3Mry
         NGBA==
X-Gm-Message-State: AOJu0YyCX8ZNTZOdKL2qctoSImK7bawUPZdTsRu9hcKZP3JWlnNyx8LD
	OqjJ406ockO7r3QSsXFgCmDOGoxQSkq4o+cxwAFlcpA8u04W7YfHBCylFj0UhkkIWYniSzEi5bv
	+uF+ho/VrCiRwGjv5XIWmQyhkRTP1XSXaQnQM
X-Gm-Gg: ASbGncvO1aFg4yl/fh0jOuy3hY7WyIxLT8QfTsW8E6a4E1lBYtCOyM7ywo0lOV0VMsa
	jCyAFK36ShgXxkYMDp+K+QMNJQyCAMpui4qknCgmkOd2lfrLCZrRTWH+aOFTEiiCt9M31oQck+j
	C2abCeH6RePurpEf5mYIiJfo59jQz4IRJXqbTzWiXv2XfFUnVAT9IzVWz1T6yuz8Groiql9stE7
	Wqg06kPqxV1+JLH7oSET+7nsV+lj2PlpU7nFFPgX/r5hAs0DuR1cgFiIU7MujJHke/FcnOtr/ac
	zjJW4tBu
X-Google-Smtp-Source: AGHT+IFgdUVRL9qdAT8xGt43RficxwuCWw009n1JfCw4Wq5lEOFcz+pmpUhP7Yq7x8WBYe54cP2BEsjh81HKuKL8I2U=
X-Received: by 2002:a05:6000:2681:b0:426:d5de:e454 with SMTP id
 ffacd0b85a97d-429e3305fd1mr6893525f8f.31.1762449473856; Thu, 06 Nov 2025
 09:17:53 -0800 (PST)
MIME-Version: 1.0
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
In-Reply-To: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
From: Pat Gunn <pgunn01@gmail.com>
Date: Thu, 6 Nov 2025 12:17:41 -0500
X-Gm-Features: AWmQ_bm3tatSWBqZ81GNv7K9jFO5B__tToJ4CNcoXhiekF-6XIZpQDhPxewQI_c
Message-ID: <CADz+4x-GmS6gSGRe=6jCkS+5Sgnx8SpVyvx8Lu5UDE6ndx9CzQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d2e94e0642f03e94"
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

--000000000000d2e94e0642f03e94
Content-Type: text/plain; charset="UTF-8"

Wouldn't it be more healthy if security-minded people preferred to decouple
process, numbering, and naming of these kinds of issues from
technical/legal ownership of the covered products? I recognise that there's
an advantage of the technical/legal owners generally having more context,
but they're also not (and can't be, no matter how much relevant engineers
might promise to adhere to some code rather than financial/reputational
interests of their employer) uninterested in the process. It would be
easier to trust the process if it were generally vendor independent - if
for example Redhat, a company that's been particularly poor at being a good
open citizen recently, didn't want something affecting its products to be a
CVE because in this hypothetical they were doing marketing around how few
CVEs there are on their product, would we be okay with that? Would that
look like good practice of the security community? More independence would
possibly prevent such things.

Hoping I'm not missing something obvious about this concern that'll make me
look the fool, but worried that if nobody speaks up about it this will
amount to a corporate capture of things that are best not so owned.

On Tue, 4 Nov 2025 at 11:09, Rodrigo Freire <rfreire@redhat.com> wrote:

> Open Source Project Maintainers,
>
> Managing security vulnerabilities is currently a significant pain,
> especially with the recent increase in dubious CVE reports due to AI
> assistants. The discussion around questionable CVEs reported against
> projects like dnsmasq, curl highlights a growing concern within the
> open source community.
>
> One effective way to combat the influx of bogus CVEs and ensure
> accurate vulnerability reporting is for open source projects to become
> their own CVE Numbering Authority (CNA). As a CNA, your project gains
> control over the CVE assignment process.
>
> Taking ownership of your project's as a CNA ensures that you are in
> control of the CVE assignment. There will be some requirements to it,
> sure thing. Check
>
> https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming-a-cve-numbering-authority-as-an-open-source-project/
>
> If you want to learn more and how it impacted an open source project,
> reach for the glibc (in the past, a frequent topic here in this
> mailing list) security community
> (https://sourceware.org/glibc/security.html) and ask them your
> questions.
>
> If you're interested in learning more about becoming a CNA, Red Hat
> (along Google, INCIBE, JPCERT/CC, and Thales Group) can help you.
> Reach ymittal@redhat.com and we will be happy to help.
>
> Best regards;
>
> Rodrigo Freire
> Chief Architect
>
>

--000000000000d2e94e0642f03e94--
