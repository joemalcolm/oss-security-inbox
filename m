Received: (qmail 21533 invoked by uid 550); 23 Dec 2024 15:57:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23840 invoked from network); 23 Dec 2024 14:34:43 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yy0zz6+Yqeftkv3NhH2CCjp4VNr7WdsLTBhTDdrq1J/XugNReRt
	MYpssvRzWdpTygbTTpgqv6FivWuKfXCEpHC04cKQWEtQYj9KCfeBcK8V3GXTqlV2ljv5F92Axru
	vPv2rCw//X1zmiDfSITI7DaEQxDY=
X-Google-Smtp-Source: AGHT+IFwpAxpNnf7oJ6Ek4N+5Vtud9pRsFgw0ntH8e9y9/F0tLx3ezzLFFIyjwpplDy2l0iTXJMALZUq8SdOewg4sHM=
X-Received: by 2002:a05:6402:2805:b0:5d0:bcdd:ffa1 with SMTP id
 4fb4d7f45d1cf-5d81dd66e5fmr12029452a12.2.1734964386342; Mon, 23 Dec 2024
 06:33:06 -0800 (PST)
MIME-Version: 1.0
From: Stamatis Zampetakis <zabetak@apache.org>
Date: Mon, 23 Dec 2024 15:32:55 +0100
X-Gmail-Original-Message-ID: <CAFQnWdYMsAR7PXSYRBn_jfcLfV-XYDoWAauBKaxJQrjfyBpNjQ@mail.gmail.com>
Message-ID: <CAFQnWdYMsAR7PXSYRBn_jfcLfV-XYDoWAauBKaxJQrjfyBpNjQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2024-23945: Apache Hive and Spark: CookieSigner exposes the
 correct signature when message verification fails

Severity: important

Affected versions:

- Apache Hive 1.2.0 before 4.0.0
- Apache Spark 2.0.0 before 3.0.0
- Apache Spark 3.0.0 before 3.3.4
- Apache Spark 3.4.0 before 3.4.2
- Apache Spark 3.5.0

Description:

Signing cookies is an application security feature that adds a digital
signature to cookie data to verify its authenticity and integrity. The
signature helps prevent malicious actors from modifying the cookie
value, which can lead to security vulnerabilities and exploitation.
Apache Hive=E2=80=99s service component accidentally exposes the signed coo=
kie
to the end user when there is a mismatch in signature between the
current and expected cookie. Exposing the correct cookie signature can
lead to further exploitation.

The vulnerable CookieSigner logic was introduced in Apache Hive by
HIVE-9710 (1.2.0) and in Apache Spark by SPARK-14987 (2.0.0). The
affected components are the following:
* org.apache.hive:hive-service
* org.apache.spark:spark-hive-thriftserver_2.11
* org.apache.spark:spark-hive-thriftserver_2.12

Credit:

Kostya Kortchinsky (reporter)
Hamza Tahmi (reporter)

References:

https://github.com/apache/hive
https://github.com/apache/spark
https://github.com/apache/spark/commit/cf59b1f51c16301f689b4e0f17ba4dbd140e=
1b19
https://github.com/apache/hive/commit/7638cb1a3b07713cc490aa2909a37037f89e0=
8b4
https://issues.apache.org/jira/browse/HIVE-9710
https://issues.apache.org/jira/browse/SPARK-14987
https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23945
