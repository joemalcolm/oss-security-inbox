Received: (qmail 9625 invoked by uid 550); 25 Jun 2025 13:15:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9994 invoked from network); 25 Jun 2025 07:02:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750834953; x=1751439753; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rLks6ovfRu1ttRjR/pAblRjCTogLlYsPtIe5aIEIRaA=;
        b=U9veT6Ws5+jdA6kR6wFOnp+ATDDBfji2mVXG4Vl1n08q6fxzYmNhO/g8RpAaY6L6ZS
         VTYiMEGQSFw03hKpuVPuGusgtgjE2tsMHl+LV1fZFVwjWGcn7hhP0/F54hoOR8IrtkEs
         hty80Z9jhSP9OjGJo+Rl+jJJybANWFkRF5CiPsAhq9kjNA+SdrkzlBKtakA3Ma79MiPC
         lXzcjo55XS8pgqaJR2DWGNPwC5rtRqNG4eu9IC3i+W4UbH4fLqDItNhfoYYQ/x/vCKMF
         /LVULUFHwOXJl8eGC1rgezANWjbz6OCRLB7LIlKuUQimPASg9a0OEblaha6pU2Njco2J
         BSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750834953; x=1751439753;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rLks6ovfRu1ttRjR/pAblRjCTogLlYsPtIe5aIEIRaA=;
        b=r3dkE7fBrX/FGKFrnTTOLvbLIbHKWfaUq02u7IB8Nci7SXqdXt1oqVBN0nHjHKmHPF
         G4P6jHBLXEcXHZv91JBSCE8+RJI6bHJUJDmIs/jGyFy/+LvibujCRRjkX4XJ3AkvJCo8
         m1Xv1aZsb8X3o5ppiulVr8BASmNjKInVBkUkOAUsmfxD8R4G4+pA7nn7fVEBih6lMHAJ
         dr38MZ3TqlnjQ6XgoEBv8+wQGVjkQOYSNJVapagKy8HavO+Uzs0amLGnjaCwwdx2/6n2
         G5JWRhZrbLRNsJvEXaTwD9zpQS47LnppLeQ6emScdMgG0Ehp2BDOimmsMEpHx7oNsHLB
         IMkg==
X-Gm-Message-State: AOJu0Yw1FEm3R/+dJaNyxUI5p4aNccbNpsbFGJGLTly5G7oDJLUo0Vyd
	h1GHDOWGo1qsc475SATPMKFkqd9oX/6+ejlCeK7bKQXdWJc6DBTcQdUZ9CT9XQ==
X-Gm-Gg: ASbGncv69fr/m+sH/Uf0nIbnCIyr4TdKQOTxOXCQvMvpAgEDzbbk4Up3qie4gcZmxoB
	5O/254Jeszcx11sQfviNDCyWrPwidcap5hqs15YDlqDCKaIboZW4IZHv7HDO0zwEZlpYl7Vqndl
	1yb+vwCDPSajYLK95lfePJjH9UYjyOHLggX2K+RUUG4FAplJN8LwCt7Lt17j/7ECUshxsyNjDQY
	NFlKZGDZtQUxNqRi1n1jf/Q0IzkAM7CALckdisuaDxzWg8Q5y1GL81mI+lsk5f9g5IZqOMlF0q8
	s4o4KDuFr7zCKGSgjFreLFpUYKdsbK1z5mlxKWU3NlBV8T/tq7VeRxeNlX6vv3486neCj2t3EDq
	vgZBI7q5nXveNvWGoRsYD6SYuew==
X-Google-Smtp-Source: AGHT+IFdnXSmZeKO4NEi+q7+TqM9GceUZVMP34rm26V18NJCUfoquviSElW0c0AXiw+9eAuV/fmuEA==
X-Received: by 2002:a17:907:3d4d:b0:ade:2e4b:50d1 with SMTP id a640c23a62f3a-ae0be9bf4cbmr208359366b.29.1750834952611;
        Wed, 25 Jun 2025 00:02:32 -0700 (PDT)
Message-ID: <e3f3a58b-87cd-4bf5-b9a2-66a14da56e3e@gmail.com>
Date: Wed, 25 Jun 2025 09:02:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Thomas Klausner <wiz@gatalith.at>
Cc: oss-security@lists.openwall.com
From: Martin Guy <martinwguy@gmail.com>
In-Reply-To: <be3467cc-dd23-426f-a3b4-b46e06e006a0@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] sox_ng fixes 20 CVEs in sox

> I've tried the configure version and I get farther, but there is a
> problem in libdolbyb. I tried replacing configure.h with config.h but
> that didn't help.

Yes, it should be ../src/soxconfig.h and there *should* be a symlink

in libdolbyb configure.h->../src/soxconfig.h but it doesn't seem to be 
working.


The other thing is that libopusfile detection is broken, so opus support 
is not

included (opus support in sox seems to be cursed, has come and gone several

times and is even not included in the ancient Debian package (for yet 
another reason!).


Thanks for the compiler warnings too; I'm always having to stamp them out!


I'll write to the list again when 14.6.0.1 hits the racks addressing these.


    M


     M

