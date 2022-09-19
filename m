Received: (qmail 3890 invoked by uid 550); 19 Sep 2022 16:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22226 invoked from network); 19 Sep 2022 15:55:05 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf39zrw0fcMpjz+w0YuFKYdK72XYWg5h237NiMTfaqANvA2frxM0
	9hp9Wp4yojJadXW/Ki0bdzPd4hLSaqLnCtngmnQ=
X-Google-Smtp-Source: AMsMyM6NNEposX4M42K0sONXfrC94jaKtd9UzR2dGSr/5aogpHeVghKM7rUkHvPUU1jJqK4CJYk8Tia8QcchjmMh20Q=
X-Received: by 2002:a17:907:16a5:b0:77c:e0f0:1f25 with SMTP id
 hc37-20020a17090716a500b0077ce0f01f25mr13092382ejc.217.1663602821754; Mon, 19
 Sep 2022 08:53:41 -0700 (PDT)
MIME-Version: 1.0
From: Manikumar <manikumar@apache.org>
Date: Mon, 19 Sep 2022 21:23:30 +0530
X-Gmail-Original-Message-ID: <CAMVt_AwSgbSxwUZ4kjyM6j399HvRaQgjt-bPAruSu3cpQ1vm-w@mail.gmail.com>
Message-ID: <CAMVt_AwSgbSxwUZ4kjyM6j399HvRaQgjt-bPAruSu3cpQ1vm-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev <dev@kafka.apache.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-34917: Unauthenticated clients may cause OutOfMemoryError on
 Apache Kafka Brokers

Severity: High

Description:

A security vulnerability has been identified in Apache Kafka. It
affects all releases since 2.8.0. The vulnerability allows malicious
unauthenticated clients to allocate large amounts of memory on
brokers. This can lead to brokers hitting OutOfMemoryException and
causing denial of service.

Example scenarios:
- Kafka cluster without authentication: Any clients able to establish
a network connection to a broker can trigger the issue.
- Kafka cluster with SASL authentication: Any clients able to
establish a network connection to a broker, without the need for valid
SASL credentials, can trigger the issue.
- Kafka cluster with TLS authentication: Only clients able to
successfully authenticate via TLS can trigger the issue.

We advise the users to upgrade the Kafka installations to one of the
3.2.3, 3.1.2, 3.0.2, 2.8.2 versions.

Credit:

Apache Kafka would like to thank Mickael Maison, Tom Bentley and
Daniel Collins for reporting this issue.

References:

https://kafka.apache.org/cve-list
