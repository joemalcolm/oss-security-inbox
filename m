Received: (qmail 21672 invoked by uid 550); 17 Apr 2024 15:09:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13962 invoked from network); 17 Apr 2024 14:52:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713365545; x=1713970345; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FLKCAuX4WIaABbX9InrmItduwM4DIqWdP7ws9gZc7Pc=;
        b=DfXP2FA6uN4ID/unz9T5swpc1hyoQO/8ezpPaMFrI5LdqMBoudsyX2kkwsHZA5n4QG
         a2ZukOwTawqeNhFqsl+nGGEZI+bErervDwTuHF7DIfqeSeXAf8SvrfSYmllqfWothCth
         bFk6AAFIhbWX4lhp7E7/PMs8kM00wnMinRWh1ZpHyCJHoy5nFEIohJweDfj7VkRMtY7m
         1bYdN6dc5Ys/m1TGYZ0u+fRRkipVLTxNiKlJ0RPubKIOEOWpqz9/HXbFaQe/hX64mVv0
         k4evrtj7z1Xh83Mkd7ChuXd4qi59Gv8Lh3IsQiAf87f32yb8YPhcp1oWi0o1YuKxVYl6
         Xw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713365545; x=1713970345;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FLKCAuX4WIaABbX9InrmItduwM4DIqWdP7ws9gZc7Pc=;
        b=mHlsjRDfIf/W0FtEAlazTwicP7g7zqxRcygwU7MJciTTqL+iQh08WyJhl+FwZjaZ8D
         65Ii7lRhVYv8IsFrZ+qHcuxt+Us8jhQT/NMLYTvVVQaqQ4Tu8FHSA65v6ZzsEru5VZTY
         x3s+KcVFOE/r7OEE9dpFOPvit5EKHHQOpCrSHADPeM6Xvap4ZrvA5IfdpebVMIDJhnmB
         b338y8EWEq9pL4GjedF/NW/FSivg/+xhGYltEi1SeQXLvFA0zBahET3y0aoPafuHIp0r
         AY2m4iTNRGSchIRbO8fPBSJT6OvtWYMq668OSKCoA4xVhf1anmrv7T32J1J+/kdUzsuD
         9enw==
X-Gm-Message-State: AOJu0Yw6vn3Dg6XSfNoJuhnQIaEmeq5CaEWY8rQSfSXtpYP8IMS2YajP
	xYsK5Q71AtRlDg1Kp3RetgBAc9xLU3wPz/8kh3bB/Fg5Hl9vBQzKlyy6mV9duXo6T+lHYHice3b
	NQg6kJ5Ln6FBntDZSyGCaRs0fqDrr7WAS
X-Google-Smtp-Source: AGHT+IGgiCPl1AvyIa4+PPusUFB6rdGHP70mXhnSovkUabcvcKU3Vow9kJi88UPZbbK5pY8ygvcX3nRHWMIJzWooq6A=
X-Received: by 2002:a05:651c:10cc:b0:2d8:67a0:61b2 with SMTP id
 l12-20020a05651c10cc00b002d867a061b2mr10973526ljn.20.1713365544572; Wed, 17
 Apr 2024 07:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ed2715be-e7a0-4a7f-a3fd-7041f6c6fa49@fu-berlin.de> <Zgmn06K3C-nY83YH@codewreck.org>
 <20240331202502.GA21116@openwall.com> <20240416225900.GA23474@openwall.com> <661F3331.3020408@gmail.com>
In-Reply-To: <661F3331.3020408@gmail.com>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Wed, 17 Apr 2024 18:52:11 +0400
Message-ID: <CAOp4FwTh_vQ-RGZ0uByqO0Oo6cwUCEECcnNg1cQCqm00H6MLbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

>
> Concerning, yes, but not quite the "Jia Tan" /modus operandi/---"Jia"
> seems to have been contributing patches for some time (with sockpuppets
> pushing their acceptance as needed) before making a move to be appointed
> co-maintainer of xz.  This looks to me like the common cybercrooks have
> seen the technique, decided that it sounds like a great idea, and are
> now trying to use it, but do not have the patience that the "Jia Tan"
> gang had.  In other words, now the "Nigerian Princes" want to help you
> maintain your project, just give them write access to the source
> repository up front.  :-P
>
Hi. Not all Africans try to scam people. There are people in Africa
who contribute
to Linux and Open Source software such as auditing compression
libraries for similar backdoors.

(I'm from an African country - Mauritius - and we have a vibrant
community of FOSS contributors ...)
