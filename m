X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["565" "Wednesday" "18" "March" "2020" "12:03:23" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwU+88efiYG75neuPT3yaNEzWFjZxSoLEnV9PfB5yTyK4w@mail.gmail.com>" "24" "[oss-security] [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser" nil nil nil "3" "2020031816:03:23" "[oss-security] [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser" (number mark "U       tallison@apa Mar 18   24/565   " thread-indent "\"[oss-security] [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20436 invoked by uid 550); 18 Mar 2020 16:03:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20377 invoked from network); 18 Mar 2020 16:03:47 -0000
X-Gm-Message-State: ANhLgQ3v4u2f7dKIG20LBjx1xYSzew6/dSqx2gOZgRilFcQREDY34gre
	jNgx9/nC2E4udmK0/Kimry1L07Hybsv0LyPm/mA=
X-Google-Smtp-Source: ADFU+vv8+smnCq47aUDavqZKfZKjERCnPcZ/YPtmnyYip0vNvxcw0XYzq/wmXAzPTRn31VFltsbrW2nGn+BBbcv52F8=
X-Received: by 2002:a17:902:e981:: with SMTP id f1mr4625583plb.198.1584547414407;
 Wed, 18 Mar 2020 09:03:34 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 18 Mar 2020 12:03:23 -0400
X-Gmail-Original-Message-ID: <CAC1dCwU+88efiYG75neuPT3yaNEzWFjZxSoLEnV9PfB5yTyK4w@mail.gmail.com>
Message-ID: <CAC1dCwU+88efiYG75neuPT3yaNEzWFjZxSoLEnV9PfB5yTyK4w@mail.gmail.com>
To: "<dev@tika.apache.org>" <dev@tika.apache.org>, user@tika.apache.org, announce@apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c48aa405a123311f"
Subject: [oss-security] [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser

--000000000000c48aa405a123311f
Content-Type: text/plain; charset="UTF-8"

TItle: [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's
PSDParser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.0 to 1.23

Description:
A carefully crafted or corrupt PSD file can cause an infinite loop in Apache
Tika's PSDParser in versions 1.0-1.23.


Mitigation:
Apache Tika users should upgrade to 1.24 or later.

Credit:
This issue was discovered by Tim Allison on the Apache Tika team.

--000000000000c48aa405a123311f--
