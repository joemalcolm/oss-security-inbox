X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Thursday" "30" "May" "2019" "10:35:35" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq608wFjzEuSyGUSa1D8Lwnu7_XxoSuqBM94ZM9iYBfHqw@mail.gmail.com>" "21" "[oss-security] CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability" nil nil nil "5" "2019053001:35:35" "[oss-security] CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability" (number mark "U       aajisaka@apa May 30   21/635   " thread-indent "\"[oss-security] CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24444 invoked by uid 550); 30 May 2019 09:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17478 invoked from network); 30 May 2019 01:36:15 -0000
X-Gm-Message-State: APjAAAUDawmTr95Gy7Ul8DRFHYO+9UtR43FIlCjF/T0vQ9t7gf6t/puU
	VU+o+i4/Oc3dMMoQYL6bbgQaD8KWqElbs1GjurA=
X-Google-Smtp-Source: APXvYqz9HKJiQGHCBTDqVlYXGAscx/tN/Kh7yVoSpwiIASJADnPYod2lhOF6DlZy3ry3twi0JTNIgnL8YCxQSkaeUgI=
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr513719ljj.52.1559180155802;
 Wed, 29 May 2019 18:35:55 -0700 (PDT)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Thu, 30 May 2019 10:35:35 +0900
X-Gmail-Original-Message-ID: <CAP+3qq608wFjzEuSyGUSa1D8Lwnu7_XxoSuqBM94ZM9iYBfHqw@mail.gmail.com>
Message-ID: <CAP+3qq608wFjzEuSyGUSa1D8Lwnu7_XxoSuqBM94ZM9iYBfHqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability

CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:
3.0.0-alpha1 to 3.1.0, 2.9.0 to 2.9.1, 2.2.0 to 2.8.4

Description:
A user who can escalate to yarn user can possibly run arbitrary
commands as root user.

Mitigation:
Users should upgrade to Apache Hadoop 2.8.5, 2.9.2, 3.1.1 or upper.
If you are using the affected version of Apache Hadoop and there are
any users who can escalate to yarn user and cannot escalate to root user,
remove the permission to escalate to yarn user from them.

Credit:
This issue was discovered by Miklos Szegedi.
