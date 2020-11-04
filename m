X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Wednesday" "4" "November" "2020" "16:30:27" "-0500" "Brian Demers" "bdemers@apache.org" "<CAH9eYVpmWAVAnUm5=7ASohtnOyWsN5zoeZ7ieDCeaML_tvq35w@mail.gmail.com>" "20" "[oss-security] [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability" nil nil nil "11" "2020110421:30:27" "[oss-security] [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability" (number mark "U       bdemers@apac Nov  4   20/794   " thread-indent "\"[oss-security] [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9616 invoked by uid 550); 4 Nov 2020 21:53:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30061 invoked from network); 4 Nov 2020 21:30:51 -0000
X-Gm-Message-State: AOAM530Ytgsm2UrXlow3eoKl92OU1RxV+UPGUXBV7PdYmiUVLih0QcPu
	OXdMskHK0WITsus9wjjmoa/IKxHuJpdPIuN3OdU=
X-Google-Smtp-Source: ABdhPJxVofXn8sSYSPce1wlXbYfGF4yFgRf1fkga6voYp47OjHaWH0MUcZCDaC3NFZhYwXJFN4sRb1tf03DHNN7jg7c=
X-Received: by 2002:aa7:db82:: with SMTP id u2mr29331173edt.262.1604525437988;
 Wed, 04 Nov 2020 13:30:37 -0800 (PST)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Wed, 4 Nov 2020 16:30:27 -0500
X-Gmail-Original-Message-ID: <CAH9eYVpmWAVAnUm5=7ASohtnOyWsN5zoeZ7ieDCeaML_tvq35w@mail.gmail.com>
Message-ID: <CAH9eYVpmWAVAnUm5=7ASohtnOyWsN5zoeZ7ieDCeaML_tvq35w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: security <security@shiro.apache.org>
Content-Type: multipart/alternative; boundary="000000000000c3b64b05b34eb08e"
Subject: [oss-security] [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability

--000000000000c3b64b05b34eb08e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Apache Shiro before 1.7.0, when using Apache Shiro with Spring, a specially
crafted HTTP request may cause an authentication bypass.

If you are NOT using Shiro=E2=80=99s Spring Boot Starter
(`shiro-spring-boot-web-starter`), you must configure add the
ShiroRequestMappingConfig auto configuration[1] to your application or
configure the equivalent manually[2].

[0] https://www.apache.org/security/
[1] https://shiro.apache.org/spring-framework.html#SpringFramework-WebConfig
[2]
https://github.com/apache/shiro/blob/shiro-root-1.7.0/support/spring/src/ma=
in/java/org/apache/shiro/spring/web/config/ShiroRequestMappingConfig.java#L=
28-L30

--000000000000c3b64b05b34eb08e--
