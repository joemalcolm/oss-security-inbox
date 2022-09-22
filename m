Received: (qmail 21703 invoked by uid 550); 22 Sep 2022 08:26:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11345 invoked from network); 22 Sep 2022 08:07:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b6dccca1-9e43-d746-f832-6767ab0d3d03@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Sep 2022 08:07:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40705: Apache SOAP: XML External Entity Injection (XXE)
 allows unauthenticated users to read arbitrary files via HTTP 

Severity: important

Description:

** UNSUPPORTED WHEN ASSIGNED ** An Improper Restriction of XML External Ent=
ity Reference vulnerability in RPCRouterServlet of Apache SOAP allows an at=
tacker to read arbitrary files over HTTP. This issue affects Apache SOAP ve=
rsion 2.2 and later versions. It is unknown whether previous versions are a=
lso affected.  NOTE: This vulnerability only affects products that are no l=
onger supported by the maintainer.

Mitigation:

We do not expect to release a version that fixes this problem. Instead, we =
recommend users to migrate to one of the other actively maintained web serv=
ice stacks such as Apache CXF (https://cxf.apache.org) or Apache Axis (http=
s://axis.apache.org).

Apache SOAP is an archived project, with the last release published in 2003=
. This means it is no longer maintained, does not receive updates, and we d=
o not commit to publishing CVE's for security problems in this project. Thi=
s advisory is published purely as a courtesy.

Credit:

Apache would like to thank TsungShu Chiu (CHT Security) for reporting this =
issue

