X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Wednesday" "5" "January" "2022" "18:32:51" "-0500" "Neil Griffin" "asfgriff@apache.org" nil "20" "[oss-security] CVE-2021-36738: XSS vulnerability in the JSP version of the Apache Pluto Applicant MVCBean CDI portlet" nil nil nil "1" nil nil (number mark "U       asfgriff@apa Jan  5   20/537   " thread-indent "\"[oss-security] CVE-2021-36738: XSS vulnerability in the JSP version of the Apache Pluto Applicant MVCBean CDI portlet\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36738: XSS vulnerability in the JSP version of the Apache Pluto Applicant MVCBean CDI portlet" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7835 invoked by uid 550); 5 Jan 2022 23:41:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3778 invoked from network); 5 Jan 2022 23:33:15 -0000
X-Gm-Message-State: AOAM5313RV06e1hFKeJqZvmmb+WgxB3HjsG7mJKhDnQMN0ZVEdxsOLtn
	oaNCAYRvrNCRyhZ7anH4MTob6m0lMA9x2iEA8To=
X-Google-Smtp-Source: ABdhPJy/RXVnfCCB12/yNQjMRIA5BVYufvZ3hZ/hhpFXIydZISzAQ7j6JRlMc8hMF89/O2C/ekMkG13AQhNJF5U1glc=
X-Received: by 2002:a4a:3e8d:: with SMTP id t135mr36791197oot.78.1641425581761;
 Wed, 05 Jan 2022 15:33:01 -0800 (PST)
MIME-Version: 1.0
From: Neil Griffin <asfgriff@apache.org>
Date: Wed, 5 Jan 2022 18:32:51 -0500
X-Gmail-Original-Message-ID: <CAAqbB_eXdFUkYbaAXQ8jxi5n+mEkbOY7Qnv4xWtWtZg6VS_+Pg@mail.gmail.com>
Message-ID: <CAAqbB_eXdFUkYbaAXQ8jxi5n+mEkbOY7Qnv4xWtWtZg6VS_+Pg@mail.gmail.com>
To: general@portals.apache.org, pluto-user@portals.apache.org, 
	announce@apache.org, jetspeed-user@portals.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b9eb8205d4de2c81"
Subject: [oss-security] CVE-2021-36738: XSS vulnerability in the JSP version of the Apache
 Pluto Applicant MVCBean CDI portlet

--000000000000b9eb8205d4de2c81
Content-Type: text/plain; charset="UTF-8"

Severity: moderate

Description:

The input fields in the JSP version of the Apache Pluto Applicant MVCBean
CDI portlet are vulnerable to Cross-Site Scripting (XSS) attacks. Users
should migrate to version 3.1.1 of the
applicant-mvcbean-cdi-jsp-portlet.war artifact

Mitigation:

* Uninstall the applicant-mvcbean-cdi-jsp-portlet.war artifact
-or-
* Migrate to version 3.1.1 of the applicant-mvcbean-cdi-jsp-portlet.war
artifact

--000000000000b9eb8205d4de2c81--
