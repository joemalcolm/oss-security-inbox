X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1109" "Tuesday" "14" "July" "2020" "11:41:29" "+0800" "ShaoFeng Shi" "shaofengshi@apache.org" "<CANfpUcud+xBT1jg3k7t-XGzuQxKumZHBf+SMGNakd9Rwnh0gew@mail.gmail.com>" "33" "[oss-security] [SECURITY][CVE-2020-13926] Apache Kylin SQL injection vulnerability" nil nil nil "7" "2020071403:41:29" "[oss-security] [SECURITY][CVE-2020-13926] Apache Kylin SQL injection vulnerability" (number mark "U       shaofengshi@ Jul 14   33/1109  " thread-indent "\"[oss-security] [SECURITY][CVE-2020-13926] Apache Kylin SQL injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY][CVE-2020-13926] Apache Kylin SQL injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30417 invoked by uid 550); 14 Jul 2020 08:17:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5276 invoked from network); 14 Jul 2020 03:42:17 -0000
X-Gm-Message-State: AOAM531fWA6lhxWSqiTzdUHbAYOVKzq41RNZG3dCOm/zct81yWaGkidG
	HjK0CUV3GnMKMC0Y26E1nd21BiqgS6UXqF3WsZs=
X-Google-Smtp-Source: ABdhPJy/0kIsqMcEhExUPLzm5fVTnevXGa21arijLe8Wg8BFYp0JwXWVF68gXUFNrBelvQXK2yMADJFz29KFNmSNRvs=
X-Received: by 2002:a1f:30d8:: with SMTP id w207mr2308912vkw.62.1594698125807;
 Mon, 13 Jul 2020 20:42:05 -0700 (PDT)
MIME-Version: 1.0
From: ShaoFeng Shi <shaofengshi@apache.org>
Date: Tue, 14 Jul 2020 11:41:29 +0800
X-Gmail-Original-Message-ID: <CANfpUcud+xBT1jg3k7t-XGzuQxKumZHBf+SMGNakd9Rwnh0gew@mail.gmail.com>
Message-ID: <CANfpUcud+xBT1jg3k7t-XGzuQxKumZHBf+SMGNakd9Rwnh0gew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005017ae05aa5e975a"
Subject: [oss-security] [SECURITY][CVE-2020-13926] Apache Kylin SQL injection vulnerability

--0000000000005017ae05aa5e975a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Versions Affected: 2.0.0, 2.1.0, 2.2.0, 2.3.0, 2.3.1, 2.3.2, 2.4.0, 2.4.1,
2.5.0, 2.5.1, 2.5.2, 2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6,
3.0.0-alpha, 3.0.0-alpha2, 3.0.0-beta, 3.0.0, 3.0.1 3.0.2

Description:

Kylin concatenates and executes some Hive SQL statements in Hive CLI or
beeline when building new segments; some parts of the SQL are from system
configurations, while the configuration can be overwritten by certain rest
API, which makes SQL injection attack is possible.

Mitigation:
Users of all previous versions after 2.0 should upgrade to 3.1.0.

Credit:
We would like to thank Rupeng Wang from Kyligence for reporting and fix
this issue.

Best regards,

Shaofeng Shi =E5=8F=B2=E5=B0=91=E9=94=8B
Apache Kylin PMC
Email: shaofengshi@apache.org

Apache Kylin FAQ: https://kylin.apache.org/docs/gettingstarted/faq.html
Join Kylin user mail group: user-subscribe@kylin.apache.org
Join Kylin dev mail group: dev-subscribe@kylin.apache.org

--0000000000005017ae05aa5e975a--
