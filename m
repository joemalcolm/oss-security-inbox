Received: (qmail 14324 invoked by uid 550); 11 Sep 2022 09:21:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7674 invoked from network); 11 Sep 2022 08:03:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ruben Q L <rubenql@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4739a75c-ca38-1f2a-babc-ee4fc3b427e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Sep 2022 08:03:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-39135: Apache Calcite: potential XEE attacks 

Description:

In Apache Calcite prior to version 1.32.0 the SQL operators EXISTS_NODE, EX=
TRACT_XML, XML_TRANSFORM and EXTRACT_VALUE do not restrict XML External Ent=
ity references in their configuration, which makes them vulnerable to a pot=
ential XML External Entity (XXE) attack. Therefore any client exposing thes=
e operators, typically by using Oracle dialect (the first three) or MySQL d=
ialect (the last one), is affected by this vulnerability (the extent of it =
will depend on the user under which the application is running).

>From Apache Calcite 1.32.0 onwards, Document Type Declarations and XML Exte=
rnal Entity resolution are disabled on the impacted operators.

Credit:

Apache Calcite would like to thank David Handermann for reporting this issue

