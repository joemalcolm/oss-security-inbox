X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1397" "Tuesday" "22" "September" "2015" "18:22:33" "+0000" "Joe Bowser" "bowserj@gmail.com" "<CAOBL_k4diZbcPzCfD3WAff_=+gd2E8QJV27ZvG6qAY4fZx0L5Q@mail.gmail.com>" "38" "[oss-security] CVE-2015-5204: HTTP header injection vulnerability in Apache Cordova File Transfer Plugin for Android" nil nil nil "9" "2015092218:22:33" "[oss-security] CVE-2015-5204: HTTP header injection vulnerability in Apache Cordova File Transfer Plugin for Android" (number mark "        bowserj@gmai Sep 22   38/1397  " thread-indent "\"[oss-security] CVE-2015-5204: HTTP header injection vulnerability in Apache Cordova File Transfer Plugin for Android\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12058 invoked by uid 550); 22 Sep 2015 18:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3231 invoked from network); 22 Sep 2015 18:22:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=HGwsrXAQ97almYO1+pJYAGp0BFczcOHHBFjUe2er258=;
        b=wkjZc1yYQ4hz9cNFR/aYknsEvvH0GHxstlc8YHigqnNmfcSPty77Qkm4egPJ0rXk/F
         DJxe9Hs1CTXE78+qU2Mlk8XvzW9jGSM3C37wzXQNOQDfSfzbC7tjk4/B6riyb1Sr3U8W
         yAqVrimQVxx5XpeDDZ6avYi+qQ4A8WURU5wLaRgxzqekIddMtXOQ8ogVYpI6qMJcZEh4
         /SyLIz9SLS1v68TQ36AOXzMrW4FXZVfl6J1TWSOF+a3Xj03q0JY40ulQt4M6RZ8s1mP9
         yC0obzKtEwvelz54+662M8JBjVnNoyatgidouhxHIfGBYqt1clB/rwh+DYa5a1Hqxn3O
         uMZA==
X-Received: by 10.202.181.198 with SMTP id e189mr15282088oif.6.1442946163769;
 Tue, 22 Sep 2015 11:22:43 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAOBL_k4diZbcPzCfD3WAff_=+gd2E8QJV27ZvG6qAY4fZx0L5Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114776c085886505205a1527
Date: Tue, 22 Sep 2015 18:22:33 +0000
From: Joe Bowser <bowserj@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5204: HTTP header injection vulnerability in Apache Cordova
 File Transfer Plugin for Android
To: "vuls@jpcert.or.jp" <vuls@jpcert.or.jp>, dev <dev@cordova.apache.org>, 
	"private@cordova.apache.org" <private@cordova.apache.org>, "security@apache.org" <security@apache.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>

--001a114776c085886505205a1527
Content-Type: text/plain; charset=UTF-8

CVE-2015-5204: HTTP header injection vulnerability in Apache Cordova File
Transfer Plugin for Android

Severity:
 Medium

Vendor:
 The Apache Software Foundation

Versions Affected:
 Cordova Android File Transfer Plugin  (1.2.1 and below)

Description:
 Android applications built with the Cordova framework that use the File
 Transfer Plugin can have the HTTP headers set by that plugin be manipulated
 by the filename being uploaded.  This allows for for cookies to be forged
 by the Cordova application, or for the file payload to be replaced in some
 situations.  Remotely hosted applications and applications developed with
 Cordova that allow the user to manually enter the filename are
 especially vulnerable to this issue.

Upgrade path:
 Developers who are concerned about this issue should install version 1.3.0
 or higher of the Cordova File Transfer Plugin and rebuild their
 applications.  This plugin now conforms with RFC-2616 and no longer allows
 non-ASCII characters and control characters in header names or values.
 Any non-ASCII characters will be removed from the header.  Developers
should be aware,
 and encode these characters before adding the values to the header.

Credit:
 This issue was discovered by Muneaki Nishimura (Sony Digital Network
Applications, Inc.)

--001a114776c085886505205a1527--
