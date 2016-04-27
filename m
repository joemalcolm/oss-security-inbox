X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Wednesday" "27" "April" "2016" "15:30:03" "-0400" "Tony Homer" "tony--@apache.org" "<CAKkdKCDAQKRooFGPmn94LufqzPXiYcXYoj81T01nXg7tO0BMKA@mail.gmail.com>" "21" "[oss-security] CVE-2015-5208 - Arbitrary plugin execution issue in Apache Cordova iOS" nil nil nil "4" "2016042719:30:03" "[oss-security] CVE-2015-5208 - Arbitrary plugin execution issue in Apache Cordova iOS" (number mark "U       tony--@apach Apr 27   21/486   " thread-indent "\"[oss-security] CVE-2015-5208 - Arbitrary plugin execution issue in Apache Cordova iOS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15583 invoked by uid 550); 27 Apr 2016 19:31:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14273 invoked from network); 27 Apr 2016 19:30:17 -0000
X-Gm-Message-State: AOPr4FVdpX+c12jk29hGdGKFHCjtVN6GSDroxJlmONRB3V/gFS/k7XxNUwSSNNv+1AgFlVylkNG4gq/kqdU6Vg==
MIME-Version: 1.0
X-Received: by 10.107.50.10 with SMTP id y10mr12001600ioy.144.1461785403506;
 Wed, 27 Apr 2016 12:30:03 -0700 (PDT)
Date: Wed, 27 Apr 2016 15:30:03 -0400
X-Gmail-Original-Message-ID: <CAKkdKCDAQKRooFGPmn94LufqzPXiYcXYoj81T01nXg7tO0BMKA@mail.gmail.com>
Message-ID: <CAKkdKCDAQKRooFGPmn94LufqzPXiYcXYoj81T01nXg7tO0BMKA@mail.gmail.com>
From: Tony Homer <tony--@apache.org>
To: dev@cordova.apache.org, private@cordova.apache.org, 
	"JPCERT/CC" <vuls@jpcert.or.jp>, security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2015-5208 - Arbitrary plugin execution issue in Apache Cordova iOS

CVE-2015-5208 - Arbitrary plugin execution issue in Apache Cordova iOS

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
cordova-ios 3.9.1 and below

Description:
An arbitrary plugin can be executed when a user clicks on a link.

Upgrade path:
Developers who are concerned about this issue should install version
4.0.0 or higher of the cordova-ios platform.

Credit:
This issue was discovered by Muneaki Nishimura (nishimunea) of Recruit
Technologies Co.,Ltd.
