X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["653" "Wednesday" "27" "April" "2016" "15:36:31" "-0400" "Tony Homer" "tony--@apache.org" "<CAKkdKCBWncYOSs+QeD0xR4qs=Mfyto=136MyxO1Zb_1CQiNvRg@mail.gmail.com>" "24" "[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS" nil nil nil "4" "2016042719:36:31" "[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS" (number mark "U       tony--@apach Apr 27   24/653   " thread-indent "\"[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29722 invoked by uid 550); 27 Apr 2016 19:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26471 invoked from network); 27 Apr 2016 19:36:45 -0000
X-Gm-Message-State: AOPr4FUiXGC0xRjtQi3Px6GMv7OSq2LEWcSNqyjOkhPgsX48pJHMlNMPPAazruDkD+Y9qxczzu7Y6NKVx2uiPQ==
MIME-Version: 1.0
X-Received: by 10.107.50.10 with SMTP id y10mr12033745ioy.144.1461785791483;
 Wed, 27 Apr 2016 12:36:31 -0700 (PDT)
Date: Wed, 27 Apr 2016 15:36:31 -0400
X-Gmail-Original-Message-ID: <CAKkdKCBWncYOSs+QeD0xR4qs=Mfyto=136MyxO1Zb_1CQiNvRg@mail.gmail.com>
Message-ID: <CAKkdKCBWncYOSs+QeD0xR4qs=Mfyto=136MyxO1Zb_1CQiNvRg@mail.gmail.com>
From: Tony Homer <tony--@apache.org>
To: dev@cordova.apache.org, private@cordova.apache.org, 
	"JPCERT/CC" <vuls@jpcert.or.jp>, security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS

CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
cordova-ios 3.9.1 and below

Description:
Apache Cordova iOS contains 2 methods to bypass the URL access
restrictions provided by the whitelist. An attacker can use any of the
2 methods to load malicious resources in an app that uses a whitelist
to only load trusted resources.

Upgrade path:
Developers who are concerned about this issue should install version
4.0.0 or higher of the cordova-ios platform.

Credit:
This issue was discovered by Muneaki Nishimura (nishimunea) of Recruit
Technologies Co.,Ltd.
