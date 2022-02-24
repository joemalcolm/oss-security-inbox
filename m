X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["534" "Friday" "25" "February" "2022" "00:20:02" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "20" "[oss-security] [CVE-2022-24948] Apache JSPWiki Cross-site scripting vulnerability on User Preferences screen" nil nil nil "2" nil nil (number mark "U       juanpablo@ap Feb 25   20/534   " thread-indent "\"[oss-security] [CVE-2022-24948] Apache JSPWiki Cross-site scripting vulnerability on User Preferences screen\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2022-24948] Apache JSPWiki Cross-site scripting vulnerability on User Preferences screen" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32255 invoked by uid 550); 25 Feb 2022 11:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27823 invoked from network); 24 Feb 2022 23:20:27 -0000
X-Gm-Message-State: AOAM531oUpFiAfkzbP+8QVwiVxjcg9MBJo+fCnoww4Y3NiUr6zQsuRJA
	MYweIws+/kbJNrVBZCUHHGhuy9A5VBEJvuE6Huk=
X-Google-Smtp-Source: ABdhPJyFZCsPcJw3Iv2t2Hzwkd3WnBf0dpUABaHxaFol/3i+tJVNJmCX5JEUvLOMa4VvkbSSj0BdM3FT7l218I6RRiE=
X-Received: by 2002:a92:dc90:0:b0:2be:f994:7dcf with SMTP id
 c16-20020a92dc90000000b002bef9947dcfmr4067392iln.160.1645744813013; Thu, 24
 Feb 2022 15:20:13 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 25 Feb 2022 00:20:02 +0100
X-Gmail-Original-Message-ID: <CAMufup7EzAAJ6QMk7C7mPutijDzFN5sG9xu1B4d2TSWF1h0eyQ@mail.gmail.com>
Message-ID: <CAMufup7EzAAJ6QMk7C7mPutijDzFN5sG9xu1B4d2TSWF1h0eyQ@mail.gmail.com>
To: announce@apache.org, dev@jspwiki.apache.org, user@jspwiki.apache.org, 
	Apache Security Team <security@apache.org>, Paulos Yibelo <habte.yibelo@gmail.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2022-24948] Apache JSPWiki Cross-site scripting vulnerability on
 User Preferences screen

Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.1

Description
A carefully crafted user preferences for submission could trigger an
XSS vulnerability on Apache JSPWiki, related to the user preferences
screen, which could allow the attacker to execute javascript in the
victim's browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.2 or later.

Credit
This issue was discovered by Paulos Yibelo, from Octagon Networks.
