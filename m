X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["659" "Monday" "31" "August" "2020" "17:03:52" "-0500" "Brandon Williams" "brandonwilliams@apache.org" "<CAAafH9QFUn9+sqmWs_i6XsBJdw+kPau5WePkUa_5tLfA908k-g@mail.gmail.com>" "18" "[oss-security] CVE-2016-3427 Apache Cassandra Unspecified vulnerability related to JMX" nil nil nil "8" "2020083122:03:52" "[oss-security] CVE-2016-3427 Apache Cassandra Unspecified vulnerability related to JMX" (number mark "U       brandonwilli Aug 31   18/659   " thread-indent "\"[oss-security] CVE-2016-3427 Apache Cassandra Unspecified vulnerability related to JMX\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2016-3427 Apache Cassandra Unspecified vulnerability related to JMX" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27793 invoked by uid 550); 31 Aug 2020 23:25:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3808 invoked from network); 31 Aug 2020 22:04:17 -0000
X-Gm-Message-State: AOAM533svqjVpzgqAnWWymrfHZ5kIHXXzdBGyCQsDO6WF//pm7BYuMak
	zUxI1xQQiW/wfdLUsE8YacbUhO7ik0ZD+VQiEpg=
X-Google-Smtp-Source: ABdhPJyV9Qx7Em1UMS5SUtmpY2fqoV95+iciG5WK9XNNO4J2qsQar1rw8/xFnX8fCcYdWri9d0D/j6K1LdRCps/ss0k=
X-Received: by 2002:a17:906:7688:: with SMTP id o8mr2768460ejm.508.1598911443629;
 Mon, 31 Aug 2020 15:04:03 -0700 (PDT)
MIME-Version: 1.0
From: Brandon Williams <brandonwilliams@apache.org>
Date: Mon, 31 Aug 2020 17:03:52 -0500
X-Gmail-Original-Message-ID: <CAAafH9QFUn9+sqmWs_i6XsBJdw+kPau5WePkUa_5tLfA908k-g@mail.gmail.com>
Message-ID: <CAAafH9QFUn9+sqmWs_i6XsBJdw+kPau5WePkUa_5tLfA908k-g@mail.gmail.com>
To: cassandra <user@cassandra.apache.org>, dev@cassandra.apache.org
Cc: Jeremiah Jordan <jeremiah@datastax.com>, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2016-3427 Apache Cassandra Unspecified vulnerability related to JMX

Versions Affected:
All versions prior to: 2.1.22, 2.2.18, 3.0.22, 3.11.8 and 4.0-beta2

Description:
Unspecified vulnerability in Oracle Java SE 6u113, 7u99, and 8u77;
Java SE Embedded 8u77; and JRockit R28.3.9 allows remote attackers to
affect confidentiality, integrity, and availability via vectors
related to JMX.   By default Cassandra only binds JMX locally.

Mitigation:
2.1.x users should upgrade to 2.1.22
2.2.x users should upgrade to 2.2.18
3.0.x users should upgrade to 3.0.22
3.11.x users should upgrade to 3.11.8
4.0-beta1 users should upgrade to 4.0-beta2

Alternatively, users can upgrade their JVM to versions after those in
the description.
