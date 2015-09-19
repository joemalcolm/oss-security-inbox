X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["805" "Saturday" "19" "September" "2015" "10:43:42" "-0500" "Nathan Van Gheem" "vangheem@gmail.com" "<CAL8hw9GkuYtt2hn4QfHTzXYEoN9bMYCq=Hgptpf4Cqv6Mcsfpw@mail.gmail.com>" "26" "[oss-security] CVE Request: Plone XSS" nil nil nil "9" "2015091915:43:42" "[oss-security] CVE Request: Plone XSS" (number mark "U       vangheem@gma Sep 19   26/805   " thread-indent "\"[oss-security] CVE Request: Plone XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13754 invoked by uid 550); 19 Sep 2015 15:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13731 invoked from network); 19 Sep 2015 15:43:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=4BCSiY2usGG+NXpxQ8kwe3WLDAu3vemt94TJP1JG/HY=;
        b=qSI+jdhj8qHuQa8z9Mczmuh/a54UPbJG9yM3NQG+z6g8BMtTyynP5qkKjdDNmUh8mY
         kILUkhBODzgzTBbGd0Zer6Q4nIPG5yQyWwdEwsvcwhw5o+H5AMnTU6q/qoqlL0D6aAei
         aq4F0un/k8mHn8wMa0cuzl4AtuPFr/RiBOdZyhDxjOBPF9CFEEmojOtBPYY2wqx81ntm
         MixFA1m9HO2zj+Ilb41qz2OZJgDjpemYxOtS34RB4ilueKOmkXskuIF5IpzuHBVAR4Cd
         qnhpmMxN/HbKDT2X0f2LYr4l+7d00PORjrgYGIHJ6P3gwwIskciSbApCeniBoIAtvOBX
         FEsg==
MIME-Version: 1.0
X-Received: by 10.31.141.130 with SMTP id p124mr6612683vkd.44.1442677422926;
 Sat, 19 Sep 2015 08:43:42 -0700 (PDT)
Date: Sat, 19 Sep 2015 10:43:42 -0500
Message-ID: <CAL8hw9GkuYtt2hn4QfHTzXYEoN9bMYCq=Hgptpf4Cqv6Mcsfpw@mail.gmail.com>
From: Nathan Van Gheem <vangheem@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11425a4e51b40905201b8317
Subject: [oss-security] CVE Request: Plone XSS

--001a11425a4e51b40905201b8317
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?

    https://plone.org/security/20150910/non-persistent-xss-in-plone

Plone's URL checking infrastructure includes a method for checking if URLs
valid and located in the Plone site. By passing HTML into this specially
crafted url, XSS can be achieved. Versions affected are Plone 3.x, 4.1.x,
4.2.x, <4.3.7, <5.0rc1. A hotfix has been posted for earlier versions of
Plone that are no longer provided new releases.

The relevant commit is:

https://github.com/plone/Products.CMFPlone/commit/3da710a2cd68587f0bf34f2e7ea1167d6eeee087

The vendor credits with the discovery: Peter Uittenbroek

Thanks, let me know if you'd like more information.

Nathan

--001a11425a4e51b40905201b8317--
