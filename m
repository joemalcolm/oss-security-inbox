X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["968" "Tuesday" "14" "June" "2016" "17:46:18" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do4AKZuiifnELuyaBiNGWBEfkmnibMFffmULG7BQXZnyYA@mail.gmail.com>" "35" "[oss-security] Python CVE-2016-0772: smtplib StartTLS stripping attack" nil nil nil "6" "2016061415:46:18" "[oss-security] Python CVE-2016-0772: smtplib StartTLS stripping attack" (number mark "U       cbuissar@red Jun 14   35/968   " thread-indent "\"[oss-security] Python CVE-2016-0772: smtplib StartTLS stripping attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19926 invoked by uid 550); 14 Jun 2016 15:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19903 invoked from network); 14 Jun 2016 15:46:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=9GuDbFLIDVxUZiYnG0Q4YBAcvYhoo9Y51npAPtN47MQ=;
        b=PbLATbBdhTOEqUSnVM6FVKbBD0XBqj0mE4lenuRpeYlzS38FKN1V1hGM4tEn3YfcHR
         I6vLdIsMj8I2rSrisPNBwmHQ2uaZBm+Aj97t9UfGV+pvv8UEKeK2Emute/tdijgeB0MP
         0naWuEnQI3al0FvTVObVBnjttDgyK89g7k4SDG0YsGLAVsJhcZPq+hAz808wt/Jyamm1
         2pEy09oWzt1f6a7Lu6WjyfQtfFrBth1DdIktNjZaKECYSlqLQc2OmOdEs+kywoDtQKBp
         HHfMFIS2/Nch5wfSDI3lULYD4Xmx3ZMCM9BVjwUlOnbufymnfln4AZCg/proN+rfRLRz
         2Low==
X-Gm-Message-State: ALyK8tJ9dQme0K7i1V0myrC38QL7w8tN5LOZYszagDq40IZDGAPTWL/5tg8zeoXlKBo35SQs+q/dGNb2+AgG6AGw
MIME-Version: 1.0
X-Received: by 10.98.76.211 with SMTP id e80mr4303225pfj.28.1465919178284;
 Tue, 14 Jun 2016 08:46:18 -0700 (PDT)
Date: Tue, 14 Jun 2016 17:46:18 +0200
Message-ID: <CAKG8Do4AKZuiifnELuyaBiNGWBEfkmnibMFffmULG7BQXZnyYA@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1136e45ce43bac05353ee748
Subject: [oss-security] Python CVE-2016-0772: smtplib StartTLS stripping attack

--001a1136e45ce43bac05353ee748
Content-Type: text/plain; charset=UTF-8

Hi,

This is to publicly disclose Python CVE-2016-0772: smtplib StartTLS
stripping attack.

Description :
A vulnerability in smtplib allowing MITM attacker to perform a startTLS
stripping attack. smtplib does not seem to raise an exception when the
remote end (smtp server) is capable of negotiating starttls but fails to
respond with 220 (ok) to an explicit call of SMTP.starttls(). This may
allow a malicious MITM to perform a startTLS stripping attack if the client
code does not explicitly check the response code for startTLS.

Upstream patch :
3.4 branch : https://hg.python.org/cpython/rev/d590114c2394
2.7 branch : https://hg.python.org/cpython/rev/b3ce713fb9be

Red Hat Bugzilla :
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-0772

Reported by: Tin (Team Oststrom)

Kind regards,

-- 
Cedric Buissart,
Product Security

Purkynova 99
Brno 612 45

--001a1136e45ce43bac05353ee748--
