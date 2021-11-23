X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["509" "Tuesday" "23" "November" "2021" "12:25:18" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "20" "[oss-security] [CVE-2021-40369] Apache JSPWiki Cross-site scripting vulnerability on Denounce plugin" nil nil nil "11" nil nil (number mark "U       juanpablo@ap Nov 23   20/509   " thread-indent "\"[oss-security] [CVE-2021-40369] Apache JSPWiki Cross-site scripting vulnerability on Denounce plugin\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-40369] Apache JSPWiki Cross-site scripting vulnerability on Denounce plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3632 invoked by uid 550); 23 Nov 2021 11:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3289 invoked from network); 23 Nov 2021 11:25:43 -0000
X-Gm-Message-State: AOAM531eRQSrbXUaUICuU7NPuWh2UASRM/J4lr0pLx5JtNykmVw+kJNA
	6407wLa2khBgTHniOL4qEQ3btndSs5zsAlvW0LQ=
X-Google-Smtp-Source: ABdhPJwLEb2aU4rjUyK9kfUD1eONInibSiSNZIwMX05vPhA4DL6WW+FyavjvusTTqFTsm6yQIuvs29nX/pJeboQe9ek=
X-Received: by 2002:a05:6602:2c0d:: with SMTP id w13mr4787486iov.79.1637666730754;
 Tue, 23 Nov 2021 03:25:30 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Tue, 23 Nov 2021 12:25:18 +0100
X-Gmail-Original-Message-ID: <CAMufup7TMstLf9vu=y=7qwwpiZP_EOn+pdJuYToqwERseYab+w@mail.gmail.com>
Message-ID: <CAMufup7TMstLf9vu=y=7qwwpiZP_EOn+pdJuYToqwERseYab+w@mail.gmail.com>
To: announce@apache.org, dev@jspwiki.apache.org, user@jspwiki.apache.org, 
	Apache Security Team <security@apache.org>, root@lazymaple.pw, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-40369] Apache JSPWiki Cross-site scripting vulnerability on
 Denounce plugin

Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M8

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the Denounce plugin, which
could allow the attacker to execute javascript in the victim's browser
and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0 or later.

Credit
This issue was discovered by map1e (root@lazymaple.pw).
