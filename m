X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1096" "Thursday" "10" "September" "2020" "11:45:14" "+0200" "Jean-Baptiste Onofre" "jb@nanthrax.net" "<63E9EEC8-9E07-4CE5-B5EE-406FAFFBC1F4@nanthrax.net>" "34" "[oss-security] [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute arbitrary code" nil nil nil "9" "2020091009:45:14" "[oss-security] [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute arbitrary code" (number mark "U       jb@nanthrax. Sep 10   34/1096  " thread-indent "\"[oss-security] [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute arbitrary code\"\n") "<2A06806A-5F35-436B-9D62-53AF557309A8@nanthrax.net>" ("<2A06806A-5F35-436B-9D62-53AF557309A8@nanthrax.net>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute arbitrary code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3974 invoked by uid 550); 10 Sep 2020 13:03:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13863 invoked from network); 10 Sep 2020 09:45:30 -0000
X-Originating-IP: 82.64.90.43
From: Jean-Baptiste Onofre <jb@nanthrax.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CF856646-6B6A-48C7-A3FD-98D580392161"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <63E9EEC8-9E07-4CE5-B5EE-406FAFFBC1F4@nanthrax.net>
References: <2A06806A-5F35-436B-9D62-53AF557309A8@nanthrax.net>
To: oss-security@lists.openwall.com
Date: Thu, 10 Sep 2020 11:45:14 +0200
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: [oss-security] [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute
 arbitrary code

--Apple-Mail=_CF856646-6B6A-48C7-A3FD-98D580392161
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-11998: Apache ActiveMQ JMX remote client could execute arbitrary c=
ode

Severity: Moderate

Vendor: The Apache Software Foundation

Affected Version: only Apache ActiveMQ 5.15.12

Vulnerability details:=20
A regression has been introduced in the commit preventing JMX re-bind.
By passing an empty environment map to RMIConnectorServer, instead of the m=
ap that contains
he authentication credentials, it leaves ActiveMQ open to the following att=
ack:

 https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.ht=
ml

"A remote client could create a javax.management.loading.MLet MBean and use
it to create new MBeans from arbitrary URLs, at least if there is no
security manager. In other words, a rogue remote client could make your
Java application execute arbitrary code."

Mitigation: Upgrade to Apache ActiveMQ 5.15.13

Credit: Jonathan Gallimore & Colm O hEigeartaigh

--Apple-Mail=_CF856646-6B6A-48C7-A3FD-98D580392161--
