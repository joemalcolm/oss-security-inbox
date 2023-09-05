Received: (qmail 7424 invoked by uid 550); 5 Sep 2023 11:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5817 invoked from network); 5 Sep 2023 09:35:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <68fdf04f-c761-5eee-3a08-e9285f2ae320@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Sep 2023 09:35:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40743: Apache Axis 1.x (EOL) may allow RCE when untrusted
 input is passed to getService 

Severity: low

Affected versions:

- Apache Axis through 1.3

Description:

** UNSUPPORTED WHEN ASSIGNED ** When integrating Apache Axis 1.x in an appl=
ication, it may not have been obvious that looking up a service through "Se=
rviceFactory.getService" allows potentially dangerous lookup mechanisms suc=
h as LDAP. When passing untrusted input to this API method, this could expo=
se the application to DoS, SSRF and even attacks leading to RCE.

As Axis 1 has been EOL we recommend you migrate to a different SOAP engine,=
 such as Apache Axis 2/Java. As a workaround, you may review your code to v=
erify no untrusted or unsanitized input is passed to "ServiceFactory.getSer=
vice", or by applying the patch from  https://github.com/apache/axis-axis1-=
java/commit/7e66753427466590d6def0125e448d2791723210 . The Apache Axis proj=
ect does not expect to create an Axis 1.x release fixing this problem, thou=
gh contributors that would like to work towards this are welcome.

Credit:

Letian Yuan (finder)

References:

https://github.com/apache/axis-axis1-java/commit/7e66753427466590d6def0125e=
448d2791723210
https://axis.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40743

