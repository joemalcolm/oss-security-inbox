X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["790" "Tuesday" "10" "September" "2019" "15:29:27" "-0700" "Jacopo Cappellato" "jacopoc@apache.org" "<CAEvdU_1YsVy-7xZNn-uHDjzsbsUHvQNL-8ue5Dzb2q1kaF1UdA@mail.gmail.com>" "32" "[oss-security] [CVE-2019-10074] Apache OFBiz RCE (template injection)" nil nil nil "9" "2019091022:29:27" "[oss-security] [CVE-2019-10074] Apache OFBiz RCE (template injection)" (number mark "U       jacopoc@apac Sep 10   32/790   " thread-indent "\"[oss-security] [CVE-2019-10074] Apache OFBiz RCE (template injection)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10074] Apache OFBiz RCE (template injection)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25998 invoked by uid 550); 11 Sep 2019 05:19:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16111 invoked from network); 10 Sep 2019 22:29:55 -0000
X-Gm-Message-State: APjAAAXKP589o5TZD0+wK1MFjg49HWdFLy4f0GKFrQ1I2YeqjtOW9oYJ
	somjyEnHFpN8p9y8ukSfTVzjKzEx4WX5uhBvc+0=
X-Google-Smtp-Source: APXvYqzKZXvFUyznQ37HesXG9ZLnKDOHftz8gkzMsPAg61mk6Y5GAjAK6se3ZXqgt1kay5dk09VruxwQwlJaNwGYtA0=
X-Received: by 2002:a5d:6b49:: with SMTP id x9mr5790550wrw.80.1568154578009;
 Tue, 10 Sep 2019 15:29:38 -0700 (PDT)
MIME-Version: 1.0
From: Jacopo Cappellato <jacopoc@apache.org>
Date: Tue, 10 Sep 2019 15:29:27 -0700
X-Gmail-Original-Message-ID: <CAEvdU_1YsVy-7xZNn-uHDjzsbsUHvQNL-8ue5Dzb2q1kaF1UdA@mail.gmail.com>
Message-ID: <CAEvdU_1YsVy-7xZNn-uHDjzsbsUHvQNL-8ue5Dzb2q1kaF1UdA@mail.gmail.com>
To: "user@ofbiz.apache.org ML" <user@ofbiz.apache.org>, Dev list <dev@ofbiz.apache.org>, announce@apache.org, 
	security@ofbiz.apache.org, oss-security@lists.openwall.com, 
	heinenn@google.com
Content-Type: multipart/alternative; boundary="0000000000009346db05923a70ee"
Subject: [oss-security] [CVE-2019-10074] Apache OFBiz RCE (template injection)

--0000000000009346db05923a70ee
Content-Type: text/plain; charset="UTF-8"

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.05

An RCE is possible by entering Freemarker markup in an OFBiz Form Widget
textarea field when encoding has been disabled on such a field.  This was
the case for the Customer Request "story" input in the Order Manager
application.  Encoding should not be disabled without good reason and never
within a field that accepts user input.


Mitigation:
Upgrade to 16.11.06
or manually apply the following commit on branch 16.11:
r1858533
----

Credit:
Niels Heinen of the Google security team <heinenn@google.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

--0000000000009346db05923a70ee--
