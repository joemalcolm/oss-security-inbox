X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Thursday" "22" "February" "2018" "13:46:43" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-GQLV_9Y56psCejkhA-B3jx4amnQP5AoVwURbzn=DCZOw@mail.gmail.com>" "24" "[oss-security] [SECURITY] CVE-2017-15696 Apache Geode configuration request authorization vulnerability" "^Date:" nil nil "2" "2018022221:46:43" "[oss-security] [SECURITY] CVE-2017-15696 Apache Geode configuration request authorization vulnerability" (number mark "U       abaker@apach Feb 22   24/804   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-15696 Apache Geode configuration request authorization vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28460 invoked by uid 550); 22 Feb 2018 22:20:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1979 invoked from network); 22 Feb 2018 21:46:58 -0000
X-Gm-Message-State: APf1xPA9MEujJMM3wOB1JMIAevlGWVlZpPsFZHJbwCxIBCwcBMxL0kR+
	2o1UuAHoPHVz1Bwx+rXW1KjbSBz6wM/vxs+dUpHy6w==
X-Google-Smtp-Source: AH8x224J2fTxcwYDceffVuD0V4gJwv6zgzktqWytxPgvCVBCdrJRTnmQDH08Qimo7ANQBxltMYBAH8SRVjDlFgh+PVo=
X-Received: by 10.31.201.133 with SMTP id z127mr6160472vkf.129.1519336003787;
 Thu, 22 Feb 2018 13:46:43 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEwge-GQLV_9Y56psCejkhA-B3jx4amnQP5AoVwURbzn=DCZOw@mail.gmail.com>
Message-ID: <CAEwge-GQLV_9Y56psCejkhA-B3jx4amnQP5AoVwURbzn=DCZOw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 22 Feb 2018 13:46:43 -0800
From: Anthony Baker <abaker@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2017-15696 Apache Geode configuration request
 authorization vulnerability
To: user@geode.apache.org, dev@geode.apache.org, 
	asf-security <security@apache.org>, announce@apache.org, oss-security@lists.openwall.com

CVE-2017-15696 Apache Geode configuration request authorization vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.3.0

Description:
The Geode configuration service does not properly authorize
configuration requests.  This allows an unprivileged user who gains
access to the Geode locator to extract configuration data and
previously deployed application code.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.4.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Dan Smith from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3962
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
