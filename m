X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1325" "Tuesday" "23" "April" "2019" "08:29:28" "+0100" "Apache Security Team" "security@apache.org" "<CAFBzuDOyYgqTHj5vq-w2jjrk9Gh-q4kB56cdxZ_KG3Pd80bEPQ@mail.gmail.com>" "29" "[oss-security] Issues fixed in previous releases of Apache Zeppelin 0.7.3 and 0.8.0 (CVE-2017-12619 CVE-2018-1317 CVE-2018-1328)" nil nil nil "4" "2019042307:29:28" "[oss-security] Issues fixed in previous releases of Apache Zeppelin 0.7.3 and 0.8.0 (CVE-2017-12619 CVE-2018-1317 CVE-2018-1328)" (number mark "U       security@apa Apr 23   29/1325  " thread-indent "\"[oss-security] Issues fixed in previous releases of Apache Zeppelin 0.7.3 and 0.8.0 (CVE-2017-12619 CVE-2018-1317 CVE-2018-1328)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Issues fixed in previous releases of Apache Zeppelin 0.7.3 and 0.8.0 (CVE-2017-12619 CVE-2018-1317 CVE-2018-1328)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20233 invoked by uid 550); 23 Apr 2019 07:36:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13836 invoked from network); 23 Apr 2019 07:30:03 -0000
X-Gm-Message-State: APjAAAWcKC7PXOFdDMswB4iGdnCTYfb3s9i9K8mwCIzjUR4s1ovXzRCL
	FIqZHt9nYqGjOh8z7FUstCiyL9X38KZ6BsnCehmQyw==
X-Google-Smtp-Source: APXvYqz+bTLt1VbEJAGGE59VJqRumhXCMGmIjLtJeWKDJepijjS5DBBSMNTyvuxfY1vS6tuOEAMO6rppNweCCaClla0=
X-Received: by 2002:a37:5fc6:: with SMTP id t189mr17875301qkb.273.1556004580320;
 Tue, 23 Apr 2019 00:29:40 -0700 (PDT)
MIME-Version: 1.0
Sender: mjc@gsuite.cloud.apache.org
X-Google-Sender-Delegation: mjc@gsuite.cloud.apache.org
From: Apache Security Team <security@apache.org>
Date: Tue, 23 Apr 2019 08:29:28 +0100
X-Google-Sender-Auth: _-jDi9jKun2lm6hj83QkNDZWVm0
X-Gmail-Original-Message-ID: <CAFBzuDOyYgqTHj5vq-w2jjrk9Gh-q4kB56cdxZ_KG3Pd80bEPQ@mail.gmail.com>
Message-ID: <CAFBzuDOyYgqTHj5vq-w2jjrk9Gh-q4kB56cdxZ_KG3Pd80bEPQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Issues fixed in previous releases of Apache Zeppelin 0.7.3 and 0.8.0
 (CVE-2017-12619 CVE-2018-1317 CVE-2018-1328)

The following three issues were fixed in previous releases of Apache
Zeppelin but had not been disclosed.  This email is being sent by the
ASF Security Team on behalf of Apache Zeppelin.

[CVEID]:CVE-2017-12619
[PRODUCT]:Apache Zeppelin
[VERSION]:Apache Zeppelin prior to 0.7.3 (released September 2017)
[PROBLEMTYPE]:Session Fixation
[REFERENCES]:https://zeppelin.apache.org/releases/zeppelin-release-0.7.3.html
[DESCRIPTION]: Apache Zeppelin prior to 0.7.3 was vulnerable to
session fixation which allowed an attacker to hijack a valid user
session.  Issue was reported by "stone lone".

[CVEID]:CVE-2018-1317
[PRODUCT]:Apache Zeppelin
[VERSION]:Apache Zeppelin prior to 0.8.0 (released July 2018)
[PROBLEMTYPE]:Improper Authentication
[REFERENCES]:https://zeppelin.apache.org/releases/zeppelin-release-0.8.0.html
[DESCRIPTION]: In Apache Zeppelin prior to 0.8.0 the cron scheduler
was enabled by default and could allow users to run paragraphs as
other users without authentication.

[CVEID]:CVE-2018-1328
[PRODUCT]:Apache Zeppelin
[VERSION]:Apache Zeppelin prior to 0.8.0 (released July 2018)
[PROBLEMTYPE]:Stored XSS
[REFERENCES]:https://zeppelin.apache.org/releases/zeppelin-release-0.8.0.html
[DESCRIPTION]: Apache Zeppelin prior to 0.8.0 had a stored XSS issue
via Note permissions.  Issue reported by "Josna Joseph"
