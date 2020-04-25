X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["910" "Saturday" "25" "April" "2020" "11:44:29" "-0500" "Matt Sicker" "mattsicker@apache.org" "<CACmp6kpW7T64bucUe4oi50j=L-qQp9fEWG8iPGzOoZLmJeptQQ@mail.gmail.com>" "25" "[oss-security] [CVE-2020-9488] Improper validation of certificate with host mismatch in Apache Log4j SMTP appender" nil nil nil "4" "2020042516:44:29" "[oss-security] [CVE-2020-9488] Improper validation of certificate with host mismatch in Apache Log4j SMTP appender" (number mark "U       mattsicker@a Apr 25   25/910   " thread-indent "\"[oss-security] [CVE-2020-9488] Improper validation of certificate with host mismatch in Apache Log4j SMTP appender\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9488] Improper validation of certificate with host mismatch in Apache Log4j SMTP appender" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10145 invoked by uid 550); 25 Apr 2020 17:33:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24248 invoked from network); 25 Apr 2020 16:44:52 -0000
X-Gm-Message-State: AGi0PuY4856TtY8gSQbLnzHtl2I0D0/1/f6Pv94tTbEiR52cDCS9t448
	6YwZnjVxI7ToR94adjIyU3wGTkNrxcV1y6FgcqQ=
X-Google-Smtp-Source: APiQypKkdf1gkLx9vVod0Q6v5Zh1Tn/NkdcRi+rQLO2s/XftoldF4xyyp55okcwjImHUQ1fDS2ZUTC6R9ozXinJcYC4=
X-Received: by 2002:a92:1f11:: with SMTP id i17mr7601696ile.136.1587833079813;
 Sat, 25 Apr 2020 09:44:39 -0700 (PDT)
MIME-Version: 1.0
From: Matt Sicker <mattsicker@apache.org>
Date: Sat, 25 Apr 2020 11:44:29 -0500
X-Gmail-Original-Message-ID: <CACmp6kpW7T64bucUe4oi50j=L-qQp9fEWG8iPGzOoZLmJeptQQ@mail.gmail.com>
Message-ID: <CACmp6kpW7T64bucUe4oi50j=L-qQp9fEWG8iPGzOoZLmJeptQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2020-9488] Improper validation of certificate with host mismatch
 in Apache Log4j SMTP appender

Summary: Improper validation of certificate with host mismatch in
Log4j2 SMTP appender. This could allow an SMTPS connection to be
intercepted by a man-in-the-middle attack which could leak any log
messages sent through that appender.

Mitigation: Users should upgrade to Apache Log4j 2.13.2 which fixed
this issue in LOG4J2-2819 by making SSL settings configurable for
SMTPS mail sessions. As a workaround for previous releases, users can
set the `mail.smtp.ssl.checkserveridentity` system property to `true`
to enable SMTPS hostname verification for all SMTPS mail sessions.

https://issues.apache.org/jira/browse/LOG4J2-2819

CVE Details:
CWE: 297
CVSS: 3.7 (Low) CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N
Affects: Apache Log4j <=3D 2.13.1
Fixed: Log4j 2.13.2
Reported by: Peter St=C3=B6ckli <peter.stockli@alphabot.com>


--=20
Matt Sicker
Secretary, Apache Software Foundation
VP Logging Services, ASF
