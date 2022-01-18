X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Tuesday" "18" "January" "2022" "14:42:17" "+0000" "Ralph Goers" "rgoers@apache.org" nil "26" "[oss-security] CVE-2022-23302: Deserialization of untrusted data in JMSSink in Apache Log4j 1.x " nil nil nil "1" nil nil (number mark "U       rgoers@apach Jan 18   26/911   " thread-indent "\"[oss-security] CVE-2022-23302: Deserialization of untrusted data in JMSSink in Apache Log4j 1.x \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23302: Deserialization of untrusted data in JMSSink in Apache Log4j 1.x " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16142 invoked by uid 550); 18 Jan 2022 14:47:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13461 invoked from network); 18 Jan 2022 14:42:31 -0000
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5f9df975-a7a3-a9c8-28b1-4331ab9b66c6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 18 Jan 2022 14:42:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23302: Deserialization of untrusted data in JMSSink in
 Apache Log4j 1.x 

Severity: high

Description:

JMSSink in all versions of Log4j 1.x is vulnerable to deserialization of un=
trusted data when the attacker has write access to the Log4j configuration =
or if the configuration references an LDAP service the attacker has access =
to. The attacker can provide a TopicConnectionFactoryBindingName configurat=
ion causing JMSSink to perform JNDI requests that result in remote code exe=
cution in a similar fashion to CVE-2021-4104.=20=20

Note this issue only affects Log4j 1.x when specifically configured to use =
JMSSink, which is not the default.

Apache Log4j 1.2 reached end of life in August 2015. Users should upgrade t=
o Log4j 2 as it addresses numerous other issues from the previous versions.

Mitigation:

Users should upgrade to Log4j 2 or remove usage of the JMSSink from their c=
onfigurations.

Credit:

Eduardo' Vela, Maksim Shudrak and Jacob Butler from Google.

