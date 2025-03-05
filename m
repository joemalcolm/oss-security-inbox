Received: (qmail 14169 invoked by uid 550); 5 Mar 2025 17:10:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17742 invoked from network); 5 Mar 2025 16:32:55 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxcctBiekWK1U9iFddIb5X3JdWgmKLG3uXsqxAFXmWz3bg3wVMW
	7ETvwh/83h3FxGD0zD2s2Hm2ZSjOV3/mvYCHuw+728nYCtWf6WTjzisL6FqLo3vUlbw+J0e7BNB
	bEhg5BkA9KZFMbv//hNhNaXVglHo=
X-Google-Smtp-Source: AGHT+IHcBV05g+ui5meRGfqTVe2OF4FuTBoukwSMW55Irkrsv+Y1HiemUnPBeqbt1Z2kyZqaBAmqWAsrgR8hMiLoH2I=
X-Received: by 2002:a05:690c:c09:b0:6fb:9b19:ab49 with SMTP id
 00721157ae682-6fda2f06b7dmr61255657b3.6.1741192365408; Wed, 05 Mar 2025
 08:32:45 -0800 (PST)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Wed, 5 Mar 2025 09:32:34 -0700
X-Gmail-Original-Message-ID: <CAGjw+kNNvuHh5jUMGMFJO+dejLHZ0Ygufxkrfz8QJNWL_D3Gig@mail.gmail.com>
X-Gm-Features: AQ5f1JpxTTuR6JbPR_sAnNbTCJD0QPN_uBBjprPmbkNi4NihQg2TjjbNuFDtfIM
Message-ID: <CAGjw+kNNvuHh5jUMGMFJO+dejLHZ0Ygufxkrfz8QJNWL_D3Gig@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006d10dc062f9af028"
Subject: [oss-security] [ANNOUNCE] ATS is vulnerable to malformed requests, and also has ACL issues

--0000000000006d10dc062f9af028
Content-Type: text/plain; charset="UTF-8"

Description:
ATS is vulnerable to malformed requests, and also has ACL issues

CVE:
CVE-2024-38311 - Request smuggling via pipelining after a chunked message
body
CVE-2024-56195 - Intercept plugins are not access controlled
CVE-2024-56196 - ACL is not fully compatible with older versions
CVE-2024-56202 - Expect header field can unreasonably retain resource

Reported By:
Ben Kallus (CVE-2024-38311)
Masaori Koshiba (CVE-2024-56195)
Chris McFarlen (CVE-2024-56196)
David Carlin (CVE-2024-56202)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.8 (CVE-2024-38311, CVE-2024-56195, CVE-2024-56202)
ATS 10.0.0 to 10.0.3 (CVE-2024-38311, CVE-2024-56195, CVE-2024-56196,
CVE-2024-56202)

Mitigation:
9.x users should upgrade to 9.2.9 or later versions
10.x users should upgrade to 10.0.4 or later versions

CVE:
https://www.cve.org/CVERecord?id=CVE-2024-38311
https://www.cve.org/CVERecord?id=CVE-2024-56195
https://www.cve.org/CVERecord?id=CVE-2024-56196
https://www.cve.org/CVERecord?id=CVE-2024-56202

--0000000000006d10dc062f9af028--
