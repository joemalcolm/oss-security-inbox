Received: (qmail 1953 invoked by uid 550); 25 Jul 2024 16:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11495 invoked from network); 25 Jul 2024 16:03:57 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YyDWHZ0qnNooO0hUxI/h8ntH6VwJiXSyeiZHFEvkxNcKylNy2KL
	MOxicbpQQxZokZjb7Ro0hPunlrK5GxoBc1bzyzVAX7mlqxxGCcLtKVg3dxFLZT240P31/ZQPNJ9
	KdjucHyZUbZlqsNZ0a/+ByAw9S4s=
X-Google-Smtp-Source: AGHT+IH5NrEEVpElpuErQBmt7oV8EEQ4gAngyD6E4NP+YtO7im1r+BIzebCXg64LurVfBZSVaIcF5Z90Cw08TK7yihE=
X-Received: by 2002:a0d:cdc4:0:b0:650:9799:41d2 with SMTP id
 00721157ae682-675b9b600c9mr26032697b3.30.1721923285916; Thu, 25 Jul 2024
 09:01:25 -0700 (PDT)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Thu, 25 Jul 2024 10:01:15 -0600
X-Gmail-Original-Message-ID: <CAGjw+kOARWH4mWz_RKe=oeSOkBZgfsUjTp2hM3X7FngdCaFc9w@mail.gmail.com>
Message-ID: <CAGjw+kOARWH4mWz_RKe=oeSOkBZgfsUjTp2hM3X7FngdCaFc9w@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c9aad3061e1481a8"
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server is vulnerable to request smuggling
 and DoS

--000000000000c9aad3061e1481a8
Content-Type: text/plain; charset="UTF-8"

Description:
Apache Traffic Server is vulnerable to request smuggling and DoS

CVE:
CVE-2023-38522 - Incomplete field name check allows request smuggling
CVE-2024-35161 - Incomplete check for chunked trailer section allows
request smuggling
CVE-2024-35296 - Invalid Accept-Encoding can force forwarding requests

Reported By:
Ben Kallus (CVE-2023-38522)
Keran Mu (CVE-2024-35161)
Min Chen (CVE-2024-35296)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 8.0.0 to 8.1.10
ATS 9.0.0 to 9.2.4

Mitigation:
8.x users should upgrade to 8.1.11 or later versions
9.x users should upgrade to 9.2.5 or later versions

CVE:
https://www.cve.org/CVERecord?id=CVE-2023-38522
https://www.cve.org/CVERecord?id=CVE-2024-35161
https://www.cve.org/CVERecord?id=CVE-2024-35296

-- Masakazu

--000000000000c9aad3061e1481a8--
