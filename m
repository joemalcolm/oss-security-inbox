Received: (qmail 28668 invoked by uid 550); 24 Jun 2025 14:56:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9678 invoked from network); 24 Jun 2025 13:32:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750771926; x=1751376726; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/3TayJG5dOt95jlZvgmTv6chGmAoU3nOmW+plZlFLKQ=;
        b=hUU1pRVFOIUfB5XcEzOuUX9J1JfRGozatb/k8LZzsbEKWhAoeEGJHjURkDwl40bDDH
         JlcCj3W5p1KcU7QgR8332Fp5510lORoRz5GoXPrXeksRwPVFpZoC5Ad18D6BrSpsi+Dp
         qnxbh+ISwcHCw3HNRaF6UY0P+l9dxw7HFHay0hxDWjPdFu6AJGFFcTyc5TANZHNpmAUS
         ATA16hTDxOIMU0m1q6zgFyMvjmtkNy3Db3Obv+SNoDTPlwWDg9G01jL1XrQMQ0mp8LA+
         uTG87lUJwpdMMIfG06hKVrGRZYDaIKg5FpoXYi3KpG7gp8xll+3EYAmAhLYov9N9VZj9
         OTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771926; x=1751376726;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/3TayJG5dOt95jlZvgmTv6chGmAoU3nOmW+plZlFLKQ=;
        b=U5q1gsyM29c7V9FIlSaiL+CguEjeam9ogbwHyGQEHeaErxSCF1CU2SE9IhswCaZG95
         FNIsI5q2566gFr6EdzmslEdbP5N/ijnroI3lLAQNjpyxE7+RsiTZmTcnHzJ6B9roGsYZ
         IZrHficQzAsBKJfCjME4h6DTF9W9Y6YXlqdgDA5QRLPzAYkQK6W/RKd60r60rra3qokM
         qck6dGreX4IM4Fa5f8Tt15GzllV0XUTOmBmF0YktAsoyefch32cIodDoW9xsR0e9Tcr2
         5vBkQekR291ebcT+I1vTnO91wLhH8sLvYJ0j27M2+nYkqp/f6WueB4uRbREQLt/eDK5g
         tK5A==
X-Gm-Message-State: AOJu0YwBJaaYS19iEiTCE2u6Sn7nlik/PgUnKsFEbawHo9/nnGmToA5A
	n+Ev5BX7QgAcg0Bp9hH4p8HJCx5WWZxKIGUqQijKaEuNkyL593qUicTv7vjIxA==
X-Gm-Gg: ASbGncuxuve1uvh2EMDytadzGkw2OlKTZ/nnrHQ7dbNK/WadcHUrt2Nw53rT/dZ92iq
	ArpNn/P8ChBlWIPy6NGhr4NYNmuy9ytaSblgs73lqgo+bq84pTwgD/hvdxgnZzaE0Jg+3lpdhp6
	nT5b4cOkNl1p940XeKBoJ331DbZ3RX1ebP/B7wi8t00/KbA6wdB0uNQFXqm4cvHwaGYg1MGbfYi
	o24WE6nZnHaysz8PrTN1Br6/OZjPGJjQiPnu2gPCB+gjmSx/ewgx3+WTim54Qtt2k/DYqVk5nMT
	1AiAKw7WbnJtHjj2MRtT+Kj/jeVLB2o0YGK3CV4CA23ZJOZwoiCbXRTZRdcLz0SiffrxYhIelr2
	Udvl6XwF9m9uUbbk6uByEw8XM2Q==
X-Google-Smtp-Source: AGHT+IHGfBeOpKYyH+jtcb3yqmeLFjSx/gSt9T4v0Lljy4QC4JEfA2oTN8WxBE60IBAvw5DmHztMqw==
X-Received: by 2002:aa7:d7cd:0:b0:609:f7f:5dfd with SMTP id 4fb4d7f45d1cf-60a1cf3db01mr12015624a12.34.1750771925647;
        Tue, 24 Jun 2025 06:32:05 -0700 (PDT)
Message-ID: <be3467cc-dd23-426f-a3b4-b46e06e006a0@gmail.com>
Date: Tue, 24 Jun 2025 15:32:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Martin Guy <martinwguy@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] sox_ng fixes 20 CVEs in sox

HI!
   I thought I'd point operating systems packagers at sox_ng,
the Swiss Army knife of command-line audio processing
forked a year ago from sox.sf.net's last release, 14.4.2, of ten years ago
and fixing roughly 20 CVEs (all of them) including buffer overflows,
code injection via crafted sound files, and denials of service
(Segmentation faults and Floating Point Exceptions).

Most distros have 14.4.2 from 2015, some with a variety of patches and
a few base on sox.sf.net git HEAD from 2021-05 (ArchLinux, Artix,
buildroot, CRUX, FreeBSD, Gentoo, NixOS, OpenBSD, Parabola and Pisi Linux),
where not all CVEs are addressed and some that claim to be fixed aren't.

See https://codeberg.org/sox_ng/sox_ng/wiki/CVE for details.

Six distros have switched so far:
KaOS, Mageia, Rosa 13, stal/IX and T2 SDE install it as sox
and Solus provides both sox and sox_ng

The security-minded release is currently sox_ng-14.4.4
(14.5.* and 14.6.* have new features and possibly new bugs)

Keep up the good work

     M

