Received: (qmail 19897 invoked by uid 550); 7 Apr 2026 14:40:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30389 invoked from network); 7 Apr 2026 11:49:01 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775562530; bh=K2emg5TympipQQa57v8EbrDS7GhgOj6erlVufj2kAX8=;
	h=Reply-To:From:Date:Subject:To:From;
	b=LKDkGxf4mIhY6VNEc/Vosm7WwlhCUXgM4VBEZeO+Fgu+dzyZzwTzLdyapM/m01VEy
	 lOU7Ga0lBq6wrQS48aVtc31aPcXjHxhZDQ2ODArHx5BqacGcv4gSZ1P9ZWdKLybhK8
	 MNdCGWhr12eTksnV2h4z2JiOSS7tGxeq31OzVSYhLuLHu6eK47AWjqBzXcB5awkKjQ
	 CWxP21+7gf/xuIVNl9DxL222hSME3THSI5xWDtzt96MQvLX1L7yLzC682cGkSA0QRS
	 jPtKYw37aoEOgDdouCWythUs9+VepG0XHyjKG0QxABqQ6VajwIBmuBha79Os5ao2el
	 tA0zsxAf1RhrA==
X-Gm-Message-State: AOJu0YxJAok8Trh5FnO4ZPNObIJwhEt87LOLJcktuycb5Wds+RcC8Aiy
	NBXce4tqy9y2qTbVefbQrW+ENhcJZZjviFn+u6sE/67d2NCXC/Q0jX+kHj/p5Dedeg6cQVw+PYf
	avyNaxi24LnAds1tDbf45K0B0Qbp470g=
X-Received: by 2002:a05:6512:1381:b0:5a2:b0ba:7169 with SMTP id
 2adb3069b0e04-5a33758f26emr5904064e87.38.1775562530438; Tue, 07 Apr 2026
 04:48:50 -0700 (PDT)
MIME-Version: 1.0
From: Manikumar <manikumar@apache.org>
Date: Tue, 7 Apr 2026 17:18:36 +0530
X-Gmail-Original-Message-ID: <CAMVt_AyXVuh4RV5jQ0vs3vNKR5zDxWLvDjQRnmqhX+CcVkjTdA@mail.gmail.com>
X-Gm-Features: AQROBzA17MCXLRKzSgnZ4Yyl-1EWE70N1LIXSFwhbba5nZ61cHkBrJYGWRjbERc
Message-ID: <CAMVt_AyXVuh4RV5jQ0vs3vNKR5zDxWLvDjQRnmqhX+CcVkjTdA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e7438f064edd5d5b"
Subject: [oss-security] CVE-2026-35554: Apache Kafka Clients: Kafka Producer Message
 Corruption and Misrouting via Buffer Pool Race Condition

--000000000000e7438f064edd5d5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: moderate

Affected versions:

- Apache Kafka Clients (org.apache.kafka:kafka-clients) 2.8.0 through 3.9.1
- Apache Kafka Clients (org.apache.kafka:kafka-clients) 4.0.0 through 4.0.1
- Apache Kafka Clients (org.apache.kafka:kafka-clients) 4.1.0 through 4.1.1

Description:

A race condition in the Apache Kafka Java producer client=E2=80=99s buffer
pool management can cause messages to be silently delivered to
incorrect topics.

When a produce batch expires due to delivery.timeout.ms while a
network request containing that batch is still in flight, the batch=E2=80=
=99s
ByteBuffer is prematurely deallocated and returned to the buffer pool.
If a subsequent producer batch=E2=80=94potentially destined for a different
topic=E2=80=94reuses this freed buffer before the original network request
completes, the buffer contents may become corrupted. This can result
in messages being delivered to unintended topics without any error
being reported to the producer.


Data Confidentiality:
Messages intended for one topic may be delivered to a different topic,
potentially exposing sensitive data to consumers who have access to
the destination topic but not the intended source topic.

Data Integrity:
Consumers on the receiving topic may encounter unexpected or
incompatible messages, leading to deserialization failures, processing
errors, and corrupted downstream data.

This issue affects Apache Kafka versions =E2=89=A4 3.9.1, =E2=89=A4 4.0.1, =
and  =E2=89=A4 4.1.1.

Kafka users are advised to upgrade to 3.9.2, 4.0.2, 4.1.2, 4.2.0, or
later to address this vulnerability.

Credit:

Bharath Vissapragada <bharathv@apache.org> (reporter)
Donny Nadolny <donny.nadolny@hotmail.com> (finder)
Donny Nadolny <donny.nadolny@hotmail.com> (remediation developer)

References:
https://issues.apache.org/jira/browse/KAFKA-19012https://kafka.apache.org/c=
ommunity/cve-listhttps://www.cve.org/CVERecord?id=3DCVE-2026-35554

--000000000000e7438f064edd5d5b--
