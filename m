X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Wednesday" "18" "March" "2020" "12:01:41" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwX+=L_m_da_kANnvcO1HyvsPdy5E4XhiXc2t0WqWwVSbw@mail.gmail.com>" "26" "[oss-security] [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache Tika's PSDParser" nil nil nil "3" "2020031816:01:41" "[oss-security] [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache Tika's PSDParser" (number mark "U       tallison@apa Mar 18   26/569   " thread-indent "\"[oss-security] [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache Tika's PSDParser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache Tika's PSDParser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9614 invoked by uid 550); 18 Mar 2020 16:02:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9588 invoked from network); 18 Mar 2020 16:02:05 -0000
X-Gm-Message-State: ANhLgQ0wP5HKSi557Nv7pIyqFN/uzRvBmaa+WoiTcAfq3Mu64LW9UwTs
	OHNJorIMIuUNOsViOnoW0rZoy6aaRRSDQJVak5E=
X-Google-Smtp-Source: ADFU+vupKXAOwprjOV6EMAXi2iAJeQmw4e2ZmPzemPZE+nI3JXRBA6KM1dWvcOWqIgEB+nBqzfJ2v0kYhkSYGSimSBg=
X-Received: by 2002:a17:90b:2390:: with SMTP id mr16mr5306953pjb.149.1584547312262;
 Wed, 18 Mar 2020 09:01:52 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 18 Mar 2020 12:01:41 -0400
X-Gmail-Original-Message-ID: <CAC1dCwX+=L_m_da_kANnvcO1HyvsPdy5E4XhiXc2t0WqWwVSbw@mail.gmail.com>
Message-ID: <CAC1dCwX+=L_m_da_kANnvcO1HyvsPdy5E4XhiXc2t0WqWwVSbw@mail.gmail.com>
To: user@tika.apache.org, "<dev@tika.apache.org>" <dev@tika.apache.org>, 
	Apache Security Team <security@apache.org>, announce@apache.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ad654c05a1232b49"
Subject: [oss-security] [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache
 Tika's PSDParser

--000000000000ad654c05a1232b49
Content-Type: text/plain; charset="UTF-8"

Title: [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache
Tika's PSDParser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.0 to 1.23

Description:
A carefully crafted or corrupt PSD file can cause excessive memory usage in
Apache
Tika's PSDParser in versions 1.0-1.23.


Mitigation:
Apache Tika users should upgrade to 1.24 or later.


Credit:
This issue was discovered by Pierre Ernst at Elastic.

--000000000000ad654c05a1232b49--
