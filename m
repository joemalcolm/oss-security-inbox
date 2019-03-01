X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1554" "Friday" "1" "March" "2019" "17:22:14" "+0000" "Alex Rudyy" "orudyy@apache.org" "<CAP3WMuR-CCdbACWo7QVPTJ04+twGLGzg4SVBakUDD+NkNTKoog@mail.gmail.com>" "47" "[oss-security] [SECURITY] CVE-2019-0200: Apache Qpid Broker-J Denial of Service due to malformed AMQP 0-8 to 0-10 commands" "^Date:" nil nil "3" "2019030117:22:14" "[oss-security] [SECURITY] CVE-2019-0200: Apache Qpid Broker-J Denial of Service due to malformed AMQP 0-8 to 0-10 commands" (number mark "U       orudyy@apach Mar  1   47/1554  " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0200: Apache Qpid Broker-J Denial of Service due to malformed AMQP 0-8 to 0-10 commands\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13338 invoked by uid 550); 1 Mar 2019 18:02:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10043 invoked from network); 1 Mar 2019 17:22:45 -0000
X-Gm-Message-State: APjAAAUwsvoRak4RdEAwhP3TRrKWdmjf/kz/IHuC++uBi6P1p4WBFBtF
	vMPLnDMqVo4cMlcQvxJYZVHiVyg91gtxkcn5/Q0=
X-Google-Smtp-Source: APXvYqxas0N/nu/q1wO64iEtbukNdNIBsPN0oEkx2GkEGtJk52UpOgdGzkPw/VToH/HLCzscUzHpU7MGkltecwP341U=
X-Received: by 2002:a2e:9105:: with SMTP id m5mr3495700ljg.100.1551460945373;
 Fri, 01 Mar 2019 09:22:25 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAP3WMuR-CCdbACWo7QVPTJ04+twGLGzg4SVBakUDD+NkNTKoog@mail.gmail.com>
Message-ID: <CAP3WMuR-CCdbACWo7QVPTJ04+twGLGzg4SVBakUDD+NkNTKoog@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000882eeb05830ba63f"
Date: Fri, 1 Mar 2019 17:22:14 +0000
From: Alex Rudyy <orudyy@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2019-0200: Apache Qpid Broker-J Denial of Service due
 to malformed AMQP 0-8 to 0-10 commands
To: "dev@qpid.apache.org" <dev@qpid.apache.org>, "users@qpid.apache.org" <users@qpid.apache.org>, announce@apache.org, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

--000000000000882eeb05830ba63f
Content-Type: text/plain; charset="UTF-8"

CVE-2019-0200: Apache Qpid Broker-J Denial of Service due to malformed AMQP
0-8 to 0-10 commands

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected: 6.0.0-7.0.6 (inclusive), 7.1.0

Description:

A Denial of Service vulnerability [1] was found in Apache Qpid Broker-J
versions 6.0.0-7.0.6 (inclusive) and 7.1.0 which allows an unauthenticated
attacker to crash the broker instance by sending specially crafted
commands using AMQP protocol versions below 1.0 (AMQP 0-8, 0-9, 0-91 and
0-10).

Resolution:

Users of Apache Qpid Broker-J versions 6.0.0-7.0.6 (inclusive) and 7.1.0
utilizing AMQP protocols 0-8, 0-9, 0-91, 0-10 must upgrade to Qpid

Broker-J versions 7.0.7 or 7.1.1 or later.

Mitigation:

If upgrade of the broker is not possible, the support for AMQP protocols
0-8...0-10 can be disabled on AMQP ports. The change can be made either
directly in the broker configuration file or by using management interfaces.

An example of REST API call restricting AMQP port to support only AMQP 1.0
using curl utility is provided below:

curl --user <user-name> -X POST -d '{"protocols":["AMQP_1_0"]}' \
https://<broker host>:<broker port>/api/latest/port/<port name>

References:
[1] https://issues.apache.org/jira/browse/QPID-8273

---------------------------------------------------------------------
To unsubscribe, e-mail: dev-unsubscribe@qpid.apache.org
For additional commands, e-mail: dev-help@qpid.apache.org

--000000000000882eeb05830ba63f--
