X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["950" "Friday" "29" "September" "2017" "10:35:55" "-0700" "Anthony Baker" "abaker@apache.org" "<CAEwge-Hrbb7JS8Nygrh7geyFvW4bMZ3AdCmPOzMfvbniipz0bA@mail.gmail.com>" "30" "[oss-security] [SECURITY] CVE-2017-9797 Apache Geode client/server authentication vulnerability" "^Cc:" nil nil "9" "2017092917:35:55" "[oss-security] [SECURITY] CVE-2017-9797 Apache Geode client/server authentication vulnerability" (number mark "U       abaker@apach Sep 29   30/950   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-9797 Apache Geode client/server authentication vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24055 invoked by uid 550); 29 Sep 2017 17:37:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23901 invoked from network); 29 Sep 2017 17:37:14 -0000
X-Gm-Message-State: AHPjjUghMfj7i4Xvtb1Dj/wtNHIe6G34gfWah3b+jV+cgn5bFyN09zQu
	ZsDSSgsAc5U0Y6CtNaH0r1wPD1ixvj+hgKfLIfZVbg==
X-Google-Smtp-Source: AOwi7QCEOZpqQU6apHy69CLrvbvPKZu+qTpTyp+GS98DUuGyJyDnHCUyq09Q7Wo1oyj6B0oMlcsPjE5M0Mad2i4qDcc=
X-Received: by 10.176.95.69 with SMTP id z5mr5396999uah.100.1506706555811;
 Fri, 29 Sep 2017 10:35:55 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEwge-Hrbb7JS8Nygrh7geyFvW4bMZ3AdCmPOzMfvbniipz0bA@mail.gmail.com>
Message-ID: <CAEwge-Hrbb7JS8Nygrh7geyFvW4bMZ3AdCmPOzMfvbniipz0bA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Dan Smith <dsmith@pivotal.io>
Date: Fri, 29 Sep 2017 10:35:55 -0700
From: Anthony Baker <abaker@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2017-9797 Apache Geode client/server authentication vulnerability
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	security@apache.org, oss-security@lists.openwall.com

CVE-2017-9797 Apache Geode client/server authentication vulnerability

Severity: Medium
CVSS Base Score 6.5 (CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:H)

Vendor: The Apache Software Foundation

Versions Affected:
Apache Geode 1.0.0 through 1.2.0

Description:
When a cluster is operating in secure mode, an unauthenticated client
can enter multi-user authentication mode and send metadata messages.
These metadata operations could leak information about application
data types.  In addition, an attacker could perform a denial of
service attack on the cluster.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.2.1 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Dan Smith from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3249
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC
