X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["950" "Friday" "29" "September" "2017" "10:33:38" "-0700" "Anthony Baker" "abaker@apache.org" "<CAEwge-FqzrT+deCkNkM-EQZuKfg-XuqY4cGjFiqxoKBVduY1Zw@mail.gmail.com>" "32" "[oss-security] [SECURITY] CVE-2017-9794 Apache Geode gfsh query vulnerability" "^Cc:" nil nil "9" "2017092917:33:38" "[oss-security] [SECURITY] CVE-2017-9794 Apache Geode gfsh query vulnerability" (number mark "U       abaker@apach Sep 29   32/950   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-9794 Apache Geode gfsh query vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25837 invoked by uid 550); 29 Sep 2017 17:37:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21762 invoked from network); 29 Sep 2017 17:33:53 -0000
X-Gm-Message-State: AMCzsaXJuigAtTrh9eZA8FuwbkTCIKaKMDficjITPmAMtNJaoiYE4y1K
	H4cSz3d1CGa37aE+78B1o0HP+aFXp/obCKkPDU18eQ==
X-Google-Smtp-Source: AOwi7QD5gVnUZpRyFrwTt3DY3ajKFKfVhVTPztydrPhmXj2VzVitMoyKHw3tXzw42crDtADz/zaYHbZFtRwmCZc/o70=
X-Received: by 10.31.193.151 with SMTP id r145mr4659510vkf.60.1506706418836;
 Fri, 29 Sep 2017 10:33:38 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEwge-FqzrT+deCkNkM-EQZuKfg-XuqY4cGjFiqxoKBVduY1Zw@mail.gmail.com>
Message-ID: <CAEwge-FqzrT+deCkNkM-EQZuKfg-XuqY4cGjFiqxoKBVduY1Zw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Jared Stewart <jstewart@pivotal.io>
Date: Fri, 29 Sep 2017 10:33:38 -0700
From: Anthony Baker <abaker@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2017-9794 Apache Geode gfsh query vulnerability
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	security@apache.org, oss-security@lists.openwall.com

CVE-2017-9794 Apache Geode gfsh query vulnerability

Severity: Low
CVSS Base Score 3.5 (CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:U/C:L/I:N/A:N)

Vendor: The Apache Software Foundation

Versions Affected:
Apache Geode 1.0.0 through 1.2.0

Description:
When a cluster is operating in secure mode, a user with read
privileges for specific data  regions can use the gfsh command line
utility to execute queries.  The query results may contain data from
another user=E2=80=99s concurrently executing gfsh query, potentially
revealing data that the user is not authorized to view.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.2.1 or late=
r.

Credit:
This issue was reported responsibly to the Apache Geode PMC by Jared
Stewart from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3217
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#Release=
Notes-SecurityVulnerabilities

---
The Geode PMC
