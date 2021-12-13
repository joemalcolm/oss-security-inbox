X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["846" "Monday" "13" "December" "2021" "16:10:57" "+0000" "Ralph Goers" "rgoers@apache.org" nil "20" "[oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2 " nil nil nil "12" nil nil (number mark "U       rgoers@apach Dec 13   20/846   " thread-indent "\"[oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24178 invoked by uid 550); 13 Dec 2021 17:44:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30055 invoked from network); 13 Dec 2021 16:11:11 -0000
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cd490e11-90d5-946a-eeaf-d17e4391f788@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Dec 2021 16:10:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in
 Apache Log4j 1.2 

Description:

JMSAppender in Log4j 1.2 is vulnerable to deserialization of untrusted data=
 when the attacker has write access to the Log4j configuration. The attacke=
r can provide TopicBindingName and TopicConnectionFactoryBindingName config=
urations causing JMSAppender to perform JNDI requests that result in remote=
 code execution in a similar fashion to CVE-2021-44228.=20=20

Note this issue only affects Log4j 1.2 when specifically configured to use =
JMSAppender, which is not the default.

Apache Log4j 1.2 reached end of life in August 2015. Users should upgrade t=
o Log4j 2 as it addresses numerous other issues from the previous versions.

References:

https://www.cve.org/CVERecord?id=3DCVE-2021-44228
https://github.com/apache/logging-log4j2/pull/608#issuecomment-990494126
https://access.redhat.com/security/cve/CVE-2021-4104

