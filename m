X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1836" "Saturday" "14" "January" "2017" "22:36:28" "+1000" "Paul King" "paulk@apache.org" "<CADRx3PMtBZ2Tf8mOdeFd6JbBFah6HVFV-x0L1+4eHdLP66nApA@mail.gmail.com>" "63" "[oss-security] [CVE-2016-6814] Apache Groovy Information Disclosure" "^Cc:" nil nil "1" "2017011412:36:28" "[oss-security] [CVE-2016-6814] Apache Groovy Information Disclosure" (number mark "U       paulk@apache Jan 14   63/1836  " thread-indent "\"[oss-security] [CVE-2016-6814] Apache Groovy Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8052 invoked by uid 550); 14 Jan 2017 13:46:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31951 invoked from network); 14 Jan 2017 12:36:42 -0000
X-Gm-Message-State: AIkVDXKdoLWYrHPS2mQEB6r/mju7wql50rJAsLiihUxAHuoUrK55qqjO6itBY+VKhACkSp7GrETCmH/WfwTEBw==
X-Received: by 10.36.204.138 with SMTP id x132mr7276949itf.77.1484397389089;
 Sat, 14 Jan 2017 04:36:29 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CADRx3PMtBZ2Tf8mOdeFd6JbBFah6HVFV-x0L1+4eHdLP66nApA@mail.gmail.com>
Message-ID: <CADRx3PMtBZ2Tf8mOdeFd6JbBFah6HVFV-x0L1+4eHdLP66nApA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Sat, 14 Jan 2017 22:36:28 +1000
From: Paul King <paulk@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2016-6814] Apache Groovy Information Disclosure
To: paulk@apache.org

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:

* Unsupported Codehaus versions of Groovy from 1.7.0 to 2.4.3
* Apache Groovy 2.4.4 to 2.4.7
* Fixed in version 2.4.8

Impact:

Remote execution of untrusted code, DoS

Description:

When an application with Groovy on classpath uses standard
Java serialization mechanisms, e.g. to communicate between servers
or to store local data, it is possible for an attacker to bake a special
serialized object that will execute code directly when deserialized.
All applications which rely on serialization and do not isolate the
code which deserializes objects are subject to this vulnerability.
This is similar to CVE-2015-3253 but this exploit involves extra
wrapping of objects and catching of exceptions which are now safe
guarded against.

Mitigation:

Users of Groovy relying on (de)serialization with the affected versions
should apply one of the following mitigations:

* Isolate the code doing the (de)serialization
* Upgrade to Apache Groovy 2.4.8 or later
* Users of older versions of Groovy can apply the following patch to the
`MethodClosure` class
(`src/main/org/codehaus/groovy/runtime/MethodClosure.java`):

```
public class MethodClosure extends Closure {
+    private void readObject(java.io.ObjectInputStream stream) throws
IOException, ClassNotFoundException {
+        if (ALLOW_RESOLVE) {
+            stream.defaultReadObject();
+        }
+        throw new UnsupportedOperationException();
+    }
```

Credit:

This vulnerability was discovered by:

* Sam Thomas of Pentest Limited working with Trend Micro's Zero Day Initiative

History:

* 2016-09-20 Original advisory
* 2017-01-12 Updated information on affected versions

References:

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6814
* http://groovy-lang.org/security.html
