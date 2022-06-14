Received: (qmail 32316 invoked by uid 550); 14 Jun 2022 09:08:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18390 invoked from network); 14 Jun 2022 07:22:12 -0000
From: Ralph Goers <rgoers@apache.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Message-Id: <EC5BDCA4-8FF7-41E0-9177-5F4DD8A96841@apache.org>
Date: Tue, 14 Jun 2022 00:22:00 -0700
Cc: oss-security@lists.openwall.com
To: announce@apache.org
X-Mailer: Apple Mail (2.3696.100.31)
Subject: [oss-security] CVE-2022-25167 - Apache Flume JMSSource does not protect from
 malicious JNDI urls

Severity, medium

Description:

Flume=E2=80=99s JMSSource class can be configured with a connection factory=
 name. A JNDI lookup is performed on this name without performing an valida=
tion. This could result in untrusted data being deserialized.

Mitigation
Upgrade to Flume 1.10.0.

In releases 1.4.0 through 1.9.0 the JMSSource should not be used.

Release Details
In release 1.10.0, if a protocol is specified in the connection factory par=
ameter only the java protocol will be allowed. If no protocol is specified =
it will also be allowed.

Credit
This issue was found by the Flume development team.=
