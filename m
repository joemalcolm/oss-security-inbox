X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1920" "Monday" "18" "June" "2018" "21:45:21" "+0100" "Alex Rudyy" "orudyy@apache.org" "<CAP3WMuQfUAc9pP95Et_aQN5ko+6EYe4nYD7zwNXp8+5KPsz8XQ@mail.gmail.com>" "47" "[oss-security] [SECURITY] [CVE-2018-8030] Apache Qpid Broker-J Denial of Service Vulnerability when AMQP 0-8...0-91 messages exceed maximum size limit" "^Date:" nil nil "6" "2018061820:45:21" "[oss-security] [SECURITY] [CVE-2018-8030] Apache Qpid Broker-J Denial of Service Vulnerability when AMQP 0-8...0-91 messages exceed maximum size limit" (number mark "        orudyy@apach Jun 18   47/1920  " thread-indent "\"[oss-security] [SECURITY] [CVE-2018-8030] Apache Qpid Broker-J Denial of Service Vulnerability when AMQP 0-8...0-91 messages exceed maximum size limit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20420 invoked by uid 550); 18 Jun 2018 22:45:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11330 invoked from network); 18 Jun 2018 20:45:36 -0000
X-Gm-Message-State: APt69E0+9ejGhppNjizaQyATqEdwQsTvZfQK+CyCb9nyzpVjtcM51BgN
	f9CB9oZkfSmoqroasNli7xzz/sWiWzSDPOTF+xM=
X-Google-Smtp-Source: ADUXVKJ8vXn0ieAlgJ1fqwkft65yiAF4/DdjY3T5sT9U0Uq0TqgILjsJd+nFPk5fhUNu48wnJyjbEi++jmSxqNpR0SM=
X-Received: by 2002:a2e:9ac4:: with SMTP id p4-v6mr9104452ljj.60.1529354721775;
 Mon, 18 Jun 2018 13:45:21 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAP3WMuQfUAc9pP95Et_aQN5ko+6EYe4nYD7zwNXp8+5KPsz8XQ@mail.gmail.com>
Message-ID: <CAP3WMuQfUAc9pP95Et_aQN5ko+6EYe4nYD7zwNXp8+5KPsz8XQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 18 Jun 2018 21:45:21 +0100
From: Alex Rudyy <orudyy@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] [CVE-2018-8030] Apache Qpid Broker-J Denial of Service
 Vulnerability when AMQP 0-8...0-91 messages exceed maximum size limit
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, announce@apache.org

CVE-2018-8030: Apache Qpid Broker-J Denial of Service Vulnerability
when AMQP 0-8...0-91 messages exceed maximum size limit

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Versions 7.0.0-7.0.4

Description:

A Denial of Service vulnerability [1] was found in Apache Qpid Broker-J
versions 7.0.0-7.0.4 when AMQP protocols 0-8, 0-9 or 0-91 are used to
publish messages with size greater than allowed maximum message size limit
(100MB by default). The broker crashes due to the defect. AMQP protocols
0-10 and 1.0 are not affected.

Resolution:

Users of Broker-J versions 7.0.0-7.0.4 utilizing AMQP protocols 0-8, 0-9 or 0-91
for message publishing must upgrade to version 7.0.5 [2] or later.

Mitigation:

If upgrade of the broker is not possible, the maximum message size limit can be
disabled by setting context variable "qpid.max_message_size" to "0" or
any negative value. The change can be made either directly in the broker
configuration file, or by using management interfaces (for example,
REST API [3])
or by using JVM option -Dqpid.max_message_size=0. A broker restart is required
for the change to take effect.
Alternatively, the support for AMQP protocols 0-8...0-91 can be removed on
AMQP ports. The change can be made either directly in the broker configuration
file or by using management interfaces. An example of REST API call
restricting AMQP port to support only AMQP 1.0 and AMQP 0-10 using curl utility
is provided below:

curl --user <user-name> -X POST  -d '{"protocols":["AMQP_1_0","AMQP_0_10"]}' \
https://<broker host>:<broker port>/api/latest/port/<port name>

Credit: This issue was found by the Qpid development team.

References:

[1] https://issues.apache.org/jira/browse/QPID-8203
[2] https://qpid.apache.org/releases/qpid-broker-j-7.0.5/index.html
[3] https://qpid.apache.org/releases/qpid-broker-j-7.0.5/book/Java-Broker-Management-Channel-REST-API.html
