X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1285" "Tuesday" "14" "December" "2021" "16:52:05" "+0000" "Ron Grabowski" "rgrabowski@apache.org" nil "27" "[oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack " nil nil nil "12" nil nil (number mark "U       rgrabowski@a Dec 14   27/1285  " thread-indent "\"[oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13581 invoked by uid 550); 14 Dec 2021 17:09:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32159 invoked from network); 14 Dec 2021 16:52:46 -0000
Content-Type: text/plain; charset=utf-8
From: Ron Grabowski <rgrabowski@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b1b3fb6f-a394-ede3-0c3c-ea2c11018062@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Dec 2021 16:52:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and
 Context Lookup Pattern vulnerable to a denial of service attack 

Severity: moderate (CVSS: 3.7 AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L)

Description:

It was found that the fix to address CVE-2021-44228 in Apache Log4j 2.15.0 =
was incomplete in certain non-default configurations. This could allows att=
ackers with control over Thread Context Map (MDC) input data when the loggi=
ng configuration uses a non-default Pattern Layout with either a Context Lo=
okup (for example, $${ctx:loginId}) or a Thread Context Map pattern (%X, %m=
dc, or %MDC) to craft malicious input data using a JNDI Lookup pattern resu=
lting in a denial of service (DOS) attack. Log4j 2.15.0 restricts JNDI LDAP=
 lookups to localhost by default. Note that previous mitigations involving =
configuration such as to set the system property `log4j2.noFormatMsgLookup`=
 to `true` do NOT mitigate this specific vulnerability.

Log4j 2.16.0 fixes this issue by removing support for message lookup patter=
ns and disabling JNDI functionality by default.=20=20

This issue can be mitigated in prior releases (<2.16.0) by removing the Jnd=
iLookup class from the classpath (example: zip -q -d log4j-core-*.jar org/a=
pache/logging/log4j/core/lookup/JndiLookup.class).

References:

https://logging.apache.org/log4j/2.x/security.html
https://www.cve.org/CVERecord?id=3DCVE-2021-44228

