Received: (qmail 3811 invoked by uid 550); 2 Apr 2026 15:55:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30288 invoked from network); 2 Apr 2026 15:36:17 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775144163; bh=B436MJckMPjU17nEnOfe35CIZ8grRNbfERJof7U1Fd0=;
	h=From:Date:Subject:To:Cc:From;
	b=JXn9Lhmdhfe9YPCOeOB0v3zQ79HACun0YWANCY2EbVYxlxIAcNsF73rvvN8ijvsrn
	 shIwlo5QD9ffy+RN1pdnyNp7gl1nat0/+E7e87blyeIDeVkMPyeU2p68DjRTrX1+3+
	 b1mJkzepFNpFJBzIf0ZWrN3w13C74bpKLoKUYcPRmpOQ//fCbpFCrlD1NTsQVeoYcp
	 9OFMsxTJaLMhsIqcieKlsVhoItXgoKPsOEEyeihNU4ULQGm7BQZMe51CAeIHdX+lzp
	 YNBZH9BzQCM1F8qUXEjMHk4hWxZNkxSd4pyTqbmdXQf5R6kHTFRaLmEb2TEXg0M7+S
	 zuZbVI0UtmCFw==
X-Gm-Message-State: AOJu0Yxv53ONIszCwDyFVtZjl8pG2Dub5LExmX/uWUANxK34Bc/MGYfj
	CkF3SxM1C8tRXGREn4i+J6cjvcy21L/UOl7C6Nucbua2KAxrHPAT+hZDAo5ZuR4L7KyHGwdgfcA
	5npB7+IKUwHaSfpXYnDe7MNP+9CHlNGY=
X-Received: by 2002:a17:903:183:b0:2ae:aa16:acf7 with SMTP id
 d9443c01a7336-2b269c949b7mr80075925ad.40.1775144161796; Thu, 02 Apr 2026
 08:36:01 -0700 (PDT)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Thu, 2 Apr 2026 09:35:50 -0600
X-Gmail-Original-Message-ID: <CAGjw+kNQQdrjU3ypPr716M83omaoBT3+KsVxX8zMEDWPgsoLgQ@mail.gmail.com>
X-Gm-Features: AQROBzAKHjiU4T-7CdS8pclkuSRCdvilYUE_4tobHEIoFt4GKnpTOAsPpJ0KbuU
Message-ID: <CAGjw+kNQQdrjU3ypPr716M83omaoBT3+KsVxX8zMEDWPgsoLgQ@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000306c29064e7bf51a"
Subject: [oss-security] [ANNOUNCE] ATS is vulnerable to HTTP requests with body

--000000000000306c29064e7bf51a
Content-Type: text/plain; charset="UTF-8"

Description:
ATS is vulnerable to HTTP requests with body.

CVE:
CVE-2025-58136 - A simple legitimate POST request causes a crash
CVE-2025-65114 - Malformed chunked message body allows request smuggling

Reported By:
Masakazu Kitajo (CVE-2025-58136)
Katsutoshi Ikenoya (CVE-2025-65114)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.12
ATS 10.0.0 to 10.1.1

Mitigation:
9.x users should upgrade to 9.1.13 or later versions
10.x users should upgrade to 10.1.2 or later versions

For CVE-2025-58136, old version users
can set proxy.config.http.request_buffer_enabled to 0 (the default value is
0) to prevent the crash.
There is no workaround for CVE-2025-65114.

CVE:
https://www.cve.org/CVERecord?id=CVE-2025-58136
https://www.cve.org/CVERecord?id=CVE-2025-65114

--000000000000306c29064e7bf51a--
