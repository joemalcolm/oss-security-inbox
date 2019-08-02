X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["466" "Friday" "2" "August" "2019" "07:34:26" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwWXeiCT8i9S1LqX8V6bJTyn0frFbciJmQFczuMO9JPA-Q@mail.gmail.com>" "20" "[oss-security] [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and 2006ml Parsers" nil nil nil "8" "2019080211:34:26" "[oss-security] [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and 2006ml Parsers" (number mark "U       tallison@apa Aug  2   20/466   " thread-indent "\"[oss-security] [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and 2006ml Parsers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and 2006ml Parsers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17507 invoked by uid 550); 2 Aug 2019 11:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17421 invoked from network); 2 Aug 2019 11:34:49 -0000
X-Gm-Message-State: APjAAAUxUPkB+hztbCjYhm77TRzOe/kS3wjet2Yl0wHikfPTk+nSYves
	MGVChKC78GPNLD6/pWvY1vondHrQlcWrtBuL7z4=
X-Google-Smtp-Source: APXvYqwMcq44MYw7foQh0HkhnxRV8vjF+CiOtdQK7ZH0q1sJvVv0hSyMkG8Nfddiq3/O05wd4sIPfQP90SbhrFRQaeI=
X-Received: by 2002:a0d:db11:: with SMTP id d17mr83105516ywe.416.1564745676682;
 Fri, 02 Aug 2019 04:34:36 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Fri, 2 Aug 2019 07:34:26 -0400
X-Gmail-Original-Message-ID: <CAC1dCwWXeiCT8i9S1LqX8V6bJTyn0frFbciJmQFczuMO9JPA-Q@mail.gmail.com>
Message-ID: <CAC1dCwWXeiCT8i9S1LqX8V6bJTyn0frFbciJmQFczuMO9JPA-Q@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and 2006ml Parsers

Title: [CVE-2019-10093] Denial of Service in Apache Tika's 2003ml and
2006ml Parsers

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.19 to 1.21

Description:
A carefully crafted 2003ml or 2006ml file could consume all available
SAXParsers in the pool and lead to very long hangs.


Mitigation:
Apache Tika users should upgrade to 1.22 or later.


Credit:
This issue was discovered by Tim Allison on the Apache Tika team.
