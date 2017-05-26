X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["984" "Friday" "26" "May" "2017" "14:26:44" "-0400" "larry mccay" "lmccay@apache.org" "<CACRbFyjtT7QQGHUzTRdbJoySbJb7tt4BDk5-r-VRn0GB0Kgvag@mail.gmail.com>" "29" "[oss-security] [ANNOUNCE] CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS" "^Cc:" nil nil "5" "2017052618:26:44" "[oss-security] [ANNOUNCE] CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS" (number mark "U       lmccay@apach May 26   29/984   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23682 invoked by uid 550); 26 May 2017 18:29:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21869 invoked from network); 26 May 2017 18:26:58 -0000
X-Gm-Message-State: AODbwcCYAAxLVMbhePua4f6q9q80+W/P9VlgA/lAxrehj2dDBcNCyGZf
	Eum8p3m0rdnllNO35ckOeIucBHLrww==
X-Received: by 10.107.176.131 with SMTP id z125mr3141830ioe.161.1495823204638;
 Fri, 26 May 2017 11:26:44 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CACRbFyjtT7QQGHUzTRdbJoySbJb7tt4BDk5-r-VRn0GB0Kgvag@mail.gmail.com>
Message-ID: <CACRbFyjtT7QQGHUzTRdbJoySbJb7tt4BDk5-r-VRn0GB0Kgvag@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114532bac27ed50550717aa7"
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Fri, 26 May 2017 14:26:44 -0400
From: larry mccay <lmccay@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS
To: user@knox.apache.org, dev@knox.apache.org, security <security@apache.org>, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>, announce@apache.org, private@knox.apache.org

--001a114532bac27ed50550717aa7
Content-Type: text/plain; charset="UTF-8"

CVE-2017-5646: Apache Knox Impersonation Issue for WebHDFS

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
    All versions of Apache Knox prior to 0.12.0

An authenticated user may use a specially crafted URL to impersonate another
user while accessing WebHDFS through Apache Knox. This may result in
escalated
privileges and unauthorized data access. While this activity is audit logged
and can be easily associated with the authenticated user, this is still a
serious security issue.

Mitigation:
  All users are recommended to upgrade to Apache Knox 0.12.0,
  where validation, scrubbing and logging of such attempts has been added.

The Apache Knox 0.12.0 release can be downloaded from:
Source: http://www.apache.org/dyn/closer.cgi/knox/0.12.0/knox-0.12.0-src.zip
Binary: http://www.apache.org/dyn/closer.cgi/knox/0.12.0/knox-0.12.0.zip

--001a114532bac27ed50550717aa7--
