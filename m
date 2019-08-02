X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Friday" "2" "August" "2019" "07:35:09" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwXDrvMA_Mt_Rqzpq2RAqxfUaYwP0gEebS+sNW59i-2Yzg@mail.gmail.com>" "24" "[oss-security] [CVE-2019-10094] StackOverflow from Crafted Package/Compressed Files in Apache Tika's RecursiveParserWrapper" nil nil nil "8" "2019080211:35:09" "[oss-security] [CVE-2019-10094] StackOverflow from Crafted Package/Compressed Files in Apache Tika's RecursiveParserWrapper" (number mark "U       tallison@apa Aug  2   24/712   " thread-indent "\"[oss-security] [CVE-2019-10094] StackOverflow from Crafted Package/Compressed Files in Apache Tika's RecursiveParserWrapper\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10094] StackOverflow from Crafted Package/Compressed Files in Apache Tika's RecursiveParserWrapper" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23639 invoked by uid 550); 2 Aug 2019 11:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23570 invoked from network); 2 Aug 2019 11:35:33 -0000
X-Gm-Message-State: APjAAAUGApjHhsBbraoK9soPQ0ELjoNFHBQv9Ql0UNUD1NothyKNKFfi
	Zg26deZX4IyNVUmFadDemkR8cmuGvVMcMsFioJA=
X-Google-Smtp-Source: APXvYqxre6T+bArYSX4LLJY4hIcLp1DKmeGgwrw9CInHFds3SMKXX3lunl+0b2ajowfx43M+cYi9waW2zGkUBz20X2Q=
X-Received: by 2002:a25:2005:: with SMTP id g5mr82509906ybg.410.1564745720629;
 Fri, 02 Aug 2019 04:35:20 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Fri, 2 Aug 2019 07:35:09 -0400
X-Gmail-Original-Message-ID: <CAC1dCwXDrvMA_Mt_Rqzpq2RAqxfUaYwP0gEebS+sNW59i-2Yzg@mail.gmail.com>
Message-ID: <CAC1dCwXDrvMA_Mt_Rqzpq2RAqxfUaYwP0gEebS+sNW59i-2Yzg@mail.gmail.com>
To: dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, announce@apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-10094] StackOverflow from Crafted Package/Compressed Files
 in Apache Tika's RecursiveParserWrapper

Title: [CVE-2019-10094] StackOverflow from Crafted Package/Compressed
Files in Apache Tika's RecursiveParserWrapper

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.7 to 1.21

Description:
A carefully crafted package/compressed file that, when
unzipped/uncompressed yields the same file (a quine), causes a
StackOverflowError in Apache Tika's RecursiveParserWrapper in versions
1.7-1.21 of Apache Tika.


Mitigation:
Apache Tika users should upgrade to 1.22 or later.


Credit:
This issue was discovered by Tim Allison on the Apache Tika team. Many
thanks to Matthew Barber and Erling Ellingson for crafting examples
and contributing these files to Tika's unit tests.
