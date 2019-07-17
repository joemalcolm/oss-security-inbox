X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1640" "Wednesday" "17" "July" "2019" "16:25:03" "+0200" "Wadeck Follonier" "wfollonier@cloudbees.com" "<CAAWM14evUCZs2UoyXw2FU9ZSuM2NFFR+sNi7bA=o+-r7vfUcHw@mail.gmail.com>" "45" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "7" "2019071714:25:03" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       wfollonier@c Jul 17   45/1640  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26247 invoked by uid 550); 17 Jul 2019 16:59:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31988 invoked from network); 17 Jul 2019 14:25:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=rWmmpBo7HrvhWbM0nWneczL5YColxFfi2kh9La95VGw=;
        b=ZhEIIrHSaL7rW7Fk1um6bTor3O3Kohufppssd1MWFHMFDDS7Nfpv7xBIEgjPyLCfHH
         D0V5izmirSa1t3NQsOKPg5L0ycqSpVPogh1N9EklidSy87+DGyOQw9OHPdkLXwEsaXcu
         GF7PQ7nt91ngaI4HKrYzuP/F4lXzRUiJIXqMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rWmmpBo7HrvhWbM0nWneczL5YColxFfi2kh9La95VGw=;
        b=ZwTvcZ9RGYQw0580yMUknWaBUcRtkTC523WIH5fsSCVyV2wsswdGBAA0BNkC3uZVFC
         q8EMmj9WPjVocP+mhdxUNv4IvYi4+fYuMVfiFojOCSniGBBMJQCIW9vy7EE6k2YT8wt+
         bvbWVpvxEHD0rRylYhDZyd9gMlpxk3Fgd5sFaMVGjJq/Im/zW3if2AeYFFbB8bZ5Q8tO
         WxUw6wcoaNA8Un6nBleOXJXux5Gw5M3NkXrXp0QaJtBEO0gkXAXKedQuffkvHWCJa7BZ
         rpbC7m5Uy5eVRPd1LsY3q+57cHjkp+Ye/XGoMl6W5I6g8FF0s24itgPiT4aiZP3GYBpR
         0ycQ==
X-Gm-Message-State: APjAAAWhH+6G99Z7sq/1gUzSOkg8Oi7fye23rdVdxywXd8ogb4nJr8iG
	WDycO/GUKaZqTPK2SMarwiuVWe8KTdIOxDJUUT7J32J7pwo=
X-Google-Smtp-Source: APXvYqwlocKGheUs83HM7vDLc9oRjiBT8+aJcN0kO+D9TyzmGx0b71doY+LmOaJvf3NhyLQXWciXpin4dpSC8qDoGlA=
X-Received: by 2002:a05:6512:1d2:: with SMTP id f18mr17700545lfp.173.1563373539563;
 Wed, 17 Jul 2019 07:25:39 -0700 (PDT)
MIME-Version: 1.0
From: Wadeck Follonier <wfollonier@cloudbees.com>
Date: Wed, 17 Jul 2019 16:25:03 +0200
Message-ID: <CAAWM14evUCZs2UoyXw2FU9ZSuM2NFFR+sNi7bA=o+-r7vfUcHw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.186
* Jenkins LTS 2.176.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-07-17/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1424 / CVE-2019-10352
Users with Job/Configure permission could specify a relative path escaping
the base directory in the file name portion of a file parameter definition.

This path would be used to store the uploaded file on the Jenkins master,
resulting in an arbitrary file write vulnerability.


SECURITY-626 / CVE-2019-10353
By default, CSRF tokens in Jenkins only checked user authentication and IP
address.

This allowed attackers able to obtain a CSRF token for another user to
implement CSRF attacks as long as the victim's IP address remained unchanged.


SECURITY-534 / CVE-2019-10354
Jenkins uses the Stapler web framework to render its UI views.

These views are frequently comprised of several view fragments, enabling
plugins to extend existing views with more content.

In some cases attackers could directly access a view fragment containing
sensitive information, bypassing any permission checks in the corresponding
view.
