X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1100" "Tuesday" "14" "July" "2020" "11:31:04" "+0800" "ShaoFeng Shi" "shaofengshi@apache.org" "<CANfpUcv3P9nza4UAJSHGScvrft53c8APzOaD=6sf0zrD4tiNMA@mail.gmail.com>" "33" "[oss-security] [SECURITY][CVE-2020-13925] Apache Kylin command injection vulnerability" nil nil nil "7" "2020071403:31:04" "[oss-security] [SECURITY][CVE-2020-13925] Apache Kylin command injection vulnerability" (number mark "U       shaofengshi@ Jul 14   33/1100  " thread-indent "\"[oss-security] [SECURITY][CVE-2020-13925] Apache Kylin command injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY][CVE-2020-13925] Apache Kylin command injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29882 invoked by uid 550); 14 Jul 2020 08:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1195 invoked from network); 14 Jul 2020 03:31:52 -0000
X-Gm-Message-State: AOAM530QvoHoz7bd/rozzUuqIUTlmtk2gVkVzgiofw92D4Bao5Z5AO6F
	y4sEbn5SH7JW+utWR7Jg8t6PuWMioVIJKsHBmjA=
X-Google-Smtp-Source: ABdhPJyLiQ2zUfZQcj9Dp3gfdM3WeYL0dnUVbTFuvJ+jsofjFMLjlLFc/h9k9MYwvzn9IGdoYPr2ne8zurSOFC7eatc=
X-Received: by 2002:a05:6102:126a:: with SMTP id q10mr1607641vsg.35.1594697500007;
 Mon, 13 Jul 2020 20:31:40 -0700 (PDT)
MIME-Version: 1.0
From: ShaoFeng Shi <shaofengshi@apache.org>
Date: Tue, 14 Jul 2020 11:31:04 +0800
X-Gmail-Original-Message-ID: <CANfpUcv3P9nza4UAJSHGScvrft53c8APzOaD=6sf0zrD4tiNMA@mail.gmail.com>
Message-ID: <CANfpUcv3P9nza4UAJSHGScvrft53c8APzOaD=6sf0zrD4tiNMA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000003227905aa5e72b4"
Subject: [oss-security] [SECURITY][CVE-2020-13925] Apache Kylin command injection vulnerability

--00000000000003227905aa5e72b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Versions Affected: 2.3.0, 2.3.1, 2.3.2, 2.4.0, 2.4.1, 2.5.0, 2.5.1, 2.5.2,
2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 3.0.0-alpha, 3.0.0-alpha2,
3.0.0-beta, 3.0.0, 3.0.1 3.0.2

Description:

Similar to CVE-2020-1956, Kylin has one more restful API which concatenates
the API inputs into OS commands and then executes them on the server; while
the reported API misses necessary input validation, which causes the
hackers to have the possibility to execute OS command remotely.

Mitigation:
Users of all previous versions after 2.3 should upgrade to 3.1.0.

Credit:
We would like to thank Clancey <clanceyz@protonmail.com> for reporting
this issue.

Best regards,

Shaofeng Shi =E5=8F=B2=E5=B0=91=E9=94=8B
Apache Kylin PMC
Email: shaofengshi@apache.org

Apache Kylin FAQ: https://kylin.apache.org/docs/gettingstarted/faq.html
Join Kylin user mail group: user-subscribe@kylin.apache.org
Join Kylin dev mail group: dev-subscribe@kylin.apache.org

--00000000000003227905aa5e72b4--
