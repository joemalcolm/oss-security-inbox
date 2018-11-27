X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["687" "Tuesday" "27" "November" "2018" "09:49:16" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq7S4BcPrSiCS4zoNU3E+g5=FWeB2GCK9zW7tMNHPrNumw@mail.gmail.com>" "23" "[oss-security] CVE-2018-11766: Apache Hadoop privilege escalation vulnerability" nil nil nil "11" "2018112700:49:16" "[oss-security] CVE-2018-11766: Apache Hadoop privilege escalation vulnerability" (number mark "U       aajisaka@apa Nov 27   23/687   " thread-indent "\"[oss-security] CVE-2018-11766: Apache Hadoop privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8104 invoked by uid 550); 27 Nov 2018 11:08:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30516 invoked from network); 27 Nov 2018 00:49:42 -0000
X-Gm-Message-State: AA+aEWZu9b/ejHKAR02LuAqg0ZdSlzgh2LGViTXrL6YSLWWw12Y3JyhN
	NgDZ1ZN24fb2hBLVNKdRK6DRz00aWGr2K5OgX3w=
X-Google-Smtp-Source: AFSGD/Vv7dBz1zcGHXJLo6bb+EoiW8+WqiJGfJZzBX460LJu1YDEPQAhRPU0skwT04fRHq+FpqjWsO9UKaywziHs1rk=
X-Received: by 2002:a2e:8156:: with SMTP id t22-v6mr17358238ljg.32.1543279767294;
 Mon, 26 Nov 2018 16:49:27 -0800 (PST)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Tue, 27 Nov 2018 09:49:16 +0900
X-Gmail-Original-Message-ID: <CAP+3qq7S4BcPrSiCS4zoNU3E+g5=FWeB2GCK9zW7tMNHPrNumw@mail.gmail.com>
Message-ID: <CAP+3qq7S4BcPrSiCS4zoNU3E+g5=FWeB2GCK9zW7tMNHPrNumw@mail.gmail.com>
To: general@hadoop.apache.org, user@hadoop.apache.org, 
	security@hadoop.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-11766: Apache Hadoop privilege escalation vulnerability

CVE-2018-11766: Apache Hadoop privilege escalation vulnerability

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:
Apache Hadoop versions from 2.7.4 to 2.7.6

Description:
In Apache Hadoop 2.7.4 to 2.7.6, the security fix for CVE-2016-6811 is
incomplete.
A user who can escalate to yarn user can possibly run arbitrary
commands as root user.

Mitigation:
Users should upgrade to 2.7.7 or upper.
If you are using the affected version of Apache Hadoop and there are
any users who can escalate to yarn user and cannot escalate to root user,
remove the permission to escalate to yarn user from them.

Credit:
This issue was discovered by Wilfred Spiegelenburg.
