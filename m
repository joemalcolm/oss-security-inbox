Received: (qmail 10156 invoked by uid 550); 28 Jul 2022 08:17:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20146 invoked from network); 28 Jul 2022 07:38:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ruben Q L <rubenql@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9f4f4eb2-79d4-0351-0d36-05443710c549@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Jul 2022 07:38:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-36364: Apache Calcite Avatica JDBC driver
 `httpclient_impl` connection property can be used as an RCE vector 

Severity: moderate

Description:

Apache Calcite Avatica JDBC driver creates HTTP client instances based on c=
lass names provided via `httpclient_impl` connection property; however, the=
 driver does not verify if the class implements the expected interface befo=
re instantiating it, which can lead to code execution loaded via arbitrary =
classes and in rare cases remote code execution.

To exploit the vulnerability:
1) the attacker needs to have privileges to control JDBC connection paramet=
ers;
2) and there should be a vulnerable class (constructor with URL parameter a=
nd ability to execute code) in the classpath.

>From Apache Calcite Avatica 1.22.0 onwards, it will be verified that the cl=
ass implements the expected interface before invoking its constructor.

Credit:

Apache Calcite Avatica would like to thank Peter M (https://twitter.com/h1p=
mnh) for reporting this issue

