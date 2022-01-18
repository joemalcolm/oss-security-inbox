X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1170" "Tuesday" "18" "January" "2022" "14:42:35" "+0000" "Ralph Goers" "rgoers@apache.org" nil "33" "[oss-security] CVE-2022-23305: SQL injection in JDBC Appender in Apache Log4j V1 " nil nil nil "1" nil nil (number mark "U       rgoers@apach Jan 18   33/1170  " thread-indent "\"[oss-security] CVE-2022-23305: SQL injection in JDBC Appender in Apache Log4j V1 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23305: SQL injection in JDBC Appender in Apache Log4j V1 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17489 invoked by uid 550); 18 Jan 2022 14:47:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13625 invoked from network); 18 Jan 2022 14:42:50 -0000
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <943ce266-8f32-d763-2980-41c3126222d3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 18 Jan 2022 14:42:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23305: SQL injection in JDBC Appender in Apache Log4j V1 

Severity: high

Description:

By design, the JDBCAppender in Log4j 1.2.x accepts an SQL statement as a co=
nfiguration parameter where the values to be inserted are converters from P=
atternLayout. The message converter, %m, is likely to always be included. T=
his allows attackers to manipulate the SQL by entering crafted strings into=
 input fields or headers of an application that are logged allowing uninten=
ded SQL queries to be executed.

Note this issue only affects Log4j 1.x when specifically configured to use =
the JDBCAppender, which is not the default. Beginning in version 2.0-beta8,=
 the JDBCAppender was re-introduced with proper support for parameterized S=
QL queries and further customization over the columns written to in logs.

Apache Log4j 1.2 reached end of life in August 2015. Users should upgrade t=
o Log4j 2 as it addresses numerous other issues from the previous versions.

Mitigation:

Users should upgrade to Log4j 2 or remove usage of the JDBCAppender from th=
eir configurations.

Credit:

Daniel Martin of NCC Group

References:

https://logging.apache.org/log4j/2.x/security.html
https://issues.apache.org/jira/browse/LOG4J2-229

