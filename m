X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Wednesday" "11" "July" "2018" "15:18:36" "-0500" "Sean Owen" "srowen@apache.org" "<CAEccTyxFaNytQoP040QyL0hcPq11asuoMGjWx73vsvtpCkFzVg@mail.gmail.com>" "33" "[oss-security] CVE-2018-1334 Apache Spark local privilege escalation vulnerability" nil nil nil "7" "2018071120:18:36" "[oss-security] CVE-2018-1334 Apache Spark local privilege escalation vulnerability" (number mark "U       srowen@apach Jul 11   33/891   " thread-indent "\"[oss-security] CVE-2018-1334 Apache Spark local privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29814 invoked by uid 550); 12 Jul 2018 10:16:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20052 invoked from network); 11 Jul 2018 20:19:02 -0000
X-Gm-Message-State: AOUpUlF2u7S27sAnqdXCiqvuK68D5llFcd+DTSTQafkgTOxZ1b5eMSAV
	VhUUID5pOLdLKsNptb6mtVSBxy4nGK7XFUiM9JM=
X-Google-Smtp-Source: AAOMgpdqv/xBGYAlE3gmjN0HGEM5x2uMGr7ksjKa4aZh9sSSn31wqHNvtGbULFugGQU6n1GWQmAB3zE5lDNsMsLA0hw=
X-Received: by 2002:a19:9481:: with SMTP id o1-v6mr77334lfk.38.1531340327842;
 Wed, 11 Jul 2018 13:18:47 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Wed, 11 Jul 2018 15:18:36 -0500
X-Gmail-Original-Message-ID: <CAEccTyxFaNytQoP040QyL0hcPq11asuoMGjWx73vsvtpCkFzVg@mail.gmail.com>
Message-ID: <CAEccTyxFaNytQoP040QyL0hcPq11asuoMGjWx73vsvtpCkFzVg@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="0000000000004579f00570bef4bf"
Subject: [oss-security] CVE-2018-1334 Apache Spark local privilege escalation vulnerability

--0000000000004579f00570bef4bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: High

Vendor: The Apache Software Foundation

Versions affected:
Spark versions through 2.1.2
Spark 2.2.0 to 2.2.1
Spark 2.3.0

Description:
In Apache Spark up to and including 2.1.2, 2.2.0 to 2.2.1, and 2.3.0, when
using PySpark or SparkR, it's possible for a different local user to
connect to the Spark application and impersonate the user running the Spark
application.

Mitigation:
1.x, 2.0.x, and 2.1.x users should upgrade to 2.1.3 or newer
2.2.x users should upgrade to 2.2.2 or newer
2.3.x users should upgrade to 2.3.1 or newer
Otherwise, affected users should avoid using PySpark and SparkR in
multi-user environments.

Credit:
Nehm=C3=A9 Tohm=C3=A9, Cloudera, Inc.

References:
https://spark.apache.org/security.html

--0000000000004579f00570bef4bf--
