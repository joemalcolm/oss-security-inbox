Received: (qmail 24050 invoked by uid 550); 28 May 2025 15:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10148 invoked from network); 28 May 2025 13:26:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1df5fa0c-f218-7ae1-ac9a-e40ec8a6617c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 May 2025 13:26:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48734: Apache Commons BeanUtils: PropertyUtilsBean does
 not suppresses an enum's declaredClass property by default 

Severity: important

Affected versions:

- Apache Commons BeanUtils 1.x 1.0 before 1.11.0
- Apache Commons BeanUtils 2.x 2.0.0-M1 before 2.0.0-M2

Description:

Improper Access Control vulnerability in Apache Commons.



A special BeanIntrospector class was added in version 1.9.2. This can be us=
ed to stop attackers from using the declared class property of Java enum ob=
jects to get access to the classloader. However this protection was not ena=
bled by default. PropertyUtilsBean (and consequently BeanUtilsBean) now dis=
allows declared class level property access by default.





Releases 1.11.0 and 2.0.0-M2 address a potential security issue when access=
ing enum properties in an uncontrolled way. If an application using Commons=
 BeanUtils passes property paths from an external source directly to the ge=
tProperty() method of PropertyUtilsBean, an attacker can access the enum=E2=
=80=99s class loader via the =E2=80=9CdeclaredClass=E2=80=9D property avail=
able on all Java =E2=80=9Cenum=E2=80=9D objects. Accessing the enum=E2=80=
=99s =E2=80=9CdeclaredClass=E2=80=9D allows remote attackers to access the =
ClassLoader and execute arbitrary code. The same issue exists with Property=
UtilsBean.getNestedProperty().
Starting in versions 1.11.0 and 2.0.0-M2 a special BeanIntrospector suppres=
ses the =E2=80=9CdeclaredClass=E2=80=9D property. Note that this new BeanIn=
trospector is enabled by default, but you can disable it to regain the old =
behavior; see section 2.5 of the user's guide and the unit tests.

This issue affects Apache Commons BeanUtils 1.x before 1.11.0, and 2.x befo=
re 2.0.0-M2.Users of the artifact commons-beanutils:commons-beanutils

 1.x are recommended to upgrade to version 1.11.0, which fixes the issue.


Users of the artifact org.apache.commons:commons-beanutils2

 2.x are recommended to upgrade to version 2.0.0-M2, which fixes the issue.

Credit:

Raj (mailto:denesh.raj@zohocorp.com) (reporter)
Muthukumar Marikani (mailto:muthukumar.marikani@zohocorp.com) (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-48734

