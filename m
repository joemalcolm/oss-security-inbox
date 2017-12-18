X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["767" "Monday" "18" "December" "2017" "12:35:21" "+0200" "Arina Ielchiieva" "arina@apache.org" "<CAC1ju523-hOdd3tO1xkqZyxyvPVwM+CFETec2c14wrVa6K6hVg@mail.gmail.com>" "33" "[oss-security] [SECURITY] CVE-2017-12630 Apache Drill XSS vulnerability" nil nil nil "12" "2017121810:35:21" "[oss-security] [SECURITY] CVE-2017-12630 Apache Drill XSS vulnerability" (number mark "U       arina@apache Dec 18   33/767   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-12630 Apache Drill XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32511 invoked by uid 550); 18 Dec 2017 11:52:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1619 invoked from network); 18 Dec 2017 10:35:40 -0000
X-Gm-Message-State: AKGB3mKlGbYn14cfKHPNx7pVgp+Bm5sTmzr5ZM09uN2wuk9Jrhyrq82x
	E5uhZ4wunGWy9bx8HwCO0UkVBiO5tjwiW8LB+jA=
X-Google-Smtp-Source: ACJfBotxJZNA5BQZYQubaqxTSlUCwkLd6ELTjZR54ZWcHRJ3UScZyXRsIMVJ8smcOYuX3z8lNGNh976r468bcK5nzsY=
X-Received: by 10.36.131.203 with SMTP id d194mr18079298ite.44.1513593321565;
 Mon, 18 Dec 2017 02:35:21 -0800 (PST)
MIME-Version: 1.0
From: Arina Ielchiieva <arina@apache.org>
Date: Mon, 18 Dec 2017 12:35:21 +0200
X-Gmail-Original-Message-ID: <CAC1ju523-hOdd3tO1xkqZyxyvPVwM+CFETec2c14wrVa6K6hVg@mail.gmail.com>
Message-ID: <CAC1ju523-hOdd3tO1xkqZyxyvPVwM+CFETec2c14wrVa6K6hVg@mail.gmail.com>
To: user <user@drill.apache.org>, dev@drill.apache.org, 
	Sanjog <sanjogpandasp@gmail.com>, security <security@apache.org>, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="94eb2c11898a44336305609ae8f6"
Subject: [oss-security] [SECURITY] CVE-2017-12630 Apache Drill XSS vulnerability

--94eb2c11898a44336305609ae8f6
Content-Type: text/plain; charset="UTF-8"

*CVE-2017-12630 Apache Drill XSS vulnerability*

*Severity*: Important

*Vendor:* The Apache Software Foundation

*Versions Affected:*
Apache Drill 1.11.0 and earlier

*Description*
In Apache Drill 1.11.0 and earlier when submitting form from Query page
users are able to pass arbitrary script or HTML which will take effect on
Profile page afterwards.

Example:
After submitting special script that returns cookie information from Query
page, malicious user may obtain this information from Profile page
afterwards.

*Mitigation:*
Users of the affected versions should upgrade to Apache Drill to 1.12.0 and
later.

*Credit:*
Sanjog Panda

Kind regards
Arina

--94eb2c11898a44336305609ae8f6--
