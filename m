X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1891" "Monday" "5" "September" "2016" "18:42:51" "+0200" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>" "55" "[oss-security] CVE request: Plone multiple vulnerabilities" nil nil nil "9" "2016090516:42:51" "[oss-security] CVE request: Plone multiple vulnerabilities" (number mark "U       nathan.van.g Sep  5   55/1891  " thread-indent "\"[oss-security] CVE request: Plone multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8188 invoked by uid 550); 5 Sep 2016 17:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9950 invoked from network); 5 Sep 2016 16:43:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=7KT5JyxBSmbCjMpH6KvE+LgT/H0n6iuHusrTjrwMDag=;
        b=vHAkFxY2SfcT4R5kAqFDaIjohnJC7AHQI37+p8pKSGjZLiVoWEwSN9DWHEOB0/0QGe
         UZ50DyOaDNu4MRLeJVlQahRaXAzMMpJNFcDep7I7UIW0p50TTIySHrXJG+aA5UJB5MmX
         pNkRA6zcyQ6OntxbpuRE3s9+KFNVs7hfPjlpSkaPiIakppUt2bzIed8x3QASQjP6dcIh
         3yZ1Sx+mbP3r/dH+iuh/Yenv7s28/0GDu2NdKMWuDrJdIc0kZck8doWBha+PB6+7xhLL
         Ktj0i0rdJ1GTTer2H33PlNyHMCOh7Bw1EoNXFNUJNqHStzTULd1Ic5MJsKwsnS4ZhBXG
         vzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=7KT5JyxBSmbCjMpH6KvE+LgT/H0n6iuHusrTjrwMDag=;
        b=GWWIsCz+eFPJiIxNibSU1dDvI1Xm4qsD3wAK9NOJ9yjzcd7DyQyrFXtfgS+wNgeeJp
         E6kn+NjuanmGUEng3MvEx9ViUCgnYehDcRFTGuaPAS8yboFdpjtJpl2TK4KYQSupFkU+
         wu0XhbtM7pAjfiaQtcj1vNZT5gV+4ZXdOPoqTFrRIJl8jr+I55oLv7gwMrJbRaMqCqgX
         gREC0jMrrOQkr1BpMvNEniuZPseR6nbwo534N1NlciHm3AgPeHYq35OOn84Wi+VENdm8
         VfMLxd3f0WPiuxac3PJ91vms0Ub0OFCKKwFNm7xJf1Tz12zXFRI8oWE1ebeGAHbH0IuQ
         C8lg==
X-Gm-Message-State: AE9vXwPZbP3uUxEVAfLKKoPGYkhs0XPhLIvz0vidjmp72WdluAeT2NVff2Ew+mRExbOlimnccQU79lPjgjbizA==
X-Received: by 10.237.44.66 with SMTP id f60mr40023660qtd.11.1473093772236;
 Mon, 05 Sep 2016 09:42:52 -0700 (PDT)
MIME-Version: 1.0
Sender: vangheem@gmail.com
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Date: Mon, 5 Sep 2016 18:42:51 +0200
X-Google-Sender-Auth: aPkQ_z5RoXuc_hVUPG_nT8iaZwA
Message-ID: <CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c06bee403f1dc053bc55f0a
Subject: [oss-security] CVE request: Plone multiple vulnerabilities

--94eb2c06bee403f1dc053bc55f0a
Content-Type: text/plain; charset=UTF-8

Hi,

Multiple vulnerabilities were recently patched.


1. *filesystem information leak*:
https://plone.org/security/hotfix/20160830/filesystem-information-leak

Managers had the ability to find read files from the file system that the
system user running the plone process had access to

2. *Non-Persistent XSS in Plone forms*:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone-forms

z3c.form will currently accept data from GET requests when the form is
supposed to be POST. This allows a user to inject a potential XSS attack
into a form. With certain widgets in Plone admin forms, the input is
expected to be safe and can cause a reflexive XSS attack. Additionally,
there is potential for an attack that will trick a user into saving a
persistent XSS.

3. *open redirection*:
https://plone.org/security/hotfix/20160830/open-redirection-in-plone

In multiple places, Plone blindly uses the referer header to redirect a
user to the next page after a particular action. An attacker could utilize
this to draw a user into a redirection attack.

4. *Non-Persistent XSS in Plone*:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone-1

Plone's URL checking infrastructure includes a method for checking if URLs
valid and located in the Plone site. By passing javascript into this
specially crafted url, XSS can be achieved.

5. *Non-Persistent XSS in Plone Zope Management(ZMI)*:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-zope2

In multiple places, Zope2's ZMI pages do not properly escape user input


Credits to all these go to Sebastian Perez

All of these vulnerabilities have been patched with the hotfix release
package(https://plone.org/security/hotfix/20160830) and are being
incorporated upstream.


Thanks,
Nathan

--94eb2c06bee403f1dc053bc55f0a--
