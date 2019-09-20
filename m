X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Friday" "20" "September" "2019" "15:33:17" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "27" nil nil nil nil "9" nil nil (number mark "U       juanpablo@ap Sep 20   27/677   " thread-indent "\"[oss-security] [CVE-2019-12404] Apache JSPWiki Cross-site scripting vulnerability on InfoContent.jsp\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12404] Apache JSPWiki Cross-site scripting vulnerability on InfoContent.jsp" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20174 invoked by uid 550); 20 Sep 2019 14:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26406 invoked from network); 20 Sep 2019 13:33:38 -0000
X-Gm-Message-State: APjAAAV78NzxtDDfoRdtq0iMUjJaU5phLVvD06OaTg8hg4NXAUh3JFtA
	vP6jlYZdoMlTetNVm+v4b9nkp0FrMs+NeId3vrg=
X-Google-Smtp-Source: APXvYqw65nfyyaIgLts6GO19GTvkfXsrJjKe5PU2690m5U+qFGsfJ3MTBxIy7JlEUvYezOUugzWmB36XhKBy9fevRGk=
X-Received: by 2002:a5e:c749:: with SMTP id g9mr19209601iop.7.1568986406106;
 Fri, 20 Sep 2019 06:33:26 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 20 Sep 2019 15:33:17 +0200
X-Gmail-Original-Message-ID: <CAMufup4AocOaLbmDttDrMdEfx9QscBwEKcK4tgAYtacvq90TkA@mail.gmail.com>
Message-ID: <CAMufup4AocOaLbmDttDrMdEfx9QscBwEKcK4tgAYtacvq90TkA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000064c0f10592fc1d8a"
Subject: [oss-security] [CVE-2019-12404] Apache JSPWiki Cross-site scripting vulnerability on InfoContent.jsp

--00000000000064c0f10592fc1d8a
Content-Type: text/plain; charset="UTF-8"

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to InfoContent.jsp, which could
allow the attacker to execute javascript in the victim's browser and get
some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by ADLab of VenusTech.

rel: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-12404

--00000000000064c0f10592fc1d8a--
