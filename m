X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1315" "Wednesday" "7" "November" "2018" "13:29:04" "-0800" "Daniel Dai" "daijy@apache.org" "<CABDpyCjx+GpPvEW1mreZPnqCmqBYmAVk3s5NUx4ZGnQKcj7aGg@mail.gmail.com>" "37" "[oss-security] [SECURITY] CVE-2018-11777: Blocking local resource access in HiveServer2" nil nil nil "11" "2018110721:29:04" "[oss-security] [SECURITY] CVE-2018-11777: Blocking local resource access in HiveServer2" (number mark "U       daijy@apache Nov  7   37/1315  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-11777: Blocking local resource access in HiveServer2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8011 invoked by uid 550); 8 Nov 2018 11:05:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23732 invoked from network); 7 Nov 2018 21:29:29 -0000
X-Gm-Message-State: AGRZ1gKmADUgokNY+BLO2HHJTawZ0egDHNTqBDA8dR6Dpz1eBsLq2qcx
	sKhSjkCxw7AWHzIlvcJOt/yhmTzk3740fA8TQ3o=
X-Google-Smtp-Source: AJdET5fLbITQMKjpFSew2Shk1lC1lUAsLCPU5cWXjsIcMM43STsUopYDn5wmwMIIh7g3x0fG2sUWJVwJMtye10ecOAA=
X-Received: by 2002:a05:660c:8c2:: with SMTP id g2mr1702883itl.22.1541626156603;
 Wed, 07 Nov 2018 13:29:16 -0800 (PST)
MIME-Version: 1.0
From: Daniel Dai <daijy@apache.org>
Date: Wed, 7 Nov 2018 13:29:04 -0800
X-Gmail-Original-Message-ID: <CABDpyCjx+GpPvEW1mreZPnqCmqBYmAVk3s5NUx4ZGnQKcj7aGg@mail.gmail.com>
Message-ID: <CABDpyCjx+GpPvEW1mreZPnqCmqBYmAVk3s5NUx4ZGnQKcj7aGg@mail.gmail.com>
To: user@hive.apache.org, dev@hive.apache.org, announce@apache.org, 
	security <security@hive.apache.org>, oss-security@lists.openwall.com, 
	Mithun Radhakrishnan <mithunr@oath.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2018-11777: Blocking local resource access in HiveServer2

CVE-2018-11777: Blocking local resource access in HiveServer2

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: This vulnerability affects all versions of Hive,
including 2.3.3, 3.1.0 and earlier

Description: Local resources on HiveServer2 machines are not properly
protected against malicious user if ranger, sentry or sql standard
authorizer is not in use.

Mitigation: It is recommended to upgrade to 2.3.4 or 3.1.1 or later if
HiveServer2 is used, and ranger, sentry or sql standard authorizer
is not in use. Admin needs to specify the following entries in
hiveserver2-site.xml:

<property>
  <name>hive.security.authorization.enabled</name>
  <value>true</value>
</property>
<property>
  <name>hive.security.authorization.manager</name>
  <value>org.apache.hadoop.hive.ql.security.authorization.plugin.fallback.FallbackHiveAuthorizerFactory</value>
</property>

FallbackHiveAuthorizerFactory will do the following to mitigate above
mentioned threat:
1. Disallow local file location in sql statements except for admin
2. Allow "set" only selected whitelist parameters
3. Disallow dfs commands except for admin
4. Disallow "ADD JAR" statement
5. Disallow "COMPILE" statement
6. Disallow "TRANSFORM" statement

Credit: This issue was discovered by Mithun Radhakrishnan of Oath Inc
