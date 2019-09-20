X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["703" "Friday" "20" "September" "2019" "15:28:49" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "27" nil nil nil nil "9" nil nil (number mark "U       juanpablo@ap Sep 20   27/703   " thread-indent "\"[oss-security] [CVE-2019-10089] Apache JSPWiki Cross-site scripting vulnerability on WYSIWYG editor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10089] Apache JSPWiki Cross-site scripting vulnerability on WYSIWYG editor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7253 invoked by uid 550); 20 Sep 2019 13:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5665 invoked from network); 20 Sep 2019 13:29:10 -0000
X-Gm-Message-State: APjAAAVeIUCZEiUVsHQ19UtzR4fvQuF+AqNd4NB0X2DX21aVrk79nSJp
	f2tiu8djE3cUnCe0C6ssB2ZMnuql8NkHwiv76D4=
X-Google-Smtp-Source: APXvYqx5WwGg9gYzTMHUa8Dv2pXUjmB+Wizp9KeCnIABu3FjA/xVVSutNP1q3LlHpiIuE7R3U8aBmi68F1moYQ1XuuA=
X-Received: by 2002:a6b:9308:: with SMTP id v8mr1802592iod.221.1568986138351;
 Fri, 20 Sep 2019 06:28:58 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 20 Sep 2019 15:28:49 +0200
X-Gmail-Original-Message-ID: <CAMufup7+V+OQ+pEVYgdcXGDTXWa+DCodQOyRbU0WFvbxY9DnjA@mail.gmail.com>
Message-ID: <CAMufup7+V+OQ+pEVYgdcXGDTXWa+DCodQOyRbU0WFvbxY9DnjA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006f1dd60592fc0dd6"
Subject: [oss-security] [CVE-2019-10089] Apache JSPWiki Cross-site scripting vulnerability on
 WYSIWYG editor

--0000000000006f1dd60592fc0dd6
Content-Type: text/plain; charset="UTF-8"

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the WYSIWYG editor, which could
allow the attacker to execute javascript in the victim's browser and get
some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by Jegatheesh A, from ZOHO-CRM Security team.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-10089

--0000000000006f1dd60592fc0dd6--
