X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Friday" "2" "August" "2019" "07:33:38" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwXdKaJiiOgt7YD79eB5muo2UE1kFe7kGFjpWhU+kipcJg@mail.gmail.com>" "20" "[oss-security] [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's RecursiveParserWrapper" nil nil nil "8" "2019080211:33:38" "[oss-security] [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's RecursiveParserWrapper" (number mark "U       tallison@apa Aug  2   20/446   " thread-indent "\"[oss-security] [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's RecursiveParserWrapper\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's RecursiveParserWrapper" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9721 invoked by uid 550); 2 Aug 2019 11:34:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9695 invoked from network); 2 Aug 2019 11:34:02 -0000
X-Gm-Message-State: APjAAAWM23sNUYlhf4bO4ZZdVWLJ9ipHgcVl3aDsHFYPwa++lvY8YDN4
	U84tixxqdlMzFnegIqoHEk89A2LDF82RqcPIKHk=
X-Google-Smtp-Source: APXvYqyqLBfeghl8qL83sey+NyxFyh22499ZsEqjKzfIFPZ0Qh3OlV8lTnmmPbfe1aWPeiU/hgrtMUmBtVQAQI3T5Vk=
X-Received: by 2002:a81:8706:: with SMTP id x6mr81034242ywf.512.1564745629325;
 Fri, 02 Aug 2019 04:33:49 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Fri, 2 Aug 2019 07:33:38 -0400
X-Gmail-Original-Message-ID: <CAC1dCwXdKaJiiOgt7YD79eB5muo2UE1kFe7kGFjpWhU+kipcJg@mail.gmail.com>
Message-ID: <CAC1dCwXdKaJiiOgt7YD79eB5muo2UE1kFe7kGFjpWhU+kipcJg@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's RecursiveParserWrapper

Title: [CVE-2019-10088] OOM from a crafted Zip File in Apache Tika's
RecursiveParserWrapper

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.7 to 1.21

Description:
A carefully crafted or corrupt zip file can cause an OOM in Apache
Tika's RecursiveParserWrapper in versions 1.7-1.21.


Mitigation:
Apache Tika users should upgrade to 1.22 or later.


Credit:
This issue was discovered by RunningSnail.
