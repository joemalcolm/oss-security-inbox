X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1740" "Thursday" "7" "September" "2017" "10:24:38" "+0200" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkOyO1_KUpjHXO0EjVDDrs6tYRW=X9B8LpekG1YKvoVLLQ@mail.gmail.com>" "44" "[oss-security] [ANN] Apache Struts 2.3.34 General Availability with Security Fixes Release" nil nil nil "9" "2017090708:24:38" "[oss-security] [ANN] Apache Struts 2.3.34 General Availability with Security Fixes Release" (number mark "U       lukaszlenart Sep  7   44/1740  " thread-indent "\"[oss-security] [ANN] Apache Struts 2.3.34 General Availability with Security Fixes Release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14257 invoked by uid 550); 7 Sep 2017 08:35:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7616 invoked from network); 7 Sep 2017 08:25:17 -0000
X-Gm-Message-State: AHPjjUhNAZV977EhCumwzmDRVKGbP9HqTrnYT3GeQAmPOGGnyGSO3+4R
	VN1jdmgpNWCk2iSVyYmdcq8vSfdCkA==
X-Google-Smtp-Source: ADKCNb6K/1nR5LrUlIwo9qW8oX1K+jhqgxui9qb7lUHe5Ewn9MrZUDnINnRGlKOcB8buQhHRWubhXnUdsBpxin0gla4=
X-Received: by 10.46.97.26 with SMTP id v26mr706157ljb.176.1504772698935; Thu,
 07 Sep 2017 01:24:58 -0700 (PDT)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Thu, 7 Sep 2017 10:24:38 +0200
X-Gmail-Original-Message-ID: <CAMopvkOyO1_KUpjHXO0EjVDDrs6tYRW=X9B8LpekG1YKvoVLLQ@mail.gmail.com>
Message-ID: <CAMopvkOyO1_KUpjHXO0EjVDDrs6tYRW=X9B8LpekG1YKvoVLLQ@mail.gmail.com>
To: "announcements@struts.apache.org" <announcements@struts.apache.org>, 
	Struts Developers List <dev@struts.apache.org>, announce@apache.org, 
	"security@struts.apache.org" <security@struts.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, Adam Cazzolla <acazzolla@sonatype.com>, 
	Jonathan Bullock <jonbullock@gmail.com>, Man Yue Mo <mmo@semmle.com>, Bas van Schaik <bas@semmle.com>, 
	lupin1314@gmail.com, rgm <struts@rgm.nu>, David Greene <david@trumpetx.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANN] Apache Struts 2.3.34 General Availability with Security Fixes Release

The Apache Struts group is pleased to announce that Struts 2.3.34 is
available as a =E2=80=9CGeneral Availability=E2=80=9D release. The GA desig=
nation is
our highest quality grade.

This release addresses these potential security vulnerabilities:
- S2-050 A regular expression Denial of Service when using
URLValidator (similar to S2-044 & S2-047)
- S2-051 A remote attacker may create a DoS attack by sending crafted
xml request when using the Struts REST plugin
- S2-052 Possible Remote Code Execution attack when using the Struts
REST plugin with XStream handler to handle XML payloads
- S2-053 A possible Remote Code Execution attack when using an
unintentional expression in Freemarker tag instead of string literals

This release contains several minor improvements just to mention few of the=
m:
 - Struts2 JSON Plugin: Send Map with Strings as Key to JSON Action is
ignored, Numeric Keys will work and mapped
 - Threads get blocked due to unnecessary synchronization in OgnlRuntime
 - Upgrade to OGNL 3.0.21
 - Upgrade to struts-master 11
 - Improve RegEx used to validate URLs

More details in version notes
http://struts.apache.org/docs/version-notes-2334.html

All developers are strongly advised to perform this action.

The 2.3.x series of the Apache Struts framework has a minimum
requirement of the following specification versions: Servlet API 2.4,
JSP API 2.0, and Java 6.
Should any issues arise with your use of any version of the Struts
framework, please post your comments to the user list, and, if
appropriate, file a tracking ticket.

You can download this version from our download page.
http://struts.apache.org/download.html#struts-23x


Kind regards
--=20
=C5=81ukasz
+ 48 606 323 122 http://www.lenart.org.pl/
