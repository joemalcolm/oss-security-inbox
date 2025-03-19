Received: (qmail 3798 invoked by uid 550); 19 Mar 2025 17:07:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28063 invoked from network); 19 Mar 2025 16:23:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Adarsh Sanjeev <adarshsanjeev@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <03056158-f8ea-2a79-0184-4948a57adbde@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Mar 2025 16:23:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27888: Apache Druid: Server-Side Request Forgery and
 Cross-Site Scripting 

Affected versions:

- Apache Druid before 31.0.2
- Apache Druid before 32.0.1

Description:

Severity: medium (5.8) / important

Server-Side Request Forgery (SSRF), Improper Neutralization of Input During=
 Web Page Generation ('Cross-site Scripting'),=C2=A0URL Redirection to Untr=
usted Site ('Open Redirect') vulnerability in Apache Druid.

This issue affects all previous Druid versions.


When using the Druid management proxy, a request that has a specially craft=
ed URL could be used to redirect the request to an arbitrary server instead=
. This has the potential for XSS or XSRF. The user is required to be authen=
ticated for this exploit. The management proxy is enabled in Druid's out-of=
-box configuration. It may be disabled to mitigate this vulnerability. If t=
he management proxy is disabled, some web console features will not work pr=
operly, but core functionality is unaffected.


Users are recommended to upgrade to Druid 31.0.2 or Druid 32.0.1, which fix=
es the issue.

References:

https://druid.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27888

