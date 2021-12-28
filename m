X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Tuesday" "28" "December" "2021" "19:26:40" "+0000" "Matt Sicker" "mattsicker@apache.org" nil "19" "[oss-security] CVE-2021-44832: Apache Log4j2 vulnerable to RCE via JDBC Appender when attacker controls configuration " nil nil nil "12" nil nil (number mark "U       mattsicker@a Dec 28   19/707   " thread-indent "\"[oss-security] CVE-2021-44832: Apache Log4j2 vulnerable to RCE via JDBC Appender when attacker controls configuration \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44832: Apache Log4j2 vulnerable to RCE via JDBC Appender when attacker controls configuration " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24457 invoked by uid 550); 28 Dec 2021 19:33:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22449 invoked from network); 28 Dec 2021 19:26:53 -0000
Content-Type: text/plain; charset=utf-8
From: Matt Sicker <mattsicker@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5814f3ea-59ae-7533-1ea5-6e7203561a5e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Dec 2021 19:26:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44832: Apache Log4j2 vulnerable to RCE via JDBC Appender
 when attacker controls configuration 

Severity: moderate

Description:

Apache Log4j2 versions 2.0-beta7 through 2.17.0 (excluding security fix rel=
eases 2.3.2 and 2.12.4) are vulnerable to a remote code execution (RCE) att=
ack where an attacker with permission to modify the logging configuration f=
ile can construct a malicious configuration using a JDBC Appender with a da=
ta source referencing a JNDI URI which can execute remote code. This issue =
is fixed by limiting JNDI data source names to the java protocol in Log4j2 =
versions 2.17.1, 2.12.4, and 2.3.2.

This issue is being tracked as LOG4J2-3293,

References:

https://lists.apache.org/thread/s1o5vlo78ypqxnzn6p8zf6t9shtq5143
https://issues.apache.org/jira/browse/LOG4J2-3293

