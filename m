X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["885" "Friday" "11" "February" "2022" "10:01:38" "+0000" "Marcus Eriksson" "marcuse@apache.org" nil "31" "[oss-security] CVE-2021-44521: Apache Cassandra: Remote code execution for scripted UDFs " nil nil nil "2" nil nil (number mark "U       marcuse@apac Feb 11   31/885   " thread-indent "\"[oss-security] CVE-2021-44521: Apache Cassandra: Remote code execution for scripted UDFs \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44521: Apache Cassandra: Remote code execution for scripted UDFs " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15913 invoked by uid 550); 11 Feb 2022 12:43:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23675 invoked from network); 11 Feb 2022 10:02:17 -0000
Content-Type: text/plain; charset=utf-8
From: Marcus Eriksson <marcuse@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6ce2cc1a-3308-19a3-91d5-b5457ed6f2f5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Feb 2022 10:01:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44521: Apache Cassandra: Remote code execution for
 scripted UDFs 

Severity: high

Description:

When running Apache Cassandra with the following configuration:

enable_user_defined_functions: true
enable_scripted_user_defined_functions: true
enable_user_defined_functions_threads: false=20

it is possible for an attacker to execute arbitrary code on the host. The a=
ttacker would need to have enough permissions to create user defined functi=
ons in the cluster to be able to exploit this. Note that this configuration=
 is documented as unsafe, and will continue to be considered unsafe after t=
his CVE.

This issue is being tracked as CASSANDRA-17352

Mitigation:

Set `enable_user_defined_functions_threads: true` (this is default)
or
3.0 users should upgrade to 3.0.26
3.11 users should upgrade to 3.11.12
4.0 users should upgrade to 4.0.2

Credit:

This issue was discovered by Omer Kaspi of the JFrog Security vulnerability=
 research team.

