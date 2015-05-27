X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1499" "Wednesday" "27" "May" "2015" "20:03:40" "+0000" "Joe Bowser" "bowserj@gmail.com" "<CAOBL_k5Urg=4CcANUOpqdfFk4x5V8=LmK0xL3AKcsNmhf7wNtw@mail.gmail.com>" "41" "[oss-security] CVE-2015-1835: Remote exploit of secondary configuration variables in Apache Cordova on Android" nil nil nil "5" "2015052720:03:40" "[oss-security] CVE-2015-1835: Remote exploit of secondary configuration variables in Apache Cordova on Android" (number mark "        bowserj@gmai May 27   41/1499  " thread-indent "\"[oss-security] CVE-2015-1835: Remote exploit of secondary configuration variables in Apache Cordova on Android\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1789 invoked by uid 550); 27 May 2015 20:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28388 invoked from network); 27 May 2015 20:03:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=HXquNR6fdL+v3fB170tVar0uyW6t89zMolSYsmx5+NE=;
        b=W0wgx2oNn6SeXnmMEuZgTPyn5QPYQ8uATwhfMJI2tSdhtAbigaT1/MtZ6fHp6JM8A1
         Jk2/SwChOVqEGQylZtHRsfMKCOJ6c+NHlFQbDPZ1qE59jaK/R+FU0dZJyX5rlCleY2AD
         nSyE1/GoDQnG7uHGwPwbf1e4QnD09EhiFGD+DfMVItKPPEJ1jp0X5P8Ty/H/G8yKV8F1
         KKKCYvDymZIFp4fiF8fdFJLoirHURdxfZARroacWXY6H2RnNSdm3L7ZWyy+hmS/MeaXW
         DC8TIx1tVfixzAtbKD8q5iO4bmj6emsa9jHRxwGVD/Lce96Qo2W97xTubJDG2ULT3agb
         TV9A==
X-Received: by 10.60.39.136 with SMTP id p8mr4909285oek.45.1432757021452; Wed,
 27 May 2015 13:03:41 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAOBL_k5Urg=4CcANUOpqdfFk4x5V8=LmK0xL3AKcsNmhf7wNtw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0160bd105030be051715bd8a
Date: Wed, 27 May 2015 20:03:40 +0000
From: Joe Bowser <bowserj@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1835: Remote exploit of secondary configuration variables in
 Apache Cordova on Android
To: "private@cordova.apache.org" <private@cordova.apache.org>, 
	"seven_shen@trendmicro.com.cn" <seven_shen@trendmicro.com.cn>, "security@apache.org" <security@apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com

--089e0160bd105030be051715bd8a
Content-Type: text/plain; charset=UTF-8

=====================================================
CVE-2015-1835: Remote exploit of secondary configuration variables in
Apache Cordova on Android

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
Cordova Android up to 4.0.1 (3.7.2 excluded)

Description:
Android applications built with the Cordova framework that don't have
explicit values set in Config.xml can have undefined configuration
variables set by Intent.  This can cause unwanted dialogs appearing in
applications and changes in the application behaviour that can include the
app force-closing.

The latest release of Cordova Android entirely removes the ability of
configuration parameters to be set by intents.  This change is an API
change in the platform, and third-party plugins that use values set in the
config.xml should make sure that they use the preferences API instead of
relying on the Intent bundle, whcih can be manipulated in this case.

Upgrade path:
Developers who are concerned about this should rebuild their applications
with either Cordova Android 4.0.2, or Cordova 3.7.4 if they are unable to
upgrade to Cordova 4.0.2. Developers should also make sure that variables
that they wish to have protected are specified in their config.xml.

Credit:
This issue was discovered by Seven Shen of Trend Micro Mobile Threat
Research Team
==================================================

--089e0160bd105030be051715bd8a--
