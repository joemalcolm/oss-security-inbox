X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Thursday" "16" "July" "2015" "12:02:21" "+0200" "=?UTF-8?B?Q8OpZHJpYyBDaGFtcGVhdQ==?=" "cchampeau@apache.org" "<CADQzvmmYC7RbZnsQ8O63XN4HCMYh9RGRdMiuWupVt=u=pjH8+g@mail.gmail.com>" "48" "[oss-security] [CVE-2015-3253] Apache Groovy Zero-Day Vulnerability Disclosure" nil nil nil "7" "2015071610:02:21" "[oss-security] [CVE-2015-3253] Apache Groovy Zero-Day Vulnerability Disclosure" (number mark "        cchampeau@ap Jul 16   48/1390  " thread-indent "\"[oss-security] [CVE-2015-3253] Apache Groovy Zero-Day Vulnerability Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12012 invoked by uid 550); 16 Jul 2015 10:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32100 invoked from network); 16 Jul 2015 10:02:36 -0000
MIME-Version: 1.0
X-Received: by 10.112.10.166 with SMTP id j6mr7773176lbb.120.1437040941380;
 Thu, 16 Jul 2015 03:02:21 -0700 (PDT)
Message-ID: <CADQzvmmYC7RbZnsQ8O63XN4HCMYh9RGRdMiuWupVt=u=pjH8+g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11347cfad6bad8051afb2aff
Cc: security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Date: Thu, 16 Jul 2015 12:02:21 +0200
From: =?UTF-8?Q?C=C3=A9dric_Champeau?= <cchampeau@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-3253] Apache Groovy Zero-Day Vulnerability Disclosure
To: users@groovy.incubator.apache.org, dev@groovy.incubator.apache.org

--001a11347cfad6bad8051afb2aff
Content-Type: text/plain; charset=UTF-8

*Severity*: Important

*Vendor*: The Apache Software Foundation
*Versions Affected*:

All unsupported versions ranging from 1.7.0 to 2.4.3.

*Impact*

Remote execution of untrusted code, DoS

*Description*

When an application has Groovy on classpath and that it uses standard Java
serialization mechanims to communicate between servers, or to store local
data, it is possible for an attacker to bake a special serialized object
that will execute code directly when deserialized. All applications which
rely on serialization and do not isolate the code which deserializes
objects are subject to this vulnerability.

*Mitigation*

Apache Groovy 2.4.4 is the first and only supported release under the
Apache Software Foundation. It is strongly recommanded that all users
upgrade to this version. If you cannot upgrade or rely on an older,
unsupported version of Groovy, you can apply the following patch on the
MethodClosure class
(src/main/org/codehaus/groovy/runtime/MethodClosure.java):

 public class MethodClosure extends Closure {
+    private Object readResolve() {
+        throw new UnsupportedOperationException();
+    }

*Credit*

This vulnerability was discovered by:

   cpnrodzc7 working with HP's Zero Day Initiative

*References*

http://groovy-lang.org/security.html

--001a11347cfad6bad8051afb2aff--
