X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["979" "Thursday" "30" "November" "2017" "17:15:43" "+0000" "Keith Wall" "kwall@apache.org" "<CAFEMS4vr8tXkkmRj+y6g0p3y3r9SqDL8Gf9+ouhbKjPAsbJ04w@mail.gmail.com>" "32" "[oss-security] [SECURITY] [CVE-2017-15701] Apache Qpid Broker-J Denial of Service Vulnerability" nil nil nil "11" "2017113017:15:43" "[oss-security] [SECURITY] [CVE-2017-15701] Apache Qpid Broker-J Denial of Service Vulnerability" (number mark "U       kwall@apache Nov 30   32/979   " thread-indent "\"[oss-security] [SECURITY] [CVE-2017-15701] Apache Qpid Broker-J Denial of Service Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27792 invoked by uid 550); 30 Nov 2017 17:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26381 invoked from network); 30 Nov 2017 17:15:59 -0000
X-Gm-Message-State: AJaThX5E4fc3TeSICjI9+wXKoB/S1NMQbfAXjzvusV/SgvCC93L7Vx1f
	pzlryCyBxA/vuzGKwP5rS9gUSMzte1wc0JHhnU4=
X-Google-Smtp-Source: AGs4zMYqpyY0HXC2oz7qW6cQt3M765jUDhWOXalnS0j5g8jZa0+icsg9T76VNgDDEiPb2ecH67eRGveNjYv2ZtOG3xg=
X-Received: by 10.223.180.69 with SMTP id v5mr2491610wrd.193.1512062144582;
 Thu, 30 Nov 2017 09:15:44 -0800 (PST)
MIME-Version: 1.0
From: Keith Wall <kwall@apache.org>
Date: Thu, 30 Nov 2017 17:15:43 +0000
X-Gmail-Original-Message-ID: <CAFEMS4vr8tXkkmRj+y6g0p3y3r9SqDL8Gf9+ouhbKjPAsbJ04w@mail.gmail.com>
Message-ID: <CAFEMS4vr8tXkkmRj+y6g0p3y3r9SqDL8Gf9+ouhbKjPAsbJ04w@mail.gmail.com>
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, security@apache.org, 
	oss-security@lists.openwall.com, announce@apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] [CVE-2017-15701] Apache Qpid Broker-J Denial of Service Vulnerability

CVE-2017-15701: Apache Qpid Broker-J denial of service vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: 6.1.0, 6.1.1, 6.1.2, 6.1.3, and 6.1.4

Description:

The broker does not properly enforce a maximum frame size in AMQP 1.0
frames.  A remote unauthenticated attacker could exploit this to cause
the broker to exhaust all available memory and eventually terminate.
Older AMQP protocols are not affected.

Resolution:

Users who have AMQP 1.0 support enabled (default) should upgrade their
Qpid Broker-J to version 6.1.5 or later.

Mitigation:

If upgrading the broker is not possible, users can choose to disable
AMQP 1.0 by either setting the system property
"qpid.plugin.disabled:protocolenginecreator.AMQP_1_0" to "true",
excluding "AMQP_1_0" from the supported protocol list on all AMQP
ports, or by removing the AMQP 1.0 related jar files from the Java
classpath.

References:

https://issues.apache.org/jira/browse/QPID-7947
