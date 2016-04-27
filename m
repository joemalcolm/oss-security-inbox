X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Wednesday" "27" "April" "2016" "15:19:16" "-0400" "Tony Homer" "ajh158@gmail.com" "<CAKkdKCC_PKa-s=jk9+Bq+bXcJ3_RmOH-Gs3BjDGMOje9WwMNUw@mail.gmail.com>" "17" "[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS" nil nil nil "4" "2016042719:19:16" "[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS" (number mark "U       ajh158@gmail Apr 27   17/749   " thread-indent "\"[oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3653 invoked by uid 550); 27 Apr 2016 19:24:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1712 invoked from network); 27 Apr 2016 19:19:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=gbemxcgG5lma4rKX3Wr+2HO7XzatUcRqVAoWV5LoXX0=;
        b=Nsjej2rtGL7LEt3F6KuSbKPtGA2W2Csop+6QfXs7W3cNPiG+Hbxekuul0YJ8QBZLpL
         sL9oIZI/nXuXR6k+NVUssIJ1xFVuVY+bn46sle9N5oS8+GSv+c6x7jLhFC7nLTrrFI89
         brV0reJWqU+/ipyjpanrPheuoacf6rgTxVtnbgd17bmAEEXidSGn4VgE4MXThvnn37+j
         RILmK9T7edoetoxJ0otPKXjAcn9OY76fEPsPjksFupjg+LipaBHU2ZiTllq3wapzUmai
         H6+XctT9D2yi3mo//K3kdSCe4MseuNjzPDx3+Gn/GZWvzNOciRxdkFJjwxtcySgbMCyn
         0ewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=gbemxcgG5lma4rKX3Wr+2HO7XzatUcRqVAoWV5LoXX0=;
        b=ElARaZqXY0bPvggqONB3LfMpArPQCmN+QjuAxZEx0EeoM84HuXmjzMEVvnBfEo307A
         4uMytxB6OuVwueEj8AJlYewarnv03KqxKY9NGmDuaERh2Nk6yiVMoa23CDp2hG+g9by7
         8JdiS7B2a/8uM74Ky9ruxeGKn0BUoEkpKGrlM0stUZk/vNxJPheT23XynCfQajJGM52P
         L15tWrqZW78GTI/wD50m2uVI5a/t609/PDAlsE8iCvMnHZ8ps0RRJhkq8c3nIw8t5RG2
         rYtN/a1+vRJBoroYNNHCZwuY7zfSGD0eO0/G4tuESSBqhiB7A0xoVaSxX9M7A7VeGA3o
         eKpw==
X-Gm-Message-State: AOPr4FX7Yi3oFtkxFLLDUUpse4RFbW1wpKQtW+WrZWpXdFEWrH91/GgcvkolPuvWJB/WgT2tEb+p6GCEzB0H+A==
MIME-Version: 1.0
X-Received: by 10.50.146.196 with SMTP id te4mr29112361igb.3.1461784756434;
 Wed, 27 Apr 2016 12:19:16 -0700 (PDT)
Date: Wed, 27 Apr 2016 15:19:16 -0400
Message-ID: <CAKkdKCC_PKa-s=jk9+Bq+bXcJ3_RmOH-Gs3BjDGMOje9WwMNUw@mail.gmail.com>
From: Tony Homer <ajh158@gmail.com>
To: dev@cordova.apache.org, private@cordova.apache.org, 
	"JPCERT/CC" <vuls@jpcert.or.jp>, security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a11c1c47425580405317c492b
Subject: [oss-security] CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS

--001a11c1c47425580405317c492b
Content-Type: text/plain; charset=UTF-8

CVE-2015-5207 - Bypass of Access Restrictions in Apache Cordova iOS
Severity: High
Vendor: The Apache Software Foundation
Versions Affected:cordova-ios 3.9.1 and below
Description:Apache Cordova iOS contains 2 methods to bypass the URL access
restrictions provided by the whitelist. An attacker can use any of the 2
methods to load malicious resources in an app that uses a whitelist to only
load trusted resources.
Upgrade path:Developers who are concerned about this issue should install
version 4.0.0 or higher of the cordova-ios platform.
Credit:This issue was discovered by Muneaki Nishimura (nishimunea) of
Recruit Technologies Co.,Ltd.

--001a11c1c47425580405317c492b--
