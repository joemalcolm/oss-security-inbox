X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1083" "Friday" "24" "April" "2020" "12:19:48" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwUOZpgORGC2uT4PvZ81yv7HNyFggp9NLtNUyB-uX=ThLA@mail.gmail.com>" "35" "[oss-security] [CVE-2020-9489] Denial of Service (DOS) Vulnerabilities in Some of Apache Tika's Parsers" nil nil nil "4" "2020042416:19:48" "[oss-security] [CVE-2020-9489] Denial of Service (DOS) Vulnerabilities in Some of Apache Tika's Parsers" (number mark "U       tallison@apa Apr 24   35/1083  " thread-indent "\"[oss-security] [CVE-2020-9489] Denial of Service (DOS) Vulnerabilities in Some of Apache Tika's Parsers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9489] Denial of Service (DOS) Vulnerabilities in Some of Apache Tika's Parsers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11468 invoked by uid 550); 24 Apr 2020 16:20:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11439 invoked from network); 24 Apr 2020 16:20:12 -0000
X-Gm-Message-State: AGi0PuY1Muh2rF57wDN9pSYjBmBjeSV4bdGqEKi1QTKEH8xPRy5TjWoZ
	adnn5Dl5pPInfu8RpZE4PNXJCMj82jLMgmP5qTg=
X-Google-Smtp-Source: APiQypKPBEKSjvTDgFNEc0YLnmAgtxqCtDIN79UHPnHpBXKHo3eEvvnzJ3SHDBVglRwHYHWOTF5hEuWD5Y5eZEBecU0=
X-Received: by 2002:a17:906:340a:: with SMTP id c10mr8019757ejb.218.1587745198919;
 Fri, 24 Apr 2020 09:19:58 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Fri, 24 Apr 2020 12:19:48 -0400
X-Gmail-Original-Message-ID: <CAC1dCwUOZpgORGC2uT4PvZ81yv7HNyFggp9NLtNUyB-uX=ThLA@mail.gmail.com>
Message-ID: <CAC1dCwUOZpgORGC2uT4PvZ81yv7HNyFggp9NLtNUyB-uX=ThLA@mail.gmail.com>
To: announce@apache.org, "<dev@tika.apache.org>" <dev@tika.apache.org>, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000093562705a40bbc5f"
Subject: [oss-security] [CVE-2020-9489] Denial of Service (DOS) Vulnerabilities in Some of
 Apache Tika's Parsers

--00000000000093562705a40bbc5f
Content-Type: text/plain; charset="UTF-8"

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika 1.24

Description:
A carefully crafted or corrupt file may trigger a System.exit in Tika's
OneNote Parser. Crafted or corrupted files can also cause out of memory
errors and/or infinite loops in Tika's ICNSParser, MP3Parser, MP4Parser,
SAS7BDATParser, OneNoteParser and ImageParser.


Mitigation:
Apache Tika users should upgrade to 1.24.1 or later. The vulnerabilities in
the MP4Parser were partially fixed by upgrading the
com.googlecode:isoparser:1.1.22 dependency to
org.tallison:isoparser:1.9.41.2.

For unrelated security reasons, we upgraded org.apache.cxf to 3.3.6 as part
of the 1.24.1 release.

We also upgraded openjson to 1.0.10, org.ow2.asm to 8.0.1, zstd-jni to
1.4.4-9, bouncycastle to 1.65, commons-lang3 to 3.10, lucene to 8.5.0 and
mockito to 3.3.3 as part of the 1.24.1 release.


Credit:
These vulnerabilities were discovered by Tim Allison on the Apache Tika
team.

--00000000000093562705a40bbc5f--
