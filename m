X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["916" "Wednesday" "20" "May" "2020" "12:49:32" "+0800" "George Ni" "nic@apache.org" "<CANUbERzvv4k6ac92XyZbVHOBt-ASHDAPgMC8xxFAo1jfNPQ2EA@mail.gmail.com>" "43" "[oss-security] [CVE-2020-1956] Apache Kylin command injection vulnerability" nil nil nil "5" "2020052004:49:32" "[oss-security] [CVE-2020-1956] Apache Kylin command injection vulnerability" (number mark "U       nic@apache.o May 20   43/916   " thread-indent "\"[oss-security] [CVE-2020-1956] Apache Kylin command injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1956] Apache Kylin command injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16116 invoked by uid 550); 20 May 2020 05:34:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18249 invoked from network); 20 May 2020 04:49:56 -0000
X-Gm-Message-State: AOAM532kcmtPO3NwO3elCk1pRqwqp5JVRae+NItMupD+3qgQrlOJ48MN
	S5I2BtLEoWhGELtk11rCGkUjYix5KwpO16WLpuY=
X-Google-Smtp-Source: ABdhPJwljtwAZnWJJm7zjLe835h77YqciOCi2EM43yCR+CeJ1vA2YYEr45Z2Eygc1oOBxDos4rG69oWUhKqxvFmDrZ0=
X-Received: by 2002:a05:620a:a83:: with SMTP id v3mr2886952qkg.456.1589950183967;
 Tue, 19 May 2020 21:49:43 -0700 (PDT)
MIME-Version: 1.0
From: George Ni <nic@apache.org>
Date: Wed, 20 May 2020 12:49:32 +0800
X-Gmail-Original-Message-ID: <CANUbERzvv4k6ac92XyZbVHOBt-ASHDAPgMC8xxFAo1jfNPQ2EA@mail.gmail.com>
Message-ID: <CANUbERzvv4k6ac92XyZbVHOBt-ASHDAPgMC8xxFAo1jfNPQ2EA@mail.gmail.com>
To: user <user@kylin.apache.org>, dev <dev@kylin.apache.org>, announce@apache.org, 
	Johannes Dahse <jdahse@ripstech.com>, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ed117905a60d1f2d"
Subject: [oss-security] [CVE-2020-1956] Apache Kylin command injection vulnerability

--000000000000ed117905a60d1f2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Kylin 2.3.0 to 2.3.2
Kylin 2.4.0 to 2.4.1
Kylin 2.5.0 to 2.5.2
Kylin 2.6.0 to 2.6.5
Kylin 3.0.0-alpha, Kylin 3.0.0-alpha2, Kylin 3.0.0-beta, Kylin 3.0.0, Kylin
3.0.1

Description:
Kylin has some restful apis which will concatenate os command with the user
input string, a user is likely to be able to execute any os command without
any protection or validation.

Mitigation:
Users should upgrade to 3.0.2 or 2.6.6 or set
kylin.tool.auto-migrate-cube.enabled to false to disable command execution.

Credit:
This issue was discovered by =EF=BB=BFJohannes Dahse.

References:
https://kylin.apache.org/docs/security.html

--=20

---------------------

Best regards,



Ni Chunen / George

--000000000000ed117905a60d1f2d--
