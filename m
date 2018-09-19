X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["545" "Wednesday" "19" "September" "2018" "08:47:28" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwV2-kTJKjNO1rV65bQrekkur7OWAu1x+pPRToRRYk=GPA@mail.gmail.com>" "21" "[oss-security] [CVE-2018-11762] Zip Slip Vulnerability in Apache Tika's tika-app" nil nil nil "9" "2018091912:47:28" "[oss-security] [CVE-2018-11762] Zip Slip Vulnerability in Apache Tika's tika-app" (number mark "U       tallison@apa Sep 19   21/545   " thread-indent "\"[oss-security] [CVE-2018-11762] Zip Slip Vulnerability in Apache Tika's tika-app\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13361 invoked by uid 550); 19 Sep 2018 12:47:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13334 invoked from network); 19 Sep 2018 12:47:53 -0000
X-Gm-Message-State: APzg51CEMXZSqIDjh663XFxbNuC5Mlv0vlfJpGDzOUxykWZve3PZ6u8V
	fPPGZrN5V+E6YyUpUW7jv5NAKD3xwaC/vXCdbUo=
X-Google-Smtp-Source: ANB0VdbvK83MrAFlOhKdIrP+sBe7lV9NYnME4+yvwc2GJ4bO0VZefRkrh4unwDHIieTQYJxCD+kLppBgBUSTVMlstZE=
X-Received: by 2002:a81:a097:: with SMTP id x145-v6mr14607670ywg.474.1537361259605;
 Wed, 19 Sep 2018 05:47:39 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 19 Sep 2018 08:47:28 -0400
X-Gmail-Original-Message-ID: <CAC1dCwV2-kTJKjNO1rV65bQrekkur7OWAu1x+pPRToRRYk=GPA@mail.gmail.com>
Message-ID: <CAC1dCwV2-kTJKjNO1rV65bQrekkur7OWAu1x+pPRToRRYk=GPA@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-11762] Zip Slip Vulnerability in Apache Tika's tika-app

CVE-2018-11762: Zip Slip Vulnerability in Apache Tika's tika-app

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 0.9 to 1.18

Description:
In a rare edge case where a user does not specify an extract directory on
the commandline (--extract-dir=) and the input file has an embedded file
with an absolute path, such as "C:/evil.bat", tika-app would overwrite
that file.

Mitigation:
Apache Tika users should upgrade to 1.19 or later

Credit:
This issue was discovered by Tim Allison on the Apache Tika team.
