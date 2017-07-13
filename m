X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["566" "Thursday" "13" "July" "2017" "07:58:01" "-0500" "William A Rowe Jr" "wrowe@apache.org" "<CACsi251dwE_HzgX-eK9ALpTRNVF+M8ztZ3YyUm2y5yxeeWOrRQ@mail.gmail.com>" "24" "[oss-security] CVE-2017-9789: Apache httpd 2.4 Read after free in mod_http2" nil nil nil "7" "2017071312:58:01" "[oss-security] CVE-2017-9789: Apache httpd 2.4 Read after free in mod_http2" (number mark "U       wrowe@apache Jul 13   24/566   " thread-indent "\"[oss-security] CVE-2017-9789: Apache httpd 2.4 Read after free in mod_http2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5421 invoked by uid 550); 13 Jul 2017 13:02:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3345 invoked from network); 13 Jul 2017 12:58:17 -0000
X-Gm-Message-State: AIVw113zUulL5YyDtcE1ZVFWps07jYim54nsg+ZQr2/gDu+WnjiG67Vm
	ff2PcaPOazI5cTzu6Kz+zd1OcGkz+u3+
X-Received: by 10.25.193.66 with SMTP id r63mr1314422lff.150.1499950682483;
 Thu, 13 Jul 2017 05:58:02 -0700 (PDT)
MIME-Version: 1.0
From: William A Rowe Jr <wrowe@apache.org>
Date: Thu, 13 Jul 2017 07:58:01 -0500
X-Gmail-Original-Message-ID: <CACsi251dwE_HzgX-eK9ALpTRNVF+M8ztZ3YyUm2y5yxeeWOrRQ@mail.gmail.com>
Message-ID: <CACsi251dwE_HzgX-eK9ALpTRNVF+M8ztZ3YyUm2y5yxeeWOrRQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2017-9789: Apache httpd 2.4 Read after free in mod_http2

CVE-2017-9789: Read after free in mod_http2.c

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.26

Description:
When under stress, closing many connections, the HTTP/2
handling code would sometimes access memory after it has
been freed, resulting in potentially erratic behaviour.

Mitigation:
2.4.26 users of mod_http2 should upgrade to 2.4.27.

Credit:
The Apache HTTP Server security team would like to thank Robert =C5=9Awi=C4=
=99cki
for reporting this issue.

References:
https://httpd.apache.org/security_report.html
