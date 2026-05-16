Received: (qmail 3181 invoked by uid 550); 16 May 2026 18:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27818 invoked from network); 16 May 2026 17:30:43 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778952632; cv=none;
        d=google.com; s=arc-20240605;
        b=Kt4EDUkjHqAOuOUnFzPkLzF004ey1vPeAV8XN6JNh8XEYXjJfgkW8T9BJTn7gHs2oH
         ma/sISGJmyqrEEoQz5+jo7vKbmKZ4lnFraTNSzPzNrv/pX3SWwlfNBI2NB11iOk7VUZi
         Wh6KOaX7LGluiX6va87Z2aFklSGMdhGWvlZF7mduX/gf9g8lA9bcK4s3vdppIrTVkue7
         qfLhWT7v4ZNhc1u08xx1C/3272dfD4ycvjxYAGcqmta4Pxv4JxZ8PS/nBH9VdUVeuBpc
         zfKWixKU6vBMsmfPw2D3Qz3XahMXnGxNsVrOIxtjbqrCZ9MN6J58C3fkvAGlW8p9XFPC
         DtVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y73dbtLnasOkOsCbfHfoFXXWWoYdQ/DChdgZH8CytP0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=VZ0P7AA6kFa7sIM2YjfA2na8yydBHs4NKsEXyh7EA+eD03lz5epPYejXffdC00SuZW
         G7dTqQKh+4ZRVhkm8D/jmWxPwIRfEvMN1T0YtmwAk6kAJzgdKuskK3ubigyETL2gsRf3
         V1BAia0tCPc5CCvvio3eFU/8b1De6CtpjQ69O5pXkgP/X6iFvr9o0ofQZQx7UyJTF7Fn
         y7SLyE6tn0tvLO4BiuOvn7KKAcIRlTvgq3rWbdDwOcSgPJlk6rHYsYQbOSAL87NOm6/L
         LOtZn7ZPMJGHnj93fDSHG5fj1C2TbtahsYCFAZVIX2ww8c2cmTi6z9wzuJ9S5jP7LI3s
         KbvA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778952632; x=1779557432; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y73dbtLnasOkOsCbfHfoFXXWWoYdQ/DChdgZH8CytP0=;
        b=nnH0OH2O5496eb4+iKqmdZYx0uw1EKUEOWlGMHpa3R+ySMJLCN+5alxz/AJN7JPWRe
         F5yJegnNmxcsoNTUrU+qZuyEy4ZxHfnV2O1ZNhbxS2xz/IS22aZWuyWU5uaPp7MfEz4W
         b/BLeKUxxyyAA4hweC3wBPVIoGCcWvIwqJ3ZH5AtYJ9pEDSdVFDJShLCnfcMmZbgVmLS
         HqLxGl4WAeF1ITNNszX9EAFlLbCGNvYd2tORgMOzVfC3xgu19eTG76j4Q/wrwTvYkUKs
         6Wphc7h1XWtvOTEeCSf7W8va9d4wgFQdfLdzePyCRwLL9dmg+jlkUyv7FOXBTM8VsbQo
         S5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778952632; x=1779557432;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y73dbtLnasOkOsCbfHfoFXXWWoYdQ/DChdgZH8CytP0=;
        b=b4pnyHOOjmoxH3ANETuenbbjskIhFsm3p8yht8rxTlqlW0Doh6lZ52pc4mPeTNZNu5
         9vcXqQ7fzI8mmcYBnLhmC4eT5GSS9vgUh1Cw01CnJClN7WGnx/4MaG0tiahiVXdTKUm6
         7J8rcnPnu9disLIZwi7Sm8mFGHjhB+BhHBeRLDMOMxLufTMfR4kD2PQLIH+jkCq5gAR3
         9xXB6Xs4CjEITNrMgee1GDcXM0vO85XrFUNcMbsyAM3eYGfdR5i9ITXeI+BrfhoTV1gR
         HlIrqpUBtmG5Gi8zfKdH45M0dV2Z965mFAlRXfpQXk7p/NtwuZajYLQ5M0jcdx3bJHxO
         1JUA==
X-Gm-Message-State: AOJu0YzdH1zf5KcipnfvHoDqyW6FUUfVookkry5IR3/QeQ1UsaEbLfh2
	AVA9WwU2naqxwzvI6CjtB+xcELj6Kir44uq5rJ0/+Mqb0Dd44MqdWEYPqJ5VppM4G19HRu1J6Px
	TnMFhJtnzAQI0sKVpK3lsk/nXWDVgHty+hg==
X-Gm-Gg: Acq92OHA9l1Hhm8XxIinUApEPldQ8XX8FeEtVrHjPOkh7sWdPk9WsV2T7t3rLQM7PvR
	uBAAhbF6n/rniynrBSt+aVYETih/JCIeQbXhnBJAI966Qt3LkrUlwddYGZYfRcAdBOerNSzD5zA
	UwL8WgbUQVxNRKzsq+ZiHVMzjidKTmT7cM/7LTpCW0rMpL2KPpfKaslsrx7ExGkVhiVQMOMxr4r
	iqDMwNBoCvkSl/+jwrVtkMzjUI1wF9EBaV1ll3xhRSd4v5rxB0UXfIClq9NP+/vEFLlGooo0fnt
	T0y6LAqunpamh+G66UbKFS0B6WNYdNNl6MEejT0nUyXq9KwMXYbaxcQQrWjo9UPqiVs=
X-Received: by 2002:a05:6512:6c8:b0:5a8:72e2:dba8 with SMTP id
 2adb3069b0e04-5aa0e6191e4mr2573113e87.3.1778952632122; Sat, 16 May 2026
 10:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260516150545.7570323b@hboeck.de>
In-Reply-To: <20260516150545.7570323b@hboeck.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sat, 16 May 2026 13:29:54 -0400
X-Gm-Features: AVHnY4LDxH9P8nj66UQjY2RnSb-ECIKmUXZy69EGkfezmELxzSIJ14HQGEvhllQ
Message-ID: <CAH8yC8kf1rCP7SGYpbRjSsLQ6qSYmZyPFF1QNzum8+o4_P2N9A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

On Sat, May 16, 2026 at 9:07=E2=80=AFAM Hanno B=C3=B6ck <hanno@hboeck.de> w=
rote:
>
> Multiple of the recent kernel exploits have affected the "esp" Linux
> Kernel module. ESP is, as far as I understand, part of IPSEC, and I
> think it's fair to say that IPSEC is not widely used these days. I
> think this raises some questions about attack surface. I want to note
> that I use IPSEC as an example here, but it likely applies in very
> similar ways to many features that are part of the Linux Kernel and are
> not used in most common setups.
>
> For everyone who builds custom kernels and doesn't use IPSEC, it's
> probably a good idea to disable all IPSEC-related config options, e.g.:
> CONFIG_INET_ESP
> CONFIG_INET6_ESP
> CONFIG_INET_AH
> CONFIG_INET6_AH
>
> I believe IPCOM is also rarely used separately from IPSEC, so consider
> also disabling these:
> CONFIG_INET_IPCOMP
> CONFIG_INET6_IPCOMP
>
> However, there's a broader point here: I think it's common these
> days that Linux distributions install most or all kernel modules by
> default, and loading them happens automatically. Which, in many cases,
> means people are potentially affected by security flaws in features
> they never use.
> "Attack surface reduction" is widely considered to be a good security
> principle, and I wonder if we can do better here.
>
> To pick the example of IPSEC, i wonder if it wouldn't be better to
> have, e.g., a separate "linux-modules-ipsec" package that isn't
> installed by default. People who use and need IPSEC will likely know
> that they need it, and can install it separately.
>
> I'm aware this doesn't come for free, and will add increased
> complexity to kernel packaging. But think about it like this: If we had
> that separation, three of the recent kernel local root exploits would've
> been much less impactful, and wouldn't have affected most systems.

Another option on x86 is to isolate drivers from the kernel, and make
drivers Ring 1 or RIng 2.  Leave the kernel to Ring 0, and userland to
Ring 3.  A compromised driver cannot get root, and remains isolated in
the system.

It works on x86 because there are two supervisor bits on x86, not one
like on the old DEC Alphas.

Jeff
