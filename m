X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1147" "Friday" "10" "December" "2021" "09:23:45" "+0000" "Ralph Goers" "rgoers@apache.org" nil "28" "[oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints " nil nil nil "12" nil nil (number mark "U       rgoers@apach Dec 10   28/1147  " thread-indent "\"[oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7726 invoked by uid 550); 10 Dec 2021 09:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1842 invoked from network); 10 Dec 2021 09:23:58 -0000
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <10f758e4-7ee5-b4a4-c4c4-54d2bd253ce8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Dec 2021 09:23:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against
 attacker controlled LDAP and other JNDI related endpoints 

Severity: critical

Description:

Apache Log4j2 <=3D2.14.1 JNDI features used in configuration, log messages,=
 and parameters do not protect against attacker controlled LDAP and other J=
NDI related endpoints. An attacker who can control log messages or log mess=
age parameters can execute arbitrary code loaded from LDAP servers when mes=
sage lookup substitution is enabled. From log4j 2.15.0, this behavior has b=
een disabled by default.=20

In previous releases (>2.10) this behavior can be mitigated by setting syst=
em property "log4j2.formatMsgNoLookups" to =E2=80=9Ctrue=E2=80=9D or by rem=
oving the JndiLookup class from the classpath (example: zip -q -d log4j-cor=
e-*.jar org/apache/logging/log4j/core/lookup/JndiLookup.class). Java 8u121 =
(see https://www.oracle.com/java/technologies/javase/8u121-relnotes.html) p=
rotects against remote code execution by defaulting "com.sun.jndi.rmi.objec=
t.trustURLCodebase" and "com.sun.jndi.cosnaming.object.trustURLCodebase" to=
 "false".

Credit:

This issue was discovered by Chen Zhaojun of Alibaba Cloud Security Team.

References:

https://logging.apache.org/log4j/2.x/security.html

