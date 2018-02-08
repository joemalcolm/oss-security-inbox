X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3259" "Thursday" "8" "February" "2018" "22:39:29" "+0000" "Alex Rudyy" "orudyy@apache.org" "<CAP3WMuQ9dfe=3FCtqoZ1Q4xkFZZ+ogdqn6KVxyb_O4s5rLBwuw@mail.gmail.com>" "95" "[oss-security] [SECURITY][CVE-2018-1298] Apache Qpid Broker-J Denial of Service Vulnerability with PLAIN and XOAUTH2 SASL mechanisms" "^Date:" nil nil "2" "2018020822:39:29" "[oss-security] [SECURITY][CVE-2018-1298] Apache Qpid Broker-J Denial of Service Vulnerability with PLAIN and XOAUTH2 SASL mechanisms" (number mark "U       orudyy@apach Feb  8   95/3259  " thread-indent "\"[oss-security] [SECURITY][CVE-2018-1298] Apache Qpid Broker-J Denial of Service Vulnerability with PLAIN and XOAUTH2 SASL mechanisms\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7939 invoked by uid 550); 8 Feb 2018 22:42:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5793 invoked from network); 8 Feb 2018 22:39:47 -0000
X-Gm-Message-State: APf1xPA4fb/JiQnRHX6gFXqJa7FYZSg3sVQsZL0L2uRRk2RLjBkLZE/F
	9F1t4yFDkoxJ5q7pDqPb3VrM7cDqKIM0q1rcrHs=
X-Google-Smtp-Source: AH8x224Rw9u4yc4J4N409M61mqZTR1qvRKt9Q/X+o/uOGC+r8cO9siou4ScCcv6/vmf+AubR6j8IKzsRfu0re3WpmSg=
X-Received: by 10.25.44.147 with SMTP id s141mr442889lfs.15.1518129570488;
 Thu, 08 Feb 2018 14:39:30 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAP3WMuQ9dfe=3FCtqoZ1Q4xkFZZ+ogdqn6KVxyb_O4s5rLBwuw@mail.gmail.com>
Message-ID: <CAP3WMuQ9dfe=3FCtqoZ1Q4xkFZZ+ogdqn6KVxyb_O4s5rLBwuw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1141094ec5ab050564bb1580"
Date: Thu, 8 Feb 2018 22:39:29 +0000
From: Alex Rudyy <orudyy@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY][CVE-2018-1298] Apache Qpid Broker-J Denial of Service
 Vulnerability with PLAIN and XOAUTH2 SASL mechanisms
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, announce@apache.org

--001a1141094ec5ab050564bb1580
Content-Type: text/plain; charset="UTF-8"

CVE-2018-1298: Apache Qpid Broker-J Denial of Service Vulnerability with
PLAIN and XOAUTH2 SASL mechanisms

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Versions 7.0.0

Description:

A Denial of Service vulnerability [1] was found in Apache Qpid Broker-J
7.0.0
in functionality for authentication of connections for AMQP protocols 0-8,
0-9,
0-91 and 0-10 when PLAIN or XOAUTH2 SASL mechanism is used. The
vulnerability
allows unauthenticated attacker to crash the broker instance. AMQP 1.0 and
HTTP connections are not affected.

An authentication of incoming AMQP connections in Apache Qpid Broker-J is
performed by special entities called "Authentication Providers". Each
Authentication Provider can support several SASL mechanisms
which are offered to the connecting clients as part of SASL negotiation
process.
The client chooses the most appropriate SASL mechanism for authentication.

Authentication Providers of following types supports PLAIN SASL mechanism:
* Plain
* PlainPasswordFile
* SimpleLDAP
* Base64MD5PasswordFile
* MD5
* SCRAM-SHA-256
* SCRAM-SHA-1

XOAUTH2 SASL mechanism is supported by Authentication Providers of type
OAuth2.

If an AMQP port is configured with any of these Authentication Providers,
the
Broker may be vulnerable.

Resolution:

Users of Broker-J version 7.0.0 utilizing affected Authentication Providers
on
AMQP ports with support for AMQP 0-8, 0-9, 0-91 or 0-10 must upgrade to
version
7.0.1 or later.

Mitigation:

If upgrade of the broker is not possible, the SimpleLDAP and OAuth2 must be
replaced with an alternative provider. For the remaining affected types of
Authentication Providers the PLAIN SASL mechanism must be disabled by
including
"PLAIN" in the "disabledMechanisms" attribute of the provider. The changes
can
be made either directly in the broker configuration file or via management
interfaces (for example, REST API [2]). A broker restart is required for the
changes to take effect. Here is a template for curl utility call to disable
PLAIN mechanism using REST API:

curl --user <user-name> -X POST  -d '{"disabledMechanisms":["PLAIN"]}' \
https://<broker host>:<broker https
port>/api/latest/authenticationprovider/<provider name>

Alternatively, when only AMQP 1.0 protocol is used, the support for older
AMQP
protocols can be removed on the AMQP port. It can be done either from
Broker-J
Web Management Console or via management interfaces. A broker restart is
required for the changes to take effect. Here is a template for curl REST
API
call to restrict port supported AMQP protocols to AMQP 1.0:

curl --user <user-name> -X POST  -d '{"protocols":["AMQP_1_0"]}' \
https://<broker host>:<broker https port>/api/latest/port/<port name>

References:

[1] https://issues.apache.org/jira/browse/QPID-8046
[2]
https://qpid.apache.org/releases/qpid-broker-j-7.0.0/book/Java-Broker-Management-Channel-REST-API.html
[3] http://qpid.apache.org/components/broker-j/index.html

---------------------------------------------------------------------
To unsubscribe, e-mail: dev-unsubscribe@qpid.apache.org
For additional commands, e-mail: dev-help@qpid.apache.org

--001a1141094ec5ab050564bb1580--
