X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["927" "Monday" "12" "October" "2015" "09:47:06" "-0500" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9GrJsZk5uVN2aY9EdBo2uahxLbQFG8j_5=ArC8Z+cGfKA@mail.gmail.com>" "33" "[oss-security] CVE Request: Plone CSRF" nil nil nil "10" "2015101214:47:06" "[oss-security] CVE Request: Plone CSRF" (number mark "        nathan.van.g Oct 12   33/927   " thread-indent "\"[oss-security] CVE Request: Plone CSRF\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32448 invoked by uid 550); 12 Oct 2015 14:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32424 invoked from network); 12 Oct 2015 14:47:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=u0IR2rUjxd0cqw0PE4H7CFBVvTNdhxt6TREmdDNsmeg=;
        b=euDzXE7NvI+t+SM6gwlmLkhfq4tVjzTNJwCEUpWRskkb19ECnpMBY8g62/u7sqAwM4
         yPgrNrkpOC/+8QHNWdxFESG7GhDNhZSmZShlcH5mta0P8t49nh2IUIBUrR4p8frGxqwc
         dBSx1mrJdhw+3pKffYfQpVKrwwVVOEF5q73CcrDT6Z0PArn1+GVIJIx9TxSpWNdfckV7
         qXYrc80ta7elUrRIGb95LuOyl1ob0cXXRFJ1NRmk5u03PtU7tV/Cwr9+++hvOcyLWJ5x
         eY+3K521PG1D9OYNiAdkeEjHY0GPciFrg47WW2zEN0Zs7ScWaoD7OBlubDFEkbh1ZALa
         0jeQ==
MIME-Version: 1.0
X-Received: by 10.31.60.77 with SMTP id j74mr17302939vka.137.1444661226174;
 Mon, 12 Oct 2015 07:47:06 -0700 (PDT)
X-Google-Sender-Auth: 9NgW8QBEHVYl_Z6O4RVi3DVRlq8
Message-ID: <CAL8hw9GrJsZk5uVN2aY9EdBo2uahxLbQFG8j_5=ArC8Z+cGfKA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1143a3243502e70521e967f2
Date: Mon, 12 Oct 2015 09:47:06 -0500
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Reply-To: oss-security@lists.openwall.com
Sender: vangheem@gmail.com
Subject: [oss-security] CVE Request: Plone CSRF
To: oss-security@lists.openwall.com

--001a1143a3243502e70521e967f2
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?

   https://plone.org/security/20151006/multiple-csrf-vulnerabilities-in-zope

Plone is built on the Zope2 application framework. In the Zope2 application
framework, there are multiple CSRF vulnerabilities. The latest version of
Plone has automatic CSRF protection integrated at the database layer. This
patch basically backports the latest automatically CSRF infrastructure to
Plone 4.x.

The relevant code is in:

https://github.com/plone/plone.protect
and
https://github.com/plone/plone4.csrffixes
finally, more information about the problem:
https://plone.org/products/plone/security/advisories/security-vulnerability-20151006-csrf


The vendor credits with the discovery: John Page ( hyp3rlinx )

Thanks, let me know if you'd like more information.


Thanks,
Nathan

--001a1143a3243502e70521e967f2--
