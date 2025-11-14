Received: (qmail 17819 invoked by uid 550); 14 Nov 2025 17:39:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27890 invoked from network); 14 Nov 2025 14:32:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763130747; x=1763735547; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZwvSVA4nzYiLteHxkHeZeE1UihzxYgnD1bX8U3s0raQ=;
        b=Hiq1OE53F/x4odIZLGs0VTNQgcsjqC809eWUULgQq5oB/z+d+mYi5At86BJJrc/6V0
         BtFZn+Ir3l5GBsAKNGh660h/KCrAYrfc9Qlyos8tTuBb0c65ImFs8ObIIfOZBU4bt5WR
         UeaHEl93leQaMc5ukpcU/sXxQoEThIdqchq4QJzkyy6vK1g19QowiKY+qMS7X8sVV/V6
         yyLCLIs0Pe+odKQx5LFGIFJQ/B7ZbrQnIh5+siW7GtSu9f/8xNE+YsQAM8IWJ6DLlHWt
         764vyKBizgMAvvITxPy7kXLRNMwhASU0tvNvQdQisl+CK1hhUsSoKdjaJY+AzJZ6Lnj4
         iRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130747; x=1763735547;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZwvSVA4nzYiLteHxkHeZeE1UihzxYgnD1bX8U3s0raQ=;
        b=bvrYqBSDxpD2CWL80YsVl1FQ7T77jO3xX1ia0CAXQ1a+35p8QUGcrGydaiKh0/SIjb
         R2q+uqDoWuKrM54KEAcnXkttONZmYjj8Hc51FFJvPsyFFXYNXX9e10jRvPcA0ozTrJP7
         yldQ1n4nDn5a8JE0LqcF5Ii7Ej2GQ18mltBCaLelRL2weAPiocOCVJ3E6qw6K1CygXjj
         PWacIQ+Yj5uWRdec91kAlPyzA2Qi/VPzFhvAEdjHddfdoPF5JO+ekwPmJoov3ieKtVs8
         PzkPYFWdebEslvYcJmQgzbMGq5gaZaPCSG2p0QiT9sRYtV034z5VVqUO/CEMzqcb59av
         uQmg==
X-Gm-Message-State: AOJu0YzaXR4e2rYo06C9xwvgYLKEMUp2S+F2EZJjGcDqz/hFH05tdo1k
	OSXmuwemj49r7zq98PSgVSLjtHp7Jn5D+3npePhSWcATk/vfTz8OLQNqGoo30n9ICre22CoJNdL
	xhPDc/sjHpAaYJqHKV0QMz9unQniFfUx4CEA9
X-Gm-Gg: ASbGnctIdlvaW7BWv7gCDzN3L4CPvG+bSbKfG51kw5jcr/ovks7+V/VoCv4Mquppn1n
	A1HFUT39UcA3Fs1WS32b3XpKcEoi4VTU+8Nw20QT01JnG/Z5AbkAqeB0SJR4AZMHO41mscUJEF5
	esbuevQ8u/Wmy7jjpl3tArNqlVqpAaVwc/pNp9D2aVjmxYgVHvNWEMm6aFpbHUvuQokE7N50ilr
	byvfJleO2GADsXnFP+HLpgzeoYVIhA6vyu+znLGuhfPfag9rLISuEboGYw=
X-Google-Smtp-Source: AGHT+IGfcMyIddxT1kf2ZV51F+82PxypNSh4Abzca0cLmxrptELnt2/y32MI8p/VUOXHFu1YAVey1YUXLRTRYT3YpUo=
X-Received: by 2002:a05:6512:108d:b0:594:4b7f:f93a with SMTP id
 2adb3069b0e04-5958426889amr1264595e87.51.1763130746485; Fri, 14 Nov 2025
 06:32:26 -0800 (PST)
MIME-Version: 1.0
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org> <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <a2ac8e7e-e45c-40bc-b517-dffcd4def530@gmail.com> <ME0P300MB0713341818938D79AA60A145EECAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
In-Reply-To: <ME0P300MB0713341818938D79AA60A145EECAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
From: Jeffrey Walton <noloader@gmail.com>
Date: Fri, 14 Nov 2025 09:31:48 -0500
X-Gm-Features: AWmQ_bm7zg7ucGSuJWHpmP9YW1dw_h7-M4nNn1Jh1OwNd8fJAbrxjRa8cgFJPtI
Message-ID: <CAH8yC8kG=8ciELe8K+Po9xpaq=gpdeKqUz5rx2KvLccV2zz9vQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Fri, Nov 14, 2025 at 1:44=E2=80=AFAM Peter Gutmann <pgut001@cs.auckland.=
ac.nz> wrote:
>
> Jacob Bachmeyer <jcb62281@gmail.com> writes:
>
> >Ah yes, the universal arbitrary code execution exploit:  simply replace =
the
> >program text with malicious code.  :-)
> >
> >Can we call it CVE-Zero?  :-P
>
> The best one I've run into is enabling an undocumented internal build opt=
ion
> that turns on extra code for coverage/fuzz testing, then reporting it as a
> vuln while ignoring the fact that the debug code also implements SSLKEYLO=
GFILE
> which dumps the plaintext TLS master secret to the diagnostic output.
>
> Aside from the OpenSSH pseudovulnerability that started all this, anyone =
else
> have any interesting stories?

Crypto++ earned a CVE for documentation: CVE-2016-7420,
<https://seclists.org/oss-sec/2016/q3/520>.

Folks outside the project ported the Crypto++ library to another build
system, but did not use the same build flags that Crypto++ uses.  Then
an assert fired because the ported build was a debug build.  Crypto++
caught a CVE for a DoS.  The CVE folks told the Crypto++ library that
the behavior should have been documented.

Jeff
