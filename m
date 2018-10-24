X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1266" "Wednesday" "24" "October" "2018" "11:30:21" "-0500" "Sean Owen" "srowen@apache.org" "<CAEccTyzwkSJ-2ebKLsxTfu7A60ut5rv8eRoWe7LM7oFv1GXEuQ@mail.gmail.com>" "32" "[oss-security] CVE-2018-11804: Apache Spark build/mvn runs zinc, and can expose information from build machines" nil nil nil "10" "2018102416:30:21" "[oss-security] CVE-2018-11804: Apache Spark build/mvn runs zinc, and can expose information from build machines" (number mark "U       srowen@apach Oct 24   32/1266  " thread-indent "\"[oss-security] CVE-2018-11804: Apache Spark build/mvn runs zinc, and can expose information from build machines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12168 invoked by uid 550); 24 Oct 2018 19:25:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15408 invoked from network); 24 Oct 2018 16:30:47 -0000
X-Gm-Message-State: ABuFfoiXw5gEvaj6ltJhgPHHlA8+G2DyPpBcD2d2H9Ngi2g+cNy+NY86
	apQ4U4Qbcm/oDtOxsLm/R2wCoYvQHaYqcHMgwaA=
X-Google-Smtp-Source: ACcGV61cSnsmmgU1i6N3EHH0d4AWiZ5BOKN1u/vQRvicwFBE9CkY9Jly+mbD+nirsZQH7IfmnH3EwATGARgyLcYbVDU=
X-Received: by 2002:a19:5510:: with SMTP id n16mr9306405lfe.68.1540398632663;
 Wed, 24 Oct 2018 09:30:32 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEccTyzwkSJ-2ebKLsxTfu7A60ut5rv8eRoWe7LM7oFv1GXEuQ@mail.gmail.com>
Message-ID: <CAEccTyzwkSJ-2ebKLsxTfu7A60ut5rv8eRoWe7LM7oFv1GXEuQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 24 Oct 2018 11:30:21 -0500
From: Sean Owen <srowen@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-11804: Apache Spark build/mvn runs zinc, and can expose
 information from build machines
To: oss-security@lists.openwall.com

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
1.3.x release branch and later, including master

Description:
Spark's Apache Maven-based build includes a convenience script, 'build/mvn',
that downloads and runs a zinc server to speed up compilation. This server
will accept connections from external hosts by default. A specially-crafted
request to the zinc server could cause it to reveal information in files
readable to the developer account running the build. Note that this issue
does not affect end users of Spark, only developers building Spark from
source code.

Mitigation:
Spark users are not affected, as zinc is only a part of the build process.
Spark developers may simply use a local Maven installation's 'mvn' command
to build, and avoid running build/mvn and zinc.
Spark developers building actively-developed branches (2.2.x, 2.3.x, 2.4.x,
master) may update their branches to receive mitigations already patched
onto the build/mvn script.
Spark developers running zinc separately may include "-server 127.0.0.1" in
its command line, and consider additional flags like "-idle-timeout 30m" to
achieve similar mitigation.

Credit:
Andre Protas, Apple Information Security

References:
https://spark.apache.org/security.html
