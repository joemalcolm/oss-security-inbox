X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Monday" "1" "March" "2021" "10:51:19" "-0800" "Chao Sun" "sunchao@apache.org" nil "21" "[oss-security] CVE-2020-1926: Timing attack in Cookie signature verification" nil nil nil "3" nil nil (number mark "U       sunchao@apac Mar  1   21/540   " thread-indent "\"[oss-security] CVE-2020-1926: Timing attack in Cookie signature verification\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1926: Timing attack in Cookie signature verification" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22373 invoked by uid 550); 1 Mar 2021 19:00:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18152 invoked from network); 1 Mar 2021 18:51:44 -0000
X-Gm-Message-State: AOAM530J2zsGgK1JxM8lBRYr6yvEfOJrg3Y20pHOUO4e+f2nYqbX2mmP
	zacaa8vnT6NJ1M7CFVTLSpOzfMwlXWClzgCoWIE=
X-Google-Smtp-Source: ABdhPJxxpS1pQ+rw5k6S2PHgUSBEWRgQXd1S9k4g8u1+fIn8nxGZ9OH+bCSjHarh4mKi/yA8bFe+d7Xe8jSZU8BImCo=
X-Received: by 2002:a37:8206:: with SMTP id e6mr16018328qkd.449.1614624691890;
 Mon, 01 Mar 2021 10:51:31 -0800 (PST)
MIME-Version: 1.0
From: Chao Sun <sunchao@apache.org>
Date: Mon, 1 Mar 2021 10:51:19 -0800
X-Gmail-Original-Message-ID: <CAF6oT1duK+GdUtY9VTi_MfY2Si7sxXSeqC2hAWe9mmaTqua_9g@mail.gmail.com>
Message-ID: <CAF6oT1duK+GdUtY9VTi_MfY2Si7sxXSeqC2hAWe9mmaTqua_9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000034ae8405bc7e1ba3"
Subject: [oss-security] CVE-2020-1926: Timing attack in Cookie signature verification

--00000000000034ae8405bc7e1ba3
Content-Type: text/plain; charset="UTF-8"

Description:

Apache Hive cookie signature verification used a non constant time
comparison which is known to be vulnerable to timing attacks. This could
allow recovery of another users cookie signature. The issue was addressed
in Apache Hive 2.3.8

This issue is being tracked as HIVE-22708

Credit:

Apache Hive would like to thank S. Wasin for reporting this issue.

References:

https://issues.apache.org/jira/browse/HIVE-22708

--00000000000034ae8405bc7e1ba3--
