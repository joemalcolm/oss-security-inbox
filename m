X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4251" "Thursday" "13" "July" "2017" "09:50:48" "+0200" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkPOZeL2xF=-Xoq-06CZirag9KoSpx9urSKbNvEMSCOMbw@mail.gmail.com>" "95" "[oss-security] [ANN] Apache Struts 2.5.12 GA with Security Fixes Release" nil nil nil "7" "2017071307:50:48" "[oss-security] [ANN] Apache Struts 2.5.12 GA with Security Fixes Release" (number mark "U       lukaszlenart Jul 13   95/4251  " thread-indent "\"[oss-security] [ANN] Apache Struts 2.5.12 GA with Security Fixes Release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29777 invoked by uid 550); 13 Jul 2017 09:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29971 invoked from network); 13 Jul 2017 07:51:24 -0000
X-Gm-Message-State: AIVw110tkXHZIhg522LwHvSO6BqoIrvk7mw/lSCR/D6owk/VMO7Pof5L
	1chhmabNevkLCQpl2eQEQ6ynPN428Q==
X-Received: by 10.202.253.195 with SMTP id b186mr1962783oii.54.1499932269465;
 Thu, 13 Jul 2017 00:51:09 -0700 (PDT)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Thu, 13 Jul 2017 09:50:48 +0200
X-Gmail-Original-Message-ID: <CAMopvkPOZeL2xF=-Xoq-06CZirag9KoSpx9urSKbNvEMSCOMbw@mail.gmail.com>
Message-ID: <CAMopvkPOZeL2xF=-Xoq-06CZirag9KoSpx9urSKbNvEMSCOMbw@mail.gmail.com>
To: Struts Users Mailing List <user@struts.apache.org>
Cc: "announcements@struts.apache.org" <announcements@struts.apache.org>, 
	Struts Developers List <dev@struts.apache.org>, announce@apache.org, 
	"security@struts.apache.org" <security@struts.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, Jonathan Bullock <jonbullock@gmail.com>, 
	Yasser Zamani <yasser.zamani@live.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANN] Apache Struts 2.5.12 GA with Security Fixes Release

The Apache Struts group is pleased to announce that Struts 2.5.12 is
available as a =E2=80=9CGeneral Availability=E2=80=9D release. The GA desig=
nation is
our highest quality grade.

Apache Struts 2 is an elegant, extensible framework for creating
enterprise-ready Java web applications. The framework is designed to
streamline the full development cycle, from building, to deploying, to
maintaining applications over time.

This release contains fixes for the following potential security
vulnerabilities:

- S2-047 Possible DoS attack when using URLValidator
  http://struts.apache.org/docs/s2-047.html
- S2-049 A DoS attack is available for Spring secured actions
  http://struts.apache.org/docs/s2-049.html

Except the above this release also contains several improvements just
to mention few of them:

- `double` and `Double` are not validated with the same decimal separator
- `ognl.MethodFailedException` when you do not enter a value for a
field mapped to an int
- `Double` Value Conversion with requestLocale=3Dde
- The `TextProvider` injection in `ActionSupport` isn't quite
integrated into the framework's core DI
- Struts2 raise `java.lang.ClassCastException` when Result type is `chain`
- `@InputConfig` annotation is not working when integrating with spring aop
- Validators do not work for multiple values
- `BigDecimal` are not converted according context locale
- `NullPointerException` when displaying a form without action attribute
- Http Sessions forcefully created for all requests using
I18nInterceptor with default Storage value.
- `cssErrorClass` attribute has no effect on `label` tag
- Why `JSONValidationInterceptor` return Status Code `400 BAD_REQUEST`
instead of `200 SUCCESS`
- @autowired does not work since Struts 2.3.28.1
- Mixed content https to http when upgraded to 2.3.32 or 2.5.10.1
- Upgrade from struts2-tiles3-plugin to struts2-tiles-plugin gives a
NoSuchDefinitionException
- Aspects are not executed when chaining AOPed actions
- Duplicate hidden input field checkboxListHandler
- The value of checkbox getted in server-side is "false" when no any
checkbox been selected.
- refactor file upload framework
- `creditCard` validator available in Struts 1 missing in Struts 2
- No easy way to have an empty interceptor stack if have default stack
- `@TypeConversion` converter attribute to class
- Convert `LocalizedTextUtil` into a bean with default implementation
- NPE in `StrutsTilesContainerFactory` when resource isn't found
- Buffer/Flush behaviour in `FreemarkerResult`
- Struts2 should know and consider config time class of user's Actions
- getters of exclude-sets in OgnlUtil should return immutable collections
- Mark `site-graph` plugin as deprecated
- Use `TextProviderFactory` instead of `TextProvider` as bean's dependency
- Create `LocaleProviderFactory` and uses instead of `LocaleProvider`
- Improve error logging in `DefaultDispatcherErrorHandler`
- Make `jakarta-stream` multipart parser more extensible
- Make Multipart parsers more extensible
- Add proper validation if request is a multipart request
- Make `SecurityMethodAccess` excluded classes & packages definitions immut=
able
- Upgrade to Log4j2 2.8.2
- Allow disable file upload support via an configurable option
- Stop using `DefaultLocalizedTextProvider#localeFromString` static util me=
thod
- Don't add `JBossFileManager` as a possible FileManager when not on JBoss
- There is no `@LongRangeFieldValidator` annotation to support
`LongRangeFieldValidator`
- Upgrade to commons-lang 3.6
- Update commons-fileupload

Please read the Version Notes to find more details about performed bug
fixes and improvements.
http://struts.apache.org/docs/version-notes-2512.html

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
