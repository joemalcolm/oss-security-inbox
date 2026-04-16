Received: (qmail 21506 invoked by uid 550); 17 Apr 2026 00:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19962 invoked from network); 16 Apr 2026 21:02:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776373367; x=1776978167; darn=lists.openwall.com;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :subject:cc:to:from:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bgoo0JYtWyGj+z7ZkQifb/Y0C5RbTyPW7BDMBkQD9xc=;
        b=GVqjHcWVzDEfPifVRRuWB9qMP4jlBsiVUrqMNUAgGklrbX8ZGu3Xm5eZfxHNuSext8
         f07pRrRv+W5on9sS7n7maahqiuJLSfcZXiiDHDGXk0N/t9v8Sq1RZn2chg9/PSTKYrwU
         4RGla/NIg5hPzNqE7XjASLJN1/g9aANp0Z2cpXnFQdi8MWHNR08aEGNYDx2k57x7vo9+
         SnTOZHM48ZYL9ajwaMv/hwbcC6G4jcRJjXdHCsIoqqRP/L98SPqM/ActJ7fHe8SfM5nj
         78oj6fgbBegHqdXwaommM7/ywUvzebjB8go+gPDyrVZUXRhYXx2runbbaUE5HBj4eAz7
         Ri9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776373367; x=1776978167;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :subject:cc:to:from:date:message-id:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bgoo0JYtWyGj+z7ZkQifb/Y0C5RbTyPW7BDMBkQD9xc=;
        b=hcw1YD+qLQmGvA+u7aAET65PVMod9S4gTDIcn3d2HoiTJn+bGbhyn9Nir1gZr1ija3
         7zeNRDWt2UVsIGX20CHCBhmQAEi+CZmzkuXcdXJbZEYKESXIfaZ1ooZ6FV8EtuumtgRU
         EtlOPPMkFWh0kUkiWmW/cpC/XiJOnG3cnRepXwJ0Alf9TJDxOYDmrEB9SuTlxvlNK+XP
         1RBwZGIAt5mvwTuTN1J2uhlrq72r5aCUptwkuRX8y8zkb+oUVqzDKfH6MY8y9pc6cHKt
         l2x/Z4GUhG/uFCeiILLZpnj4jYAyzYhKHOmrd7zIzzyAiRpMhIK8f69U9XEe83xCI5/D
         K4vg==
X-Gm-Message-State: AOJu0YxNDypFtn2LzwWjctBc9CNmE2lpq2nlUQ9v2xGpEQPiuAbSX7u5
	Mp93IHlkAojhoJxzEmjVMmVdmfn46UiUUgVx2sdRH9DyS0law3vC/x883Kniw6Oc
X-Gm-Gg: AeBDiesi7TjFM/9s5lZBBJy0ORHZ08K8xPx96/vwScXKUSep/ME2rO3r9xATw6QtNb0
	jR6Hp5v7RqM8w3dDU63gV1h2l/7OSSQLNOqAQCEK0wVVlvADFo20PmZnDwGkqvOYlv9koo4gVb9
	QnY/Qo5nAK6ZFPLSUulB7BXpTgu51d+UJ4wFdGDHAkFTTFBVDQa7ENN0l9h7FQ1zEl/7b2F94zx
	dVbkJgn/gp5xS5BHkSG5Npfya0JNYhmMj51mPsdEYLKGrUZ9z5acr2IL3bq41Lp+a0CoRbKki48
	ofXvZzauBq40IeOBYHBd8d3BuqC8Qzxubjmom8yetIiqFFFVSPuFi++CfgjkUN0rEpqy5vPNQnF
	+Cvzc2uPlMaGAYeltgmPjXZYRRO/TUJyliV74cWXFOXchwX/5ccjLJm01I2iGGXpBZQkRYIX3dM
	+4U8dEpr6pjYwDCS0X0sGxtHh/PyHjwHtI4BpVe6arASGhOQDvjERWYMa1O3YkTi6YztE=
X-Received: by 2002:a17:902:f9cf:b0:2b2:50e1:f104 with SMTP id d9443c01a7336-2b5f9e64c18mr155035ad.3.1776373366553;
        Thu, 16 Apr 2026 14:02:46 -0700 (PDT)
Message-ID: <69e14e76.170a0220.148d62.9012@mx.google.com>
Date: Thu, 16 Apr 2026 14:02:46 -0700 (PDT)
From: yangjincheng1998@gmail.com
To: oss-security@lists.openwall.com
Cc: solar@openwall.com, alan.coopersmith@oracle.com
In-Reply-To: <20260416193451.GA20893@openwall.com>
References: <69e0d549.170a0220.2844e6.1a9b@mx.google.com>
 <7ddbe893-6bf2-4142-bbcd-c382a21dbed8@oracle.com>
 <69e13713.170a0220.289f9f.6db1@mx.google.com>
 <20260416193451.GA20893@openwall.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Subject: Re: [oss-security] Apache Kvrocks affected by CVE-2024-31449 and
 CVE-2025-49844 (Redis Lua); fixed but no formal advisory

Hi Alexander,

Thank you -- that was the right call. I have restored both issues to
their original titles and content:

  https://github.com/apache/kvrocks/issues/3433
    [Security] CVE-2024-31449: Stack buffer overflow in Lua bit.tohex()

  https://github.com/apache/kvrocks/issues/3434
    [Security] CVE-2025-49844: Use-after-free in Lua parser (luaY_parser)

For the record, the maintainer's fix PR also names both CVEs:
  https://github.com/apache/kvrocks/pull/3435

The 2026-04-11 rename was a poor judgment call on my part (I thought I
was tidying up resolved reports already linked from the fix PR), not
an attempt to hide anything. The edit history confirms the original
content was always present. Apologies for the confusion.

Context: this work is part of my PhD research on 1-day vulnerability
propagation across forks and downstream consumers. Having Kvrocks-
specific CVE IDs assigned is important for the academic record of this
study, and ASF Security has confirmed they plan to coordinate with the
Kvrocks team to publish those IDs. Thank you and Alan for the public
engagement on the thread -- it strengthens the public coordination
record significantly.

Best,
Jincheng Yang
Xidian University
