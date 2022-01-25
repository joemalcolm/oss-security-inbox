X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1567" "Tuesday" "25" "January" "2022" "15:47:17" "+0100" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jbonofre@apache.org" nil "43" "[oss-security] [SECURITY] New security advisory for CVE-2021-41766 released for Apache Karaf" nil nil nil "1" nil nil (number mark "U       jbonofre@apa Jan 25   43/1567  " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2021-41766 released for Apache Karaf\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] New security advisory for CVE-2021-41766 released for Apache Karaf" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11417 invoked by uid 550); 25 Jan 2022 14:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27826 invoked from network); 25 Jan 2022 14:47:41 -0000
X-Gm-Message-State: AOAM5327qa0gUu0VefoECEnNyrI3FRZz8og7L4B5L1FXYjz0SloA6Fw6
	aye7kYZEp9OtzqhsIHKbgQinK3PC9n7lln2xbOE=
X-Google-Smtp-Source: ABdhPJxvNzXn61ok/qO7GWRFQW5b4qjMZTFebYfbzoCTz3tO+FVnrMxWlxpQoev9yJxefyO1QF6gd7e4EjjfawgvdjM=
X-Received: by 2002:a2e:b892:: with SMTP id r18mr14316114ljp.50.1643122048044;
 Tue, 25 Jan 2022 06:47:28 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Jean=2DBaptiste_Onofr=C3=A9?= <jbonofre@apache.org>
Date: Tue, 25 Jan 2022 15:47:17 +0100
X-Gmail-Original-Message-ID: <CAB8EV3RcuY4hecdkbt55n6QUmDdLe7gJwZRZkJYG5XYbLzSkzQ@mail.gmail.com>
Message-ID: <CAB8EV3RcuY4hecdkbt55n6QUmDdLe7gJwZRZkJYG5XYbLzSkzQ@mail.gmail.com>
To: announce@apache.org, user@karaf.apache.org, dev@karaf.apache.org, 
	security@apache.org, oss-security@lists.openwall.com, Daniel.Heyne@usd.de
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] New security advisory for CVE-2021-41766 released for
 Apache Karaf

A new security advisory has been released for Apache Karaf, which was
fixed in the recent 4.3.6 runtime release.

CVE-2021-41766: Insecure Java Deserialization in Apache Karaf

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.3.6

Description:

Apache Karaf allows monitoring of applications and the Java runtime by
using the Java Management Extensions (JMX).
JMX is a Java RMI based technology that relies on Java serialized
objects for client server communication.
Whereas the default JMX implementation is hardened against
unauthenticated deserialization attacks, the implementation
used by Apache Karaf is not protected against this kind of attack.

The impact of Java deserialization vulnerabilities strongly depends
on the classes that are available within the targets
class path.
Generally speaking, deserialization of untrusted data does always
represent a high security risk and should be prevented.

The risk is low as, by default, Karaf uses a limited set of classes in
the JMX server class path.
It depends of system scoped classes (e.g. jar in the lib folder).

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=b42c82c
https://gitbox.apache.org/repos/asf?p=karaf.git;h=93a019c

Mitigation: Apache Karaf users should upgrade to 4.3.6
or later as soon as possible, or disable remote access to JMX server.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-7312

Credit: This issue was reported by Daniel Heyne, Konstantin Samuel and Tobias
Neitzel
