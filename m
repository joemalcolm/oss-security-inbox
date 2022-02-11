X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1185" "Friday" "11" "February" "2022" "02:08:41" "+0000" "Aristedes Maniatis" "amaniatis@apache.org" nil "34" "[oss-security] CVE-2022-24289: Apache Cayenne: Deserialization of untrusted data in the Hessian Component of Apache Cayenne 4.1 with older Java versions " nil nil nil "2" nil nil (number mark "U       amaniatis@ap Feb 11   34/1185  " thread-indent "\"[oss-security] CVE-2022-24289: Apache Cayenne: Deserialization of untrusted data in the Hessian Component of Apache Cayenne 4.1 with older Java versions \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-24289: Apache Cayenne: Deserialization of untrusted data in the Hessian Component of Apache Cayenne 4.1 with older Java versions " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19933 invoked by uid 550); 11 Feb 2022 12:21:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2042 invoked from network); 11 Feb 2022 02:08:55 -0000
Content-Type: text/plain; charset=utf-8
From: Aristedes Maniatis <amaniatis@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <59c2f992-ea03-6654-51da-b485f5a16d9b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Feb 2022 02:08:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24289: Apache Cayenne: Deserialization of untrusted data in the Hessian
 Component of Apache Cayenne 4.1 with older Java versions 

Severity: moderate

Description:

Hessian serialization is a network protocol that supports object-based tran=
smission.
Apache Cayenne's optional Remote Object Persistence (ROP) feature is a web =
services-based technology that provides object persistence and query functi=
onality to 'remote' applications.

In Apache Cayenne 4.1 and earlier, running on non-current patch versions of=
 Java, an attacker with client access to Cayenne ROP can transmit a malicio=
us payload to any vulnerable third-party dependency on the server.  This ca=
n result in arbitrary code execution.


Mitigation:

Either upgrade to Apache Cayenne 4.2 or a patched version of Java (after 6u=
211, 7u201, 8u191, and 11.0.1)

All versions of Apache Cayenne 4.2 have whitelisting enabled by default for=
 the Hessian deserialization.  Later versions of Java also have LDAP mitiga=
tion in place. Users can either upgrade Java or Apache Cayenne to avoid the=
 issue.

LDAP mitigation is present starting in JDK 6u211, 7u201, 8u191, and 11.0.1 =
where com.sun.jndi.ldap.object.trustURLCodebase system property is set to f=
alse by default to prevent JNDI from loading remote code through LDAP.

Credit:

Panda

