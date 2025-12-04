Received: (qmail 26032 invoked by uid 550); 4 Dec 2025 14:18:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25979 invoked from network); 4 Dec 2025 14:18:17 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1764857883; bh=4pztwgI+E0QIstt19T26cuRJ0jsjGhQRevFpORCVVo4=;
	h=Reply-To:From:Date:Subject:To:From;
	b=viguvjrR4XI9D1dYh7nSdRKTrzWqjMMZvTpG4UyKpAg9LNO3rArsKCxKBTbfN2ac6
	 ROxHotCG3jLg8ZYqnuboK+d4afrRINe56eOruc9M0tynypEYJhiaJJiFUhoZDSjOhz
	 0AaBaPhv0zYOZyPO0Gns7MIIPhJmDzQvbbk6c5drNLNl54lgS2w3YyRZ1rBQUGBIX2
	 LDjtvb8LECp7hxE5HodSUwGghbC57RoHTB15bTCrxCvQWFWTZjvlD1rxN3/4ISgRnI
	 0mWE6zriVREV3d0YmIECZYS15NxgQc392+J1bWP2p3YnSJKX1EZZUp2DBSFGThAuKP
	 TI6GdcRKDufZQ==
X-Gm-Message-State: AOJu0YxxBgX7AF0BZRKcIHVM6/yZfGGjAf+ZeayUTSjLZ6sE9Wdw02e+
	cxsDn8y/Yv65MquEe3MREAdzeCsVVO+kJ3B84WwdKFfqjKNM47kF2k/f9DbtQ18B7FbYXzNXNgB
	xB42x/U/zPk5lNdUIhnYm8DgVeTf8mdE=
X-Google-Smtp-Source: AGHT+IEyT+c7FHKRXPVLcUjGAGRQItMjgioR7PJEouDnlbxKKb0GXIJfm1yVQXQXL6aCy1ztqffOCcsgW5fiLLZJ3HQ=
X-Received: by 2002:a05:6830:90b:b0:7ae:56f2:c2c5 with SMTP id
 46e09a7af769-7c94dc36922mr4626321a34.28.1764857882535; Thu, 04 Dec 2025
 06:18:02 -0800 (PST)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Thu, 4 Dec 2025 09:17:51 -0500
X-Gmail-Original-Message-ID: <CAC1dCwVoAupJOsAvm+e43ybrsrsZUcDjQqq7PCJD3p6XjeyVDg@mail.gmail.com>
X-Gm-Features: AWmQ_bmSfs7pCwm-jbQpqVc4fCHfKWg1sCJ3ugciXibQ-xNLwqAah8r1_Pa_ggI
Message-ID: <CAC1dCwVoAupJOsAvm+e43ybrsrsZUcDjQqq7PCJD3p6XjeyVDg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-66516: Apache Tika core, Apache Tika parsers, Apache Tika
 PDF parser module: Update to CVE-2025-54988 to expand scope of artifacts affected

Severity: critical

Affected versions:

- Apache Tika core (org.apache.tika:tika-core) 1.13 through 3.2.1
- Apache Tika parsers (org.apache.tika:tika-parsers) 1.13 before 2.0.0
- Apache Tika PDF parser module
(org.apache.tika:tika-parser-pdf-module) 2.0.0 through 3.2.1

Description:

Critical XXE in Apache Tika tika-core (1.13-3.2.1), tika-pdf-module
(2.0.0-3.2.1) and tika-parsers (1.13-1.28.5) modules on all platforms
allows an attacker to carry out XML External Entity injection via a
crafted XFA file inside of a PDF.

This CVE covers the same vulnerability as in CVE-2025-54988. However,
this CVE expands the scope of affected packages in two ways.

First, while the entrypoint for the vulnerability was the
tika-parser-pdf-module as reported in CVE-2025-54988, the
vulnerability and its fix were in tika-core. Users who upgraded the
tika-parser-pdf-module but did not upgrade tika-core to >= 3.2.2 would
still be vulnerable.

Second, the original report failed to mention that in the 1.x Tika
releases, the PDFParser was in the "org.apache.tika:tika-parsers"
module.

References:

https://tika.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66516
