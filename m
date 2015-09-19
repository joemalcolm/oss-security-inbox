X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["820" "Saturday" "19" "September" "2015" "10:41:18" "-0500" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9HF3ohJHgGrBUgV2Z5RPHADf6UgDjOD7o2iEhmkf2XZWA@mail.gmail.com>" "27" "[oss-security] CVE Request: Plone Unauthorized user creation" nil nil nil "9" "2015091915:41:18" "[oss-security] CVE Request: Plone Unauthorized user creation" (number mark "U       nathan.van.g Sep 19   27/820   " thread-indent "\"[oss-security] CVE Request: Plone Unauthorized user creation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5152 invoked by uid 550); 19 Sep 2015 15:42:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3729 invoked from network); 19 Sep 2015 15:41:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=o3F/36L1+y2qCtSMRPXdfY5E/fUp4JeZmPdgjRLUXTM=;
        b=fB06plDjo8A5hCgzSlXdCtsvhLyK/iibpzP9bFSEa54WYj+7o7C3ziMkEZvGH9X0KD
         AAZbIr3ovUFeY/8N2665s7sE5C8nJUE9ppZ7vC7h7HnRYOpsMiqvaF/lUE+k52hAYTAv
         hAg8CJPZsi4eDMstSuNx6ITD/X+ShzRcOdDj2+XjCWKdu9X29iRCdViihL9mhukVEYwI
         nVnQ0b2CKmMQkFJNFegoSfX2xKZqVctNFqyBYUCOxGDL8pCSAlofuPYJSUB/UMEJ8S+F
         zW0yErhqfmOngiqgIiQiRaAlTpMFCanISmQblv0zI3gF6b6Jvl2B8hDZO9HdmxjZppS5
         KSTQ==
MIME-Version: 1.0
X-Received: by 10.31.164.146 with SMTP id n140mr6800557vke.148.1442677278794;
 Sat, 19 Sep 2015 08:41:18 -0700 (PDT)
Sender: vangheem@gmail.com
Date: Sat, 19 Sep 2015 10:41:18 -0500
X-Google-Sender-Auth: qV4lRxwj1_qUcHtRgYctwvLelUs
Message-ID: <CAL8hw9HF3ohJHgGrBUgV2Z5RPHADf6UgDjOD7o2iEhmkf2XZWA@mail.gmail.com>
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11414f88ba685005201b7a34
Subject: [oss-security] CVE Request: Plone Unauthorized user creation

--001a11414f88ba685005201b7a34
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?


https://plone.org/security/20150910/anonymous-is-able-to-create-plone-members

It's a vulnerability that allows remote attackers to add a new member to a
Plone site when registration is enabled, without acknowledgment of site
administrator. Versions affected are Plone 3.x, 4.1.x, 4.2.x, <4.3.7,
<5.0rc1. A hotfix has been posted for earlier versions of Plone that are no
longer provided new releases.

The relevant commit is:

https://github.com/zopefoundation/Products.CMFCore/commit/e1d981bfa14b664317285f0f36498f4be4a23406

The vendor credits with the discovery: Maurits van Rees at Zest Software

Thanks, let me know if you'd like more information.

Nathan

--001a11414f88ba685005201b7a34--
