Received: (qmail 25687 invoked by uid 550); 27 Jun 2025 01:31:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17704 invoked from network); 27 Jun 2025 00:55:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750985720; x=1751590520; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SBlnogKf+KqfMbVX2x1tl7Kx6ptfL18FEabR9POoVBI=;
        b=Dt/IVdrGG4bwIAL8grkAfBXFNfca3y3KM6DOley/fmaPgxyfPImBShb5/gTq9oJYAD
         xB6Ioj8iluytpanzjFcarrUtkG4H3zFqO69pw5FADPPlkNxuX3OcD4KiNfLO2SG+qfqz
         6SLFj7bKellCAdyyVObBK7r8CAYwk6IaSEk5025ee7kbZsbCwgQi3zUMSK/UifxyifQF
         0/o+Ju51rdNhWT3QTyPJlLSIvmTQhN0x9Pba2bhmHvHAK7T+f42YOv1ssmwP8wYqZVTR
         xG76QJHD4KoeoKEMzOq7GEGTrVxSNBmByJtlfFavA1CpUf/YvWa5prdh69xl+RxU4tbM
         7L7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750985720; x=1751590520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBlnogKf+KqfMbVX2x1tl7Kx6ptfL18FEabR9POoVBI=;
        b=LDsZKndjpRMxthVtyXXeG7FM4aDtSkTW+T4jL08IJ0nCQ6/0S0CLupwOvNcCnvRy6c
         xGDi32JJRYgMFJYXcomWKFot3Z0Igl5ELa+ZmHJ4/8Ku7ias4pF5kWTC+bl1nUcSbAWc
         HnanFxYQ4v4Na/KYpmmWW6mX3/JgOlPmZucqNcK2OEeu6ubYZTNHgC35GxrXNFCxYiox
         rXPF0waU+Ox0ZobGG3QR1+Yz5YI032pQElM6XnJ0rPKsHkvyxX5tlaB3M5EUsUJX4UNk
         6Rb+Kbdix6gRTAaHN0iTXNuzD78N/qlu5obpT3+JUFhPFRiYzeYpG3YkK6gPhxRuu9oq
         +8/w==
X-Gm-Message-State: AOJu0Yy4knka/FjaNbI+0D+p99aSkVL6k831WEh5czLsgutQ6MiEocua
	goK3R40VQr6tcihvVrwIG58dnwudNvW2wp8muBbR555ZFiItC2dUk1O36/dqfw==
X-Gm-Gg: ASbGncv7OGUZOvruF3SwdvN/qrPy6EBoru58fgBspFZA21n10w36xmr4iXYdHswigVW
	a/u+Q/aOh5dtAh0O4NhaQCEcNVL/15EaLIQ9NhQB0OtDiqhLizNP8j3SE1NphozXTUk/iIUEG53
	CTLnI2iJU3a5/TLA1yE56dS+VyBi3+Str7ZPKUk4/cSJhX92mbDgmhZK1IhIQewMw+3H8psO8hI
	Zx1+QO6hAV4IsRcXVK1E1KWA73StcNcZ5Fj7189ODge1ofWvCHcsec6crEgu5EsgtPwkUI15ER7
	VuBZXCJZkcwlDcgYk31E8y9kvNiq6yhMmKY1PHBtLzXiO0BNlfI7m14z0zsBS1N6YQLISg==
X-Google-Smtp-Source: AGHT+IFTCTTyQryUOp4/BDrtmxNsnyS9U5uxn0QNKstELD3cEFJ0qza+FyhkT39+2EYWcjnZeC/UUA==
X-Received: by 2002:a05:6902:c07:b0:e84:4341:4101 with SMTP id 3f1490d57ef6-e87a7aff9d6mr2416317276.10.1750985719509;
        Thu, 26 Jun 2025 17:55:19 -0700 (PDT)
Message-ID: <3a4fb353-f4c2-4c76-9958-42714c2946eb@gmail.com>
Date: Thu, 26 Jun 2025 19:55:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 "Sage [They / Them] McTaggart" <amctagga@redhat.com>
References: <CABBoStj3fbqaQi2uDo83wP+zdn+ODvywSC1C=e0-+x1+GLm6Hw@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CABBoStj3fbqaQi2uDo83wP+zdn+ODvywSC1C=e0-+x1+GLm6Hw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-52555 Ceph: CephFS Permission Escalation
 Vulnerability in Ceph Fuse mounted FS

On 6/26/25 15:09, Sage [They / Them] McTaggart wrote:
> Hello all,
> A flaw was found in CephFS. An unprivileged user can escalate to root
> privileges in a ceph-fuse mounted CephFS by chmod 777 a directory owned by
> root to gain access.
>
> [...]
>
> It is patched via 17.2.8 <https://github.com/ceph/ceph/pull/60314> , 18.2.5,
> and 19.2.3 in upstream Ceph.

 From that patch:

     bool allowed = false;
[...]
     if ((in->mode & (S_ISUID | S_ISGID)) != (stx->stx_mode & (S_ISUID | 
S_ISGID)) &&
         (in->mode & ~(S_ISUID | S_ISGID)) == (stx->stx_mode & ~(S_ISUID 
| S_ISGID))) {
       allowed = true;
     }
[...]
     if (perms.uid() != 0 && perms.uid() != in->uid && !allowed)
       goto out;

Am I misreading the code or missing context or does this allow *any* 
change to the SUID/SGID bits, provided that the other mode bits are not 
simultaneously changed?  Is there some other check before this code is 
reached that prevents Alice from making Bob's (or root's...) o+x 
executable set-id and then running it?

If I correctly understand the description of the problem---that an 
unprivileged user was able to chmod root-owned directories---how is this 
patch not introducing another problem of permitting unprivileged users 
to tweak set-id bits on other users' files?

Maybe the correct answer is to not allow chmod except for root and the 
file's owner?


-- Jacob


