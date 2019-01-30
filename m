X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["469" "Wednesday" "30" "January" "2019" "21:01:43" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" "<CAMufup6pAEfJQv4MvELhYmcLigG-hKKoVO=At+Udh3ao4ZZkAg@mail.gmail.com>" "20" "[oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki" "^Date:" nil nil "1" "2019013020:01:43" "[oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki" (number mark "U       juanpablo@ap Jan 30   20/469   " thread-indent "\"[oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12046 invoked by uid 550); 31 Jan 2019 08:22:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29957 invoked from network); 30 Jan 2019 20:02:06 -0000
X-Gm-Message-State: AJcUukdZz6soJqOIW43El7pVxLYxkVaqB6VJ2MnF5v96PHn9qWrqBpcd
	NoZrUvqZiv8Bhxh7ujZJ5DQ380Izv9zoXLG9QWY=
X-Google-Smtp-Source: AHgI3IYrf7dgU+LtMTCZ0/W4q1YRxWh/5lp9mSXwQ2gctHXp/eHZZ3Hi11RHfSLb/oHmnjINbob3JzFDdynK1aGDjzA=
X-Received: by 2002:a6b:c005:: with SMTP id q5mr17597510iof.225.1548878513175;
 Wed, 30 Jan 2019 12:01:53 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAMufup6pAEfJQv4MvELhYmcLigG-hKKoVO=At+Udh3ao4ZZkAg@mail.gmail.com>
Message-ID: <CAMufup6pAEfJQv4MvELhYmcLigG-hKKoVO=At+Udh3ao4ZZkAg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000094058d0580b261b2"
Date: Wed, 30 Jan 2019 21:01:43 +0100
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on
 Apache JSPWiki
To: oss-security@lists.openwall.com

--00000000000094058d0580b261b2
Content-Type: text/plain; charset="UTF-8"

 Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache JSPWiki up to 2.10.5

Description:
A carefully crafted URL could trigger an XSS vulnerability on Apache
JSPWiki, which could lead to session hijacking.

Mitigation:
Apache JSPWiki users should upgrade to 2.11.0.M1 or later.

Credit:
This issue was discovered by Jamie Parfet.

--00000000000094058d0580b261b2--
