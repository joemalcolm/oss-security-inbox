X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3177" "Tuesday" "5" "September" "2017" "15:17:09" "+0200" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkNPG--EVqRtg4rO0G1bYrJ0cgYiBh=P=o2poEZq8kvdtQ@mail.gmail.com>" "80" "[oss-security] [ANN] Apache Struts 2.5.13 GA with Security Fixes Release" nil nil nil "9" "2017090513:17:09" "[oss-security] [ANN] Apache Struts 2.5.13 GA with Security Fixes Release" (number mark "U       lukaszlenart Sep  5   80/3177  " thread-indent "\"[oss-security] [ANN] Apache Struts 2.5.13 GA with Security Fixes Release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32488 invoked by uid 550); 5 Sep 2017 13:40:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11846 invoked from network); 5 Sep 2017 13:17:47 -0000
X-Gm-Message-State: AHPjjUjCv8f9nUwpOilzvfD0oN2HU1WJnFV7wlUyluYmMF6Y8JgAN65/
	aKjbG0COi5A2Eg6CU6PM1k8/q9UTOA==
X-Google-Smtp-Source: ADKCNb6RiyUhVyRHRTS4gnnBI66iX/e01SmzXG11Oe0D7LM0z+PsnhaoFKZJAnGdST6LSWRzs/NwaNmPjbfnoM/1Z0I=
X-Received: by 10.46.68.9 with SMTP id r9mr1538505lja.174.1504617449943; Tue,
 05 Sep 2017 06:17:29 -0700 (PDT)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Tue, 5 Sep 2017 15:17:09 +0200
X-Gmail-Original-Message-ID: <CAMopvkNPG--EVqRtg4rO0G1bYrJ0cgYiBh=P=o2poEZq8kvdtQ@mail.gmail.com>
Message-ID: <CAMopvkNPG--EVqRtg4rO0G1bYrJ0cgYiBh=P=o2poEZq8kvdtQ@mail.gmail.com>
To: Struts Users Mailing List <user@struts.apache.org>
Cc: "announcements@struts.apache.org" <announcements@struts.apache.org>, 
	Struts Developers List <dev@struts.apache.org>, announce@apache.org, 
	"security@struts.apache.org" <security@struts.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, Jonathan Bullock <jonbullock@gmail.com>, 
	Man Yue Mo <mmo@semmle.com>, Bas van Schaik <bas@semmle.com>, Adam Cazzolla <acazzolla@sonatype.com>, 
	chenhuijun <874892484@qq.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANN] Apache Struts 2.5.13 GA with Security Fixes Release

The Apache Struts group is pleased to announce that Struts 2.5.13 is
available as a =E2=80=9CGeneral Availability=E2=80=9D release. The GA desig=
nation is
our highest quality grade.

Apache Struts 2 is an elegant, extensible framework for creating
enterprise-ready Java web applications. The framework is designed to
streamline the full development cycle, from building, to deploying, to
maintaining applications over time.

This release contains fixes for the following potential security
vulnerabilities:

- S2-050 A regular expression Denial of Service when using
URLValidator (similar to S2-044 & S2-047)
    http://struts.apache.org/docs/s2-050.html
- S2-051 A remote attacker may create a DoS attack by sending crafted
xml request when using the Struts REST plugin
    http://struts.apache.org/docs/s2-051.html
- S2-052 Possible Remote Code Execution attack when using the Struts
REST plugin with XStream handler to handle XML payloads
    http://struts.apache.org/docs/s2-050.html

Except the above this release also contains several improvements just
to mention few of them:

Except the above this release also contains several improvements just
to mention few of them:

- Struts2 JSON Plugin: Send Map with Strings as Key to JSON Action is
ignored, Numeric Keys will work and mapped
- NP with TextProvider and wildcardmapping
- Threads get blocked due to unnecessary synchronization in OgnlRuntime
- Default Multipart validation regex is invalid
- Not fully initialized ObjectFactory tries to create beans
- http://struts.apache.org/dtds/struts-2.5.dtd missing
- Set a global resource bundle in class
- Override TextProvider doesnot work in struts 2.5.12
- Array-of-null parameters are converted to string =E2=80=9Cnull=E2=80=9D
- JakartaStreamMultiPartRequest Should Honor =E2=80=9Cstruts.multipart.maxS=
ize=E2=80=9D
- Build Fails Due to Unused com.sun Import
- Struts2.5.12 - NPE in DeligatingValidatorContext
- Struts 2 Fails to Initialize with JRebel
- Allow define more than one Action suffix
- Remove jQuery from debugging interceptor views
- update dependencies page on the struts site
- Improve RegEx used to validate URLs
- Make REST ContentHandlers configurable
- expose Freemarker incompatible_improvements into FreemarkerManager
and StrutsBeansWrapper
- Upgrade Commons Collections to 3.2.2
- Upgrade Commons IO to 2.5
- Upgrade to ASM version 5.2
- Upgrade to OGNL 3.1.15
- Upgrade xstream to the latest version
- Upgrade to struts-master 11

Please read the Version Notes to find more details about performed bug
fixes and improvements.
http://struts.apache.org/docs/version-notes-2513.html

All developers are strongly advised to perform this action.

The 2.5.x series of the Apache Struts framework has a minimum
requirement of the following specification versions: Servlet API 2.4,
JSP API 2.0, and Java 7.

Should any issues arise with your use of any version of the Struts
framework, please post your comments to the user list, and, if
appropriate, file a tracking ticket.

You can download this version from our download page.
http://struts.apache.org/download.cgi#struts-ga


Regards
--=20
=C5=81ukasz
+ 48 606 323 122 http://www.lenart.org.pl/
