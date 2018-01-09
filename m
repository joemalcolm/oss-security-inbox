X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["785" "Tuesday" "9" "January" "2018" "14:07:14" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-FQAHe37U1zdM19NCj8NkAuyVUx7=ii5WHz_3=EY+BkLw@mail.gmail.com>" "26" "[oss-security] [SECURITY] CVE-2017-12622 Apache Geode gfsh authorization vulnerability" nil nil nil "1" "2018010922:07:14" "[oss-security] [SECURITY] CVE-2017-12622 Apache Geode gfsh authorization vulnerability" (number mark "U       abaker@apach Jan  9   26/785   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-12622 Apache Geode gfsh authorization vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19737 invoked by uid 550); 9 Jan 2018 22:25:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3315 invoked from network); 9 Jan 2018 22:07:29 -0000
X-Gm-Message-State: AKwxytdY1siHeXbc7G/KeTUBKqmip/mPN+pq0jYSYKZ4ZeiSSFQHbpLT
	t5kKFaOJf6Wfnb3X0ufy3pI91RhxAVlkmr8uIPMb4g==
X-Google-Smtp-Source: ACJfBos3Bh0WShvS3NXaHxO8SNd4r7X2FKFRMMCdc8vCvr+Rff51bmsgFfSD8dvcBvuuB2LxDfHir4Osyzyn/ufsO9w=
X-Received: by 10.159.50.70 with SMTP id y6mr16032811uad.188.1515535634879;
 Tue, 09 Jan 2018 14:07:14 -0800 (PST)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Tue, 9 Jan 2018 14:07:14 -0800
X-Gmail-Original-Message-ID: <CAEwge-FQAHe37U1zdM19NCj8NkAuyVUx7=ii5WHz_3=EY+BkLw@mail.gmail.com>
Message-ID: <CAEwge-FQAHe37U1zdM19NCj8NkAuyVUx7=ii5WHz_3=EY+BkLw@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-12622 Apache Geode gfsh authorization vulnerability

CVE-2017-12622 Apache Geode gfsh authorization vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.2.1

Description:
When an authenticated user connects to a Geode cluster using the gfsh
tool with HTTP, the user is able to obtain status information and
control cluster members even without CLUSTER:MANAGE privileges.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.3.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Patrick Rhomberg from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3685
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC
