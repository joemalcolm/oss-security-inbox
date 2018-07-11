X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1025" "Wednesday" "11" "July" "2018" "15:18:59" "-0500" "Sean Owen" "srowen@apache.org" "<CAEccTyxe6x3zqqV8nLtbdt6dVEB1=_GLvHsdgf-1JRmbMHpa2Q@mail.gmail.com>" "33" "[oss-security] CVE-2018-8024 Apache Spark XSS vulnerability in UI" nil nil nil "7" "2018071120:18:59" "[oss-security] CVE-2018-8024 Apache Spark XSS vulnerability in UI" (number mark "U       srowen@apach Jul 11   33/1025  " thread-indent "\"[oss-security] CVE-2018-8024 Apache Spark XSS vulnerability in UI\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29989 invoked by uid 550); 12 Jul 2018 10:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20365 invoked from network); 11 Jul 2018 20:19:25 -0000
X-Gm-Message-State: AOUpUlEsVJoPbmAwv7OVpuAgg1uiQJw7ZXzu3QCCdh9Enkm43viVGRpk
	GzOgMld07V/JFG4Mo2ncj0M/Pe0gnE9REZYuy4I=
X-Google-Smtp-Source: AAOMgpdUacYXrkvxp7W2XVR7wYZ1/SUm70PU58ObDB560PRtVEHfxk/u09GJCVadOi12nP2wfx/Ujlrb3M8vQ3tv2Qk=
X-Received: by 2002:a19:ef13:: with SMTP id n19-v6mr78007lfh.48.1531340351421;
 Wed, 11 Jul 2018 13:19:11 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Wed, 11 Jul 2018 15:18:59 -0500
X-Gmail-Original-Message-ID: <CAEccTyxe6x3zqqV8nLtbdt6dVEB1=_GLvHsdgf-1JRmbMHpa2Q@mail.gmail.com>
Message-ID: <CAEccTyxe6x3zqqV8nLtbdt6dVEB1=_GLvHsdgf-1JRmbMHpa2Q@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="000000000000ad43420570bef565"
Subject: [oss-security] CVE-2018-8024 Apache Spark XSS vulnerability in UI

--000000000000ad43420570bef565
Content-Type: text/plain; charset="UTF-8"

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
Spark versions through 2.1.2
Spark 2.2.0 through 2.2.1
Spark 2.3.0

Description:
In Apache Spark up to and including 2.1.2, 2.2.0 to 2.2.1, and 2.3.0, it's
possible for a malicious user to construct a URL pointing to a Spark
cluster's UI's job and stage info pages, and if a user can be tricked into
accessing the URL, can be used to cause script to execute and expose
information from the user's view of the Spark UI. While some browsers like
recent versions of Chrome and Safari are able to block this type of attack,
current versions of Firefox (and possibly others) do not.

Mitigation:
1.x, 2.0.x, and 2.1.x users should upgrade to 2.1.3 or newer
2.2.x users should upgrade to 2.2.2 or newer
2.3.x users should upgrade to 2.3.1 or newer

Credit:
Spencer Gietzen, Rhino Security Labs

References:
https://spark.apache.org/security.html

--000000000000ad43420570bef565--
