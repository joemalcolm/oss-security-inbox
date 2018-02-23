X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1006" "Friday" "23" "February" "2018" "14:17:15" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-EA=armRcEHu5R3zZhyuTm=ZTLKHNJa5wPrsCYd3AeNfA@mail.gmail.com>" "29" "[oss-security] [SECURITY] CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer" nil nil nil "2" "2018022322:17:15" "[oss-security] [SECURITY] CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer" (number mark "U       abaker@apach Feb 23   29/1006  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6055 invoked by uid 550); 23 Feb 2018 22:44:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18157 invoked from network); 23 Feb 2018 22:17:30 -0000
X-Gm-Message-State: APf1xPBX/KiRq5CKRNaipAxfekJHYvuuXeHp1hWSiKtNIYUr7x3QzjlX
	M/uYRnjL5FTmd+sjEYM+hNTJnBnY5sb8VU+137leZQ==
X-Google-Smtp-Source: AG47ELu5VP3Ficjb5YmMJ+MP12CJqXr5ZiHVXKyvMTCT6wqw49JfLBM1z3+q0UsubEbAKQ/wqX2s8CgsQNgpoFWY2c4=
X-Received: by 10.176.93.35 with SMTP id u35mr2572221uaf.74.1519424236430;
 Fri, 23 Feb 2018 14:17:16 -0800 (PST)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Fri, 23 Feb 2018 14:17:15 -0800
X-Gmail-Original-Message-ID: <CAEwge-EA=armRcEHu5R3zZhyuTm=ZTLKHNJa5wPrsCYd3AeNfA@mail.gmail.com>
Message-ID: <CAEwge-EA=armRcEHu5R3zZhyuTm=ZTLKHNJa5wPrsCYd3AeNfA@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	oss-security@lists.openwall.com, asf-security <security@apache.org>, mmo@semmle.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer

CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.3.0

Description:
The TcpServer within the Geode locator opens a network port that
deserializes data.  If an unprivileged user gains access to the Geode
locator, they may be able to cause remote code execution if certain
classes are present on the classpath.

A malicious user can send a network message to the Geode locator and
execute code if certain classes are present on the classpath.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.4.0 or
later.  In addition, users should set the flag
validate-serializable-objects.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Man Yue Mo from Semmle.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3923
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
