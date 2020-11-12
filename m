X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Thursday" "12" "November" "2020" "12:37:40" "+0000" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGAuC-vNnmnx+=gHe7=s-w2R3113+=qfAWS+UBOrM5Fz_w@mail.gmail.com>" "28" "[oss-security] CVE-2020-13954: Apache CXF Reflected XSS in the services listing page via the styleSheetPath" nil nil nil "11" "2020111212:37:40" "[oss-security] CVE-2020-13954: Apache CXF Reflected XSS in the services listing page via the styleSheetPath" (number mark "U       coheigea@apa Nov 12   28/886   " thread-indent "\"[oss-security] CVE-2020-13954: Apache CXF Reflected XSS in the services listing page via the styleSheetPath\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13954: Apache CXF Reflected XSS in the services listing page via the styleSheetPath" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7666 invoked by uid 550); 12 Nov 2020 12:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1794 invoked from network); 12 Nov 2020 12:38:19 -0000
X-Gm-Message-State: AOAM532WeqyPfA/AyFANcCPaHtYLXp/21rcGchHlO7MAm2P1sHwBXqTY
	WISwIcYgIdYHOJCuGcj8GsMvfKyB4Wx27JqigMY=
X-Google-Smtp-Source: ABdhPJxAzlJXTNd8fzSNMUmdXemSuCy+8HZJlOkTnw804SCEEW1/0dgpDLnDJ64N5Jcdp5G5IU1if0YpMbPPn3z6qgs=
X-Received: by 2002:a05:6e02:1094:: with SMTP id r20mr7155318ilj.40.1605184672094;
 Thu, 12 Nov 2020 04:37:52 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 12 Nov 2020 12:37:40 +0000
X-Gmail-Original-Message-ID: <CAB8XdGAuC-vNnmnx+=gHe7=s-w2R3113+=qfAWS+UBOrM5Fz_w@mail.gmail.com>
Message-ID: <CAB8XdGAuC-vNnmnx+=gHe7=s-w2R3113+=qfAWS+UBOrM5Fz_w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002de23805b3e82eb3"
Subject: [oss-security] CVE-2020-13954: Apache CXF Reflected XSS in the services listing page
 via the styleSheetPath

--0000000000002de23805b3e82eb3
Content-Type: text/plain; charset="UTF-8"

Description:

By default, Apache CXF creates a /services page containing a listing of the
available endpoint names and addresses. This webpage is vulnerable to a
reflected Cross-Site Scripting (XSS) attack via the styleSheetPath, which
allows a malicious actor to inject javascript into the web page.

This vulnerability affects all versions of Apache CXF prior to 3.4.1 and
3.3.8.

Please note that this is a separate issue to CVE-2019-17573.

Workaround:

Users of Apache CXF should update to either 3.3.8 or 3.4.1. Alternatively,
it is possible to disable the service listing altogether by setting the
"hide-service-list-page" servlet parameter to "true".

Credit:

Thanks to Ryan Lambeth for reporting this issue.

References: http://cxf.apache.org/security-advisories.html

--0000000000002de23805b3e82eb3--
