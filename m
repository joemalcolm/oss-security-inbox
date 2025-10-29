Received: (qmail 5901 invoked by uid 550); 29 Oct 2025 20:31:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17461 invoked from network); 29 Oct 2025 20:18:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761769074; x=1762373874; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=scVFuao9gxmRGmZbquoyrs64hs33BqY2rSxV71VaPI0=;
        b=mBxPj2XlQspjw6AB3M6Et1FymoLOU9Qf1gFbp7uBT5coMgsA+A2p7WUdkaHZ08N8rQ
         w7NP7ESPoxoupTa1LXuL8AaW7V7fSeRtXtl/VsJUwSKvi+uWMpIV0l/QhQW3SdoVW0N0
         nvkZ86Kh8Rmb1V6wOKyAwen0624dG2PRnG95JyMelNHf9wbs/986D3G2IHjpiMhc/Pmd
         Zf5yTPav343gE2gMBI987vRDDz7ikUjxhQAh+LRR+u/sxpwiOwm/HXu/0wUmFLDRdtDr
         oUiPB8K5NraVGpVwUbtGIxVC0BwgXC+HaW/81n6hRMFkye3nnz51zFqrExauIsGTu1B2
         XGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761769074; x=1762373874;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scVFuao9gxmRGmZbquoyrs64hs33BqY2rSxV71VaPI0=;
        b=mHSJ6LtNDZL26X0IG3cUbW54POBkLx6Qh6ufFhIEXHhv2Yk5eK75sox0Fv49CMieEh
         w/RhgyfGuB5gufgBJGwLMS2wgRBNpXXm1Sw+xrt28tUSqK5wKLDAZlbKxOif4Ucl4BNZ
         bO2be4zUv/s9xZ9VAwF5+9iMOh0y8HIQr76pAdNSO319DsxYWVa62JLJig8A2XyEsa5P
         7N0AfcGlnElLiM9QabwRH3/KTTbu+/4oXjRIToIPxwjTe3OS7POJ0yn+FilfF6nzioXM
         WDrfD62E2POoKx1pNxwyPil7ct2b55RRx46mSUIJKIiAjRtVsot6nSoqp+DbEab/nmdv
         6ZoQ==
X-Gm-Message-State: AOJu0Ywukp366BlEGpAQU2+Us+XXJajo0bWsEDRZpcQKN3yfQJvE1a2M
	287NaZwcNoSFXKBCc6VKaQemu782QyOxcClYuH/5XZ7pKYhTgqofSC2JMzz+ttJYWoaSA/s4u55
	lFxx527hRM0FvfzqnpUT6lYfv0gSRPy7v7yR2wR0=
X-Gm-Gg: ASbGncsloSBwQLN5SjOvznMRwBj9j2IJB/YsaAJCiTipBl4aEAB5yc8J8t5Zi8w7W1X
	90LXMsNybQXneXlXSRL23kkuPAUqITFx0LNvFhzoPfc7YjJCWZAdeTr5QX9xIRVf7suX57c0xLH
	avyS9Hm6kirOJTZuZ8fN7Y4nF/JVu5MKOKpvE0CDs3TnBhK2a8JqS/DAmPDmy6WVbDVL5jPbD50
	uFYxajVwa9pOF4WQgWBCuQyDFillIP5ioLhq26N9hRtMabcmz6vzq4btKw=
X-Google-Smtp-Source: AGHT+IGGdjAqRDZZhx7fvet9c1wXC+MsXZa+YMoy3I/BW1sPJxLiXOdcFvPDVkrWYghPs0fQkXFT88So5UDTxYISxJ8=
X-Received: by 2002:a05:620a:2902:b0:8a1:b435:984a with SMTP id
 af79cd13be357-8a8e5ba1908mr615406985a.69.1761769074052; Wed, 29 Oct 2025
 13:17:54 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 29 Oct 2025 20:17:42 +0000
X-Gm-Features: AWmQ_bnHeAreQJvdkicUfuIX3DM9G_TRWzo13GUoatQ8Xn_fBsVpxoOfBULy1dk
Message-ID: <CAH5JyZp6v8xv3LvOGG0VG5tc7FAexPEu3cULqKv8Bjnk_Fc+=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org, dev@airflow.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-62503: Apache Airflow: Privilege boundary bypass in bulk
 APIs (create action can upsert existing Pools/Connections/Variables)

Severity: low

Affected versions:

- Apache Airflow (apache-airflow> 3.0.0, < 3.1.1) 3.0.0 before 3.1.1

Description:

User with CREATE and no UPDATE privilege for Pools, Connections,
Variables could update existing records via bulk create API with
overwrite action.

Credit:

Maciej Kawka (finder)

References:

https://lists.apache.org/thread/3v58249qscyn1hg240gh8hqg9pb4okcr
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-62503
