Received: (qmail 19939 invoked by uid 550); 18 Dec 2024 15:10:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7953 invoked from network); 18 Dec 2024 13:23:10 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YzJtD+9VsfV59Kn5QD9zBRKRIDursG9A7YyG39PV+n4yyLohEE6
	wSnGMhYOploEW64G8MEIJda7IUBch2ONzxt3Z2E/UI8yCIVSmkOZc4M7v9X9Dt91zNbab1v6KfW
	mneNGtOS5M7H3yVUY1x6OCe2YHLI=
X-Google-Smtp-Source: AGHT+IGY2QPgA/IgxaDNEMhE1eRJSfOhc9K8+au2h8hjzNuvy+/OpuIX6O65jo/bD5gDbv97UJk7C3GbgBoDjHJYpMg=
X-Received: by 2002:a05:6512:15a8:b0:540:2f1e:90e9 with SMTP id
 2adb3069b0e04-541f46cc1eamr951131e87.54.1734528178124; Wed, 18 Dec 2024
 05:22:58 -0800 (PST)
MIME-Version: 1.0
From: Manikumar <manikumar@apache.org>
Date: Wed, 18 Dec 2024 18:52:45 +0530
X-Gmail-Original-Message-ID: <CAMVt_AwsEegeGHs7S8kEUxyyik1udHOyto+7-R6THm3X8=yfog@mail.gmail.com>
Message-ID: <CAMVt_AwsEegeGHs7S8kEUxyyik1udHOyto+7-R6THm3X8=yfog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e906c506298b4fbc"
Subject: [oss-security] CVE-2024-56128: Apache Kafka: SCRAM authentication vulnerable to
 replay attacks when used without encryption

--000000000000e906c506298b4fbc
Content-Type: text/plain; charset="UTF-8"

Severity: low

Affected versions:

- Apache Kafka 0.10.2.0 before 3.7.2
- Apache Kafka 3.8.0

Description:

Incorrect Implementation of Authentication Algorithm in Apache Kafka's
SCRAM implementation.

Issue Summary:
Apache Kafka's implementation of the Salted Challenge Response
Authentication Mechanism (SCRAM) did not fully adhere to the
requirements of RFC 5802 [1].
Specifically, as per RFC 5802, the server must verify that the nonce
sent by the client in the second message matches the nonce sent by the
server in its first message.
However, Kafka's SCRAM implementation did not perform this validation.

Impact:
This vulnerability is exploitable only when an attacker has plaintext
access to the SCRAM authentication exchange. However, the usage of
SCRAM over plaintext is strongly
discouraged as it is considered an insecure practice [2]. Apache Kafka
recommends deploying SCRAM exclusively with TLS encryption to protect
SCRAM exchanges from interception [3].
Deployments using SCRAM with TLS are not affected by this issue.

How to Detect If You Are Impacted:
If your deployment uses SCRAM authentication over plaintext
communication channels (without TLS encryption), you are likely
impacted.
To check if TLS is enabled, review your server.properties
configuration file for listeners property. If you have SASL_PLAINTEXT
in the listeners, then you are likely impacted.

Fix Details:
The issue has been addressed by introducing nonce verification in the
final message of the SCRAM authentication exchange to ensure
compliance with RFC 5802.

Affected Versions:
Apache Kafka versions 0.10.2.0 through 3.9.0, excluding the fixed
versions below.

Fixed Versions:
3.9.0
3.8.1
3.7.2

Users are advised to upgrade to 3.7.2 or later to mitigate this issue.

Recommendations for Mitigation:
Users unable to upgrade to the fixed versions can mitigate the issue by:
- Using TLS with SCRAM Authentication:
Always deploy SCRAM over TLS to encrypt authentication exchanges and
protect against interception.
- Considering Alternative Authentication Mechanisms:
Evaluate alternative authentication mechanisms, such as PLAIN,
Kerberos or OAuth with TLS, which provide additional layers of
security.

Credit:

Tim Fox (timvolpe@gmail.com) (finder)
Vikas Singh <vikas@confluent.io> (remediation developer)

References:
https://datatracker.ietf.org/doc/html/rfc5802https://datatracker.ietf.org/doc/html/rfc5802#section-9https://kafka.apache.org/documentation/#security_sasl_scram_securityhttps://kafka.apache.org/https://www.cve.org/CVERecord?id=CVE-2024-56128

--000000000000e906c506298b4fbc--
