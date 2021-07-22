X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Thursday" "22" "July" "2021" "09:41:43" "+0000" "=?UTF-8?B?Wm9sdMOhbiBCb3LDs2stTmFneQ==?=" "boroknagyz@apache.org" nil "34" "[oss-security] CVE-2021-28131: Apache Impala: Impala logs contain secrets " nil nil nil "7" nil nil (number mark "U       boroknagyz@a Jul 22   34/1643  " thread-indent "\"[oss-security] CVE-2021-28131: Apache Impala: Impala logs contain secrets \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-28131: Apache Impala: Impala logs contain secrets " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25855 invoked by uid 550); 22 Jul 2021 10:55:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7178 invoked from network); 22 Jul 2021 09:41:56 -0000
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Zolt=C3=A1n_Bor=C3=B3k-Nagy?= <boroknagyz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <76117b25-4176-1f57-5800-ba1e7dc04f5a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Jul 2021 09:41:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-28131: Apache Impala: Impala logs contain secrets 

Severity: high

Description:

Impala sessions use a 16 byte secret to verify that the session is not bein=
g hijacked by another user. However, these secrets appear in the Impala log=
s, therefore Impala users with access to the logs can use another authentic=
ated user's sessions with specially constructed requests. This means the at=
tacker is able to execute statements for which they don't have the necessar=
y privileges otherwise.

Impala deployments with Apache Sentry or Apache Ranger authorization enable=
d may be vulnerable to privilege escalation if an authenticated attacker is=
 able to hijack a session or query from another authenticated user with pri=
vileges not assigned to the attacker.

Impala deployments with audit logging enabled may be vulnerable to incorrec=
t audit logging as a user could undertake actions that were logged under th=
e name of a different authenticated user.

Constructing an attack requires a high degree of technical sophistication a=
nd access to the Impala system as an authenticated user.

Mitigation: If an Impala deployment uses Apache Sentry, Apache Ranger or au=
dit logging, then users should upgrade to a version of Impala with the fix =
for IMPALA-10600. The Impala 4.0 release includes this fix. This hides sess=
ion secrets from the logs to eliminate the risk of any attack using this me=
chanism.

In lieu of an upgrade, restricting access to logs that expose secrets will =
reduce the risk of an attack. Restricting access to the Impala deployment t=
o trusted users will also reduce the risk of an attack. Log redaction techn=
iques can be used to redact secrets from the logs.

