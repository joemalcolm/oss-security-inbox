X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["487" "Saturday" "22" "December" "2018" "10:28:14" "-0500" "Tim Allison" "tallison@apache.org" "<CAC1dCwWhYmbkxAvFKgGSFd_ffp5EeCimB2gBXTo+9-F7v6TSNQ@mail.gmail.com>" "20" "[oss-security] [CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in Tika's SQLite3Parser" nil nil nil "12" "2018122215:28:14" "[oss-security] [CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in Tika's SQLite3Parser" (number mark "U       tallison@apa Dec 22   20/487   " thread-indent "\"[oss-security] [CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in Tika's SQLite3Parser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21754 invoked by uid 550); 22 Dec 2018 15:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21736 invoked from network); 22 Dec 2018 15:28:39 -0000
X-Gm-Message-State: AA+aEWb+7FDQ9fBlc03mS8H4VpSw/MdhaRxYkaVQQIl77dBHkc89v/U0
	UMACyMAnfaL9veCMQAfe+GU9GwgBYjnRwjaWhaE=
X-Google-Smtp-Source: AFSGD/ViRmaZovuR78U2bwTbD3OryInI3Kvrzyo/ROJiNTU+9dzyh/5uqW+EdrDDo5ACS8WTFtoOAan8fkvky340/e4=
X-Received: by 2002:a81:63d4:: with SMTP id x203mr6562471ywb.82.1545492504743;
 Sat, 22 Dec 2018 07:28:24 -0800 (PST)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Sat, 22 Dec 2018 10:28:14 -0500
X-Gmail-Original-Message-ID: <CAC1dCwWhYmbkxAvFKgGSFd_ffp5EeCimB2gBXTo+9-F7v6TSNQ@mail.gmail.com>
Message-ID: <CAC1dCwWhYmbkxAvFKgGSFd_ffp5EeCimB2gBXTo+9-F7v6TSNQ@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in
 Tika's SQLite3Parser

[CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in
Tika's SQLite3Parser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika 1.8 to 1.19.1

Description:
A carefully crafted or corrupt sqlite file can cause an infinite loop
in Apache Tika's SQLite3Parser in versions 1.8-1.19.1 of Apache Tika.


Mitigation:
Apache Tika users should upgrade to 1.20 or later.


Credit:
This issue was discovered by Tim Allison on the Apache Tika Team.
