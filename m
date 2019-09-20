X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Friday" "20" "September" "2019" "15:32:05" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "27" nil nil nil nil "9" nil nil (number mark "U       juanpablo@ap Sep 20   27/696   " thread-indent "\"[oss-security] [CVE-2019-10090] Apache JSPWiki Cross-site scripting vulnerability on plain editor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10090] Apache JSPWiki Cross-site scripting vulnerability on plain editor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19761 invoked by uid 550); 20 Sep 2019 14:18:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17748 invoked from network); 20 Sep 2019 13:32:26 -0000
X-Gm-Message-State: APjAAAUYO+LLHCioFfV21y/pkr+BYlYe2vzwh8BKFq1me6XB+g/T/p+T
	yrWHKA6Df5sAbqz8oiD3X3xqRUhJt+fjZt6cmf0=
X-Google-Smtp-Source: APXvYqxRRF3j/rqRPP2HsqIWNukGkBVwnH2siXWgAmcTklifBU7+vcUpO+eL0ENohjCVNyHjk4lDpacZCbXjmh/MbuU=
X-Received: by 2002:a6b:8b50:: with SMTP id n77mr2022464iod.195.1568986334164;
 Fri, 20 Sep 2019 06:32:14 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 20 Sep 2019 15:32:05 +0200
X-Gmail-Original-Message-ID: <CAMufup624wBE-jowWQo9wuTaMT7Hf3QC-VMniFUTJhwM7C4ikQ@mail.gmail.com>
Message-ID: <CAMufup624wBE-jowWQo9wuTaMT7Hf3QC-VMniFUTJhwM7C4ikQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001afd650592fc1928"
Subject: [oss-security] [CVE-2019-10090] Apache JSPWiki Cross-site scripting vulnerability on
 plain editor

--0000000000001afd650592fc1928
Content-Type: text/plain; charset="UTF-8"

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the plain editor, which could
allow the attacker to execute javascript in the victim's browser and get
some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by Dirk Frederickx, from Apache JSPWiki.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-10090

--0000000000001afd650592fc1928--
