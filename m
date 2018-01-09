X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["829" "Tuesday" "9" "January" "2018" "14:02:13" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-FTf8zMT-U2XuHRv8L9ksiQExKMExOoR0Rp0W2TvpO1oA@mail.gmail.com>" "27" "[oss-security] [SECURITY] CVE-2017-9795 Apache Geode OQL method invocation vulnerability" nil nil nil "1" "2018010922:02:13" "[oss-security] [SECURITY] CVE-2017-9795 Apache Geode OQL method invocation vulnerability" (number mark "U       abaker@apach Jan  9   27/829   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-9795 Apache Geode OQL method invocation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22216 invoked by uid 550); 9 Jan 2018 22:05:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19944 invoked from network); 9 Jan 2018 22:02:31 -0000
X-Gm-Message-State: AKwxytf0bCkM6vmpXiWy426uggkHZcM+oir80j5ZUrRWpv085FsbVbpd
	FeNDRg+pjm8vr+SvfEczOVjGSvWIqBt2DeM2aS1gPg==
X-Google-Smtp-Source: ACJfBosyVi2uCFtQzXeEHbzYEkxKVZvDoOjU0Oq6O73imsiIwHevskL/qgqyT1sYj9y908zduE2QzHmo6L9bcQNRwlU=
X-Received: by 10.176.88.81 with SMTP id p17mr17194873uac.189.1515535333539;
 Tue, 09 Jan 2018 14:02:13 -0800 (PST)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Tue, 9 Jan 2018 14:02:13 -0800
X-Gmail-Original-Message-ID: <CAEwge-FTf8zMT-U2XuHRv8L9ksiQExKMExOoR0Rp0W2TvpO1oA@mail.gmail.com>
Message-ID: <CAEwge-FTf8zMT-U2XuHRv8L9ksiQExKMExOoR0Rp0W2TvpO1oA@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-9795 Apache Geode OQL method invocation vulnerability

CVE-2017-9795 Apache Geode OQL method invocation vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.2.1

Description:
A malicious user with read access to specific regions within a Geode
cluster may execute OQL queries that allow read and write access to
objects within unauthorized regions.  In addition a user could invoke
methods that allow remote code execution.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.3.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Dan Smith from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3247
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC
