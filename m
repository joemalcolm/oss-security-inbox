Received: (qmail 21769 invoked by uid 550); 1 Mar 2023 15:48:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5347 invoked from network); 1 Mar 2023 15:24:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google; t=1677684245;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wd/UbWJVpGXiqzzqDzh5JGuAVPYLTcU/6FealMfIVts=;
        b=ZUoPkmej+mzOnAyoCOXTochotCconNSPc6Gyfq/fOV+4/eZN+LSh8ub2XzxuRllW+p
         65q8gH+CrTVA1bFtTOfy+qTVnSvOfuc3xJiKGyVilenCPOq4tPV/W4QsiNvl4YAOIHil
         Fqp7WN7JchWiTXpJ9YvIQIV9cwT65kl+mXCXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677684245;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wd/UbWJVpGXiqzzqDzh5JGuAVPYLTcU/6FealMfIVts=;
        b=VRM17IxpNEnN5dUUqkDnu93sFFmF8+oG5qhg7+CJQX81lZXahoat9kBfV4EK2+0gZ+
         TW4lj2/0ytJCmQozphGJhkkLplc3N56qRuOKLxzCuRvTuG7Bvi/dqjxNBxPhYiBM85HI
         FmE3Qxwy9Cn5+Fp4QCMFuY8YwhoHJB2WS3evBlfkj+PIjiEBxTxxv9hBogcUm1GKVDq3
         3tw46Fr7FLzTi6I1lVOPrCyjspiJzIqs3PrOr2amCLRwS7My5D5mnxLtvntmSbjDcKLc
         3fWTiFNmvzwwpDVWKaxANUHCqEnKBCXRHCf0brluht2hlVBl+SpF9bpVkRMpanXdGBKa
         bChA==
X-Gm-Message-State: AO0yUKVEoYaejeGRHulfPGv4FPr5w3vhQC0rlrvHr7QTyM8dIzs3UCjy
	Li8c26m6TmC6AJEe5b+4sQ7+T9VhmXFU5PzzwVUDL5MNpBS6hT1n
X-Google-Smtp-Source: AK7set/heh5otXtdwjIow/1eXKyqTGkI/3Bx0pEKvTcTH7UN2cSvPj2QNcgtcdUOt1tmRZ/5QfTtntiPui/LnqcEdI8=
X-Received: by 2002:a17:906:e41:b0:879:b98d:eb08 with SMTP id
 q1-20020a1709060e4100b00879b98deb08mr3276953eji.3.1677684245335; Wed, 01 Mar
 2023 07:24:05 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Wed, 1 Mar 2023 16:23:54 +0100
Message-ID: <CAEih1qWzJSX8z4dx958nqFH=FX3Z2A2jgAwd0kBv0gGpidSeuw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-1075 - Linux Kernel: Type Confusion in tls_is_tx_ready()

Hi all,

I am disclosing a type confusion in the net/tls stack of the Linux Kernel.
tls_is_tx_ready() checks that list_first_entry() does not return NULL.
However, this condition can never happen.
For an empty `tx_list`, list_first_entry() returns the list_entry() of the head,
which, when used, is a type confusion.
Thus, tls_is_tx_ready() may potentially use a type-confused entry
to the list_head, leaking the last byte of the type confused field
that overlaps with rec->tx_ready.

The patch has been merged in the Linux tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ffe2a22562444720b05bdfeb999c03e810d84cbb

The issue has been assigned CVE-2023-1075.

Best regards,
Pietro Borrello
