X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Tuesday" "9" "January" "2018" "14:05:34" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-FmJu4wu9Q14iOFkD3RK3KZJqFazi=x8F1JpF+9BQXC-A@mail.gmail.com>" "27" "[oss-security] [SECURITY] CVE-2017-9796 Apache Geode OQL bind parameter vulnerability" nil nil nil "1" "2018010922:05:34" "[oss-security] [SECURITY] CVE-2017-9796 Apache Geode OQL bind parameter vulnerability" (number mark "U       abaker@apach Jan  9   27/786   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-9796 Apache Geode OQL bind parameter vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21736 invoked by uid 550); 9 Jan 2018 22:25:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23969 invoked from network); 9 Jan 2018 22:05:48 -0000
X-Gm-Message-State: AKwxytcnByshmPH272XMTHptMDhhaZBlEPXJ10RAn8e5fRp1T3eyzh8C
	6FOPeIHQtNCJAZVxxTc3h/zACknR7xQYastvsur4Cg==
X-Google-Smtp-Source: ACJfBounXMm1heR9BuffMGV8eHXXv8VHcNWHKR3pP6U4USlNIaUKffkrqaL0gGbSUXwxnE8O+2ff8YW4zRfLijq8Ttw=
X-Received: by 10.159.55.40 with SMTP id z37mr16633307uad.154.1515535534803;
 Tue, 09 Jan 2018 14:05:34 -0800 (PST)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Tue, 9 Jan 2018 14:05:34 -0800
X-Gmail-Original-Message-ID: <CAEwge-FmJu4wu9Q14iOFkD3RK3KZJqFazi=x8F1JpF+9BQXC-A@mail.gmail.com>
Message-ID: <CAEwge-FmJu4wu9Q14iOFkD3RK3KZJqFazi=x8F1JpF+9BQXC-A@mail.gmail.com>
To: dev@geode.apache.org, user@geode.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-9796 Apache Geode OQL bind parameter vulnerability

CVE-2017-9796 Apache Geode OQL bind parameter vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.2.1

Description:
A malicious user with read access to specific regions within a Geode
cluster may execute OQL queries containing a region name as a bind
parameter that allow read access to objects within unauthorized
regions.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.3.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Dan Smith from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3248
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC
