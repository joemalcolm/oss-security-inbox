X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1009" "Friday" "20" "November" "2015" "11:39:56" "-0800" "Joe Bowser" "bowserj@gmail.com" "<CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>" "32" "[oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" nil nil nil "11" "2015112019:39:56" "[oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" (number mark "U       bowserj@gmai Nov 20   32/1009  " thread-indent "\"[oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3632 invoked by uid 550); 20 Nov 2015 19:55:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25959 invoked from network); 20 Nov 2015 19:40:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=kLHmiRZGe0Nt7OfAtt9WhZ5UwXmz5UqIQgqGOIflNmM=;
        b=E9aFnT2dG16NyRv22Sy41ce43IwFfYPbu1jcxzotKW4trsNdnOo4ocSm/hn08Pn+hT
         /z9uYR2Dt30VrbfHC9CVvP2qzoxdyhyI1t2PaQIhnIHQhPxwy1dMOdzNLVgVQZhmT7Fv
         Am9PX6uCcqcQ7gE4wUffx4BC5FnfN306aWUjTPTxcYWnie9yOntz3p4H/XNCJMpCyqxb
         mP7IaMRqSPHNNGvVTJu5Ot50XKtFzjV3Qd1M3ZcBHVvXf5jFgsMYdVkdVlBVHRJpYhLX
         nIJV5V0qczHBvEXitNhTU49xLnFGDkPlHWiC6LjizEH40+h9yd4TRf4TACqjzi17Z24Z
         jruA==
MIME-Version: 1.0
X-Received: by 10.107.128.156 with SMTP id k28mr14864923ioi.26.1448048397005;
 Fri, 20 Nov 2015 11:39:57 -0800 (PST)
Date: Fri, 20 Nov 2015 11:39:56 -0800
Message-ID: <CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>
From: Joe Bowser <bowserj@gmail.com>
To: DAVIDKA@il.ibm.com, Roee Hay <ROEEH@il.ibm.com>, 
	"private@cordova.apache.org" <private@cordova.apache.org>, dev <dev@cordova.apache.org>, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a113f8d1e525c5a0524fe0a53
Subject: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android

--001a113f8d1e525c5a0524fe0a53
Content-Type: text/plain; charset=UTF-8

===================================================================
CVE-2015-5257: Weak Randomization of BridgeSecret for Apache Cordova Android

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Cordova Android versions up to and including 3.6.4

Description:

Cordova uses a bridge that allows the Native Application to communicate
with the HTML and Javascript that control the user interface.  To protect
this bridge on Android, the
framework uses a BridgeSecret to protect it from third-party hijacking.
However, the BridgeSecret is not sufficiently random and can be determined
in certain scenarios.

Upgrade Path:
Developers who are concerned about this issue should rebuild their
applications with Cordova Android 4.1.1 or later.  Version 3.7.1 and later
do not contain this vulnerability.

Credit: David Kaplan & Roee Hay, IBM X-Force Application Security Research
Team.

--001a113f8d1e525c5a0524fe0a53--
