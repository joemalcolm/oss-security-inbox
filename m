X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["438" "Wednesday" "19" "September" "2018" "08:49:50" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwVOEYsB1c4s2DYkhsafT8q3Fupt_OFugXj9J1RCZuf3UQ@mail.gmail.com>" "20" "[oss-security] [CVE-2018-8017] Apache Tika Denial of Service Vulnerability -- Potential Infinite Loop in IptcAnpaParser" nil nil nil "9" "2018091912:49:50" "[oss-security] [CVE-2018-8017] Apache Tika Denial of Service Vulnerability -- Potential Infinite Loop in IptcAnpaParser" (number mark "U       tallison@apa Sep 19   20/438   " thread-indent "\"[oss-security] [CVE-2018-8017] Apache Tika Denial of Service Vulnerability -- Potential Infinite Loop in IptcAnpaParser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27774 invoked by uid 550); 19 Sep 2018 12:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27744 invoked from network); 19 Sep 2018 12:50:15 -0000
X-Gm-Message-State: APzg51AyN4yGly3y4S3T0e5K8zDV8+IBq7Yijqtg7qFJdsqbq2XVzXXv
	6+F1/3reG6OSEwSQPMalxtkIQBUUmOSRbLaRUt8=
X-Google-Smtp-Source: ANB0VdZiewzBXKD3TGGJXUYbDoxjI1/1klqrcK52+Xrr7+2Yybu6H9i6+RdLGMAF3pV5EITq385cRmNQT42JliiV060=
X-Received: by 2002:a81:d10a:: with SMTP id w10-v6mr14405370ywi.214.1537361401868;
 Wed, 19 Sep 2018 05:50:01 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 19 Sep 2018 08:49:50 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVOEYsB1c4s2DYkhsafT8q3Fupt_OFugXj9J1RCZuf3UQ@mail.gmail.com>
Message-ID: <CAC1dCwVOEYsB1c4s2DYkhsafT8q3Fupt_OFugXj9J1RCZuf3UQ@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-8017] Apache Tika Denial of Service Vulnerability --
 Potential Infinite Loop in IptcAnpaParser

CVE-2018-8017: Apache Tika Denial of Service Vulnerability --
Potential Infinite Loop in IptcAnpaParser

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 1.2 to 1.18

Description:
A carefully crafted file can trigger an infinite loop in Apache Tika's
IptcAnpaParser.

Mitigation:
Apache Tika users should upgrade to 1.19 or later.

Credit:
This issue was discovered by Tobias Ospelt of modzero AG.
