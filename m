Received: (qmail 5273 invoked by uid 550); 29 Oct 2025 20:31:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3261 invoked from network); 29 Oct 2025 19:55:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761767742; x=1762372542; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8+GmAPxH2KVNl9sGZPJYUYGy3gOo0KML6riQh1k4Abw=;
        b=igDYJR9yU9B0U8WLkL0ZcrSv2CIJIpx/P+YJE79jXxg09Q7hc3dHTVYwKYomx7Lem0
         w9K+1vOsLRNM+dtQa7azpv5GCZ0YqYFj7BmYgp4BN0JtmS2UHaPrE0h1CAeC+9TIT6g4
         88vbzieNfqDnI7kf2CYdwrQWt3+YcCNA6sVWtpolzhzXTiqwgQsFBGoopGFvxRASt87l
         6Uduo3K/0u17o/ydHkJCRHVvp2QocgIXD4DUE0s/ZTSCTVVtAEO2C/mGYWdvCHVeO57U
         ql4q+/vQaQxEln75fxqQFdWD6eJESENgAKvD/9XWmGPPUYRBMFc0Z2phXvhwUBJmxQxN
         AX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761767742; x=1762372542;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+GmAPxH2KVNl9sGZPJYUYGy3gOo0KML6riQh1k4Abw=;
        b=ATpaesIyNGf+po6O/1O2kLBu4NhzrZKUsn0r+NzeqIlJN1cOxnvFWfT/lpstxV0nYo
         qc3Y643L+n7rSLP8/lDnF7A73rrAumRgVg5B6wWiLGWuP/g9G5GFU7reQ4Y5w15ABIT2
         eSwR7ZC3XH3eys4h8/XT3tFx1UrAF9DSEnHNTjhpSo/Qk9eXAsqB2z2jM/O2QEC61a12
         bstXwqbfOjo9R8Hyqmc2sjorWiNuXesTYTl0yAr5wbehrglejBerYXFbC9UjR0F3UgcG
         t3ySVV17We5MX03MrxYHyUW2PsrabYNeYh7nBv/EXUQk/RfUyzdNGc/CXGeset3uZTrr
         mIWg==
X-Gm-Message-State: AOJu0YyMUL+X8EjG+oxBriAHqEcybLOJimqLz4WetGJIsquuAVv7edVq
	duBTannNOsho59ev16qQte12oSYroyP59XBI/4AaOi5+iX9WwD0PnBeOxJEMfnzDOmw9TtogN36
	QCUGKQUWKlKSqyRkW0v3DFHV7g9dlOGuqKRZtJO0=
X-Gm-Gg: ASbGncvQr7xZqlTfz4lCI5vcvzXiJ5Pm2G8xEUuofzH+zsfAZ+rlHZfT4BJ4zxxhEz8
	gCVd8NxWGQnA2T8fSuOIrk9WeSE+pVud50F/+az4mtOHl03hrqtUhNbnOu37jUDNkB2P8/I2tTL
	NwjzwGwQQSGFuNOutfZImWb/UKChWWNZ/hgjvPXjnzLY+00I6ZbLpCwIUFAUwJEiZFi1R3NEBUk
	gPT2OOJC+pPwrHD+3t7MhocBsJi+Tg28HHqub1bVhVrGmZ9WepPmlkz7BHZLN7RtOhgQg==
X-Google-Smtp-Source: AGHT+IF6TH5JdCHh5KI7QPmhX/l2kVSWsEM3k5wXMhMatyE/TxvjSLj+b9PCE/KLaYo/9TKab2ag+gxrRVGg9P6L/iA=
X-Received: by 2002:a05:620a:2b4c:b0:867:454c:be7c with SMTP id
 af79cd13be357-8a8e436127emr597878185a.5.1761767741870; Wed, 29 Oct 2025
 12:55:41 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 29 Oct 2025 19:55:30 +0000
X-Gm-Features: AWmQ_bldELrlQZApr_PgRrxuV7-WE8AartWexY64LzaZeJ4AC_n4QK5RPH1PD74
Message-ID: <CAH5JyZo25yGTn9S2tc7TyXrh9q2Tuph0y2+Dc7FRVZb9Au2QJQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@airflow.apache.org, users@airflow.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-62402: Apache Airflow: Airflow 3 API: /api/v2/dagReports
 executes DAG Python in API

Severity: moderate

Affected versions:

- Apache Airflow (apache-airflow) >=3.0.0,<3.1.1

Description:

API users via `/api/v2/dagReports` could perform Dag code execution in
the context of the api-server if the api-server was deployed in the
environment where Dag files were available.

Credit:

kwkr (https://github.com/kwkr) (reporter)

References:

https://lists.apache.org/thread/vbzxnxn031wb998hsd7vqnvh4z8nx6rs
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-62402
