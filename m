X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["585" "Friday" "25" "February" "2022" "00:18:19" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "22" "[oss-security] [CVE-2022-24947] Apache JSPWiki CSRF Account Takeover" nil nil nil "2" nil nil (number mark "U       juanpablo@ap Feb 25   22/585   " thread-indent "\"[oss-security] [CVE-2022-24947] Apache JSPWiki CSRF Account Takeover\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2022-24947] Apache JSPWiki CSRF Account Takeover" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31806 invoked by uid 550); 25 Feb 2022 11:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26497 invoked from network); 24 Feb 2022 23:18:44 -0000
X-Gm-Message-State: AOAM533OO/q4cceWsgRSdkOJdnskLeGvXJJV5slY34caZd29IJF1c86J
	RIZOvyFvQ+c3vVrkEjdPE7leOLNjnRRewcq2/1o=
X-Google-Smtp-Source: ABdhPJzGRBjLjc9MfvbjSEDnA1stA95cIL+fzGNQ8j+jAy9fmX1gC0SW7ETaovYjp7BnfkgFiqOiuHvj7q6LpWVCBc4=
X-Received: by 2002:a05:6638:f95:b0:314:58f9:5896 with SMTP id
 h21-20020a0566380f9500b0031458f95896mr3899009jal.228.1645744710127; Thu, 24
 Feb 2022 15:18:30 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 25 Feb 2022 00:18:19 +0100
X-Gmail-Original-Message-ID: <CAMufup4RPMw8n=oq0apLMBStng9gEm+3yVs6P15-fA394WM3tQ@mail.gmail.com>
Message-ID: <CAMufup4RPMw8n=oq0apLMBStng9gEm+3yVs6P15-fA394WM3tQ@mail.gmail.com>
To: announce@apache.org, user@jspwiki.apache.org, dev@jspwiki.apache.org, 
	Paulos Yibelo <habte.yibelo@gmail.com>, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2022-24947] Apache JSPWiki CSRF Account Takeover

Severity
Critical

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.1

Description
Apache JSPWiki user preferences form is vulnerable to CSRF attacks,
which can lead to account takeover.

Mitigation
Apache JSPWiki users should upgrade to 2.11.2 or later. Installations
>= 2.7.0 can also enable user management workflows' manual approval to
mitigate the issue.

Credit
This issue was discovered initially by Cristian Borlovan from Ounce
Labs Security (ref. JSPWIKI-79), and later on and independently from
this by Paulos Yibelo, from Octagon Networks.
