X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["959" "Thursday" "22" "November" "2018" "10:25:00" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq5GcGNU-gdn0BW7fxaXr8_F2v6MuUgRx+Ho1pN=p1U6qA@mail.gmail.com>" "28" "[oss-security] CVE-2018-8009: Apache Hadoop distributed cache archive vulnerability" nil nil nil "11" "2018112201:25:00" "[oss-security] CVE-2018-8009: Apache Hadoop distributed cache archive vulnerability" (number mark "U       aajisaka@apa Nov 22   28/959   " thread-indent "\"[oss-security] CVE-2018-8009: Apache Hadoop distributed cache archive vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9936 invoked by uid 550); 22 Nov 2018 08:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9236 invoked from network); 22 Nov 2018 01:25:26 -0000
X-Gm-Message-State: AGRZ1gIYgWAZcjLlwYxYVx5/5BjNmUHOm7VR5GYUOYd3OCPe1eP5dTXr
	55UK00xpnz8BXBX9bhyAd2c4XLPfm4ts4+JNaNg=
X-Google-Smtp-Source: AJdET5cLpFXUJ1e5lJZOee2FO30WnVny2cAd1pLRuKhw6V/IHPWh1Zi1K+ZjlW4PNqMuV4S8IVrvkrj/nu/XhKEyDOU=
X-Received: by 2002:a19:9c92:: with SMTP id f140mr4945441lfe.41.1542849911643;
 Wed, 21 Nov 2018 17:25:11 -0800 (PST)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Thu, 22 Nov 2018 10:25:00 +0900
X-Gmail-Original-Message-ID: <CAP+3qq5GcGNU-gdn0BW7fxaXr8_F2v6MuUgRx+Ho1pN=p1U6qA@mail.gmail.com>
Message-ID: <CAP+3qq5GcGNU-gdn0BW7fxaXr8_F2v6MuUgRx+Ho1pN=p1U6qA@mail.gmail.com>
To: general@hadoop.apache.org, user@hadoop.apache.org, 
	security@hadoop.apache.org, oss-security@lists.openwall.com, security@snyk.io
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-8009: Apache Hadoop distributed cache archive vulnerability

CVE-2018-8009: Apache Hadoop distributed cache archive vulnerability

Severity: Severe

Vendor: The Apache Software Foundation

Versions Affected:
  Hadoop 0.23.0 to 0.23.11
  Hadoop 2.0.0-alpha to 2.7.6
  Hadoop 2.8.0 to 2.8.4
  Hadoop 2.9.0 to 2.9.1
  Hadoop 3.0.0-alpha to 3.0.2
  Hadoop 3.1.0

Users affected: User running the YARN NodeManager daemon and YARN
users that leverage public archives in the distributed cache

Impact: Vulnerability allows a cluster user to publish a public
archive that can affect other files owned by the user running the YARN
NodeManager daemon. If the impacted files belong to another already
localized, public archive on the node then code can be injected into
the jobs of other cluster users using the public archive.

Mitigation: Users should upgrade to Apache Hadoop 2.7.7, 2.8.5, 2.9.2,
3.0.3, or 3.1.1.

Credit: This issue was discovered by Snyk Security Research Team
https://snyk.io/research/zip-slip-vulnerability
