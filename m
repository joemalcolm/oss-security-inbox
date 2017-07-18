X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["421" "Tuesday" "18" "July" "2017" "12:23:32" "+0200" "Bertrand Delacretaz" "bdelacretaz@apache.org" "<CAEWfVJmX8X8qNOJyRRi=HVzhNAUC3eFvVP2jJTZEyYw=9S70GA@mail.gmail.com>" "15" "[oss-security] CVE-2016-5394 : Apache Sling XSS vulnerability" nil nil nil "7" "2017071810:23:32" "[oss-security] CVE-2016-5394 : Apache Sling XSS vulnerability" (number mark "U       bdelacretaz@ Jul 18   15/421   " thread-indent "\"[oss-security] CVE-2016-5394 : Apache Sling XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17454 invoked by uid 550); 18 Jul 2017 10:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13891 invoked from network); 18 Jul 2017 10:23:51 -0000
X-Gm-Message-State: AIVw113RoVQxe81w+3Igh8wiPFdifzylsvB0SKXT2JQJXfHfCFx/A9CT
	wJpZjgUxC/tBMH8KdBlFVREC9jwF0Q==
X-Received: by 10.237.62.105 with SMTP id m38mr950606qtf.179.1500373413369;
 Tue, 18 Jul 2017 03:23:33 -0700 (PDT)
MIME-Version: 1.0
From: Bertrand Delacretaz <bdelacretaz@apache.org>
Date: Tue, 18 Jul 2017 12:23:32 +0200
X-Gmail-Original-Message-ID: <CAEWfVJmX8X8qNOJyRRi=HVzhNAUC3eFvVP2jJTZEyYw=9S70GA@mail.gmail.com>
Message-ID: <CAEWfVJmX8X8qNOJyRRi=HVzhNAUC3eFvVP2jJTZEyYw=9S70GA@mail.gmail.com>
To: dev <dev@sling.apache.org>, users <users@sling.apache.org>, 
	"security@sling.apache.org" <security@sling.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2016-5394 : Apache Sling XSS vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Sling XSS Protection API 1.0.8

Description:
The encoding done by the XSSAPI.encodeForJSString() method is not
restrictive enough and for some input patterns allows script tags to
pass through unencoded, leading to potential XSS vulnerabilities.

Mitigation:
Users should upgrade to version 1.0.12 or later of the XSS Protection
API module.
