Received: (qmail 4066 invoked by uid 550); 22 Apr 2024 13:29:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32138 invoked from network); 22 Apr 2024 07:42:35 -0000
Authentication-Results: apache.org; auth=none
X-Forwarded-Encrypted: i=1; AJvYcCUPrkjN88Hm7bPhOFuFHuAOKUsR536lnaR5eXknIGqZkCjhslCcgqXsEGPiKtlvEQO6RgwIEKv8iX2GUvz2ZNTYlRqtkzWVOw2dPuKbvhzy
X-Gm-Message-State: AOJu0Ywdf0SYKbdEl3miWyouZezyTfEzMMV+ywBOj3u8KtLzpVZbAh0J
	LUMtun8wl9rKtYSlETqPlJEQJTFLC1GG6p2+LrMxCGTN6p71qgoyTGG0yDI9C+9aOVokPU9HvzV
	TqkoTrPwgGxsrPRKeBo+/qh4r3vQ=
X-Google-Smtp-Source: AGHT+IHlRASX1Ssjo7AECm9RRdl9DBMEooJyJRTLlzXoUOp3CY9bek0UVSwfuVSPfijl8VdN3iREzCApnORf2xECGbQ=
X-Received: by 2002:ad4:4485:0:b0:6a0:6eb3:6b6b with SMTP id
 m5-20020ad44485000000b006a06eb36b6bmr6790533qvt.46.1713771744317; Mon, 22 Apr
 2024 00:42:24 -0700 (PDT)
MIME-Version: 1.0
From: Imba Jin <jin@apache.org>
Date: Mon, 22 Apr 2024 15:42:13 +0800
X-Gmail-Original-Message-ID: <CA+th4MKQcZ593FOArcC99mtw8ZzQ66ix03a_-KBLYFkQ+ph+mA@mail.gmail.com>
Message-ID: <CA+th4MKQcZ593FOArcC99mtw8ZzQ66ix03a_-KBLYFkQ+ph+mA@mail.gmail.com>
To: dev@hugegraph.apache.org, announce@apache.org, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-27349: Apache HugeGraph-Server: Bypass whitelist in Auth mode

Severity: critical

Affected versions:

- Apache HugeGraph-Server 1.0.0 before 1.3.0

Description:

Authentication Bypass by Spoofing vulnerability in Apache
HugeGraph-Server.This issue affects Apache HugeGraph-Server: from
1.0.0 before 1.3.0.

Users are recommended to upgrade to version 1.3.0, which fixes the issue.

(Also you could enable the "Whitelist-IP/port" function to improve the
security of RESTful-API execution)

Credit:

6right of moresec (reporter)

References:
https://hugegraph.apache.org/docs/download/download/
https://hugegraph.apache.org/docs/guides/security/
https://www.cve.org/CVERecord?id=CVE-2024-27349
