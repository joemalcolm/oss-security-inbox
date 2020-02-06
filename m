X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Thursday" "6" "February" "2020" "15:25:27" "+0100" "Jacopo Cappellato" "jacopoc@apache.org" nil "28" nil "^Date:" nil nil "2" nil nil (number mark "        jacopoc@apac Feb  6   28/561   " thread-indent "\"[oss-security] [SECURITY] CVE-2019-12426 information disclosure vulnerability in Apache OFBiz\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-12426 information disclosure vulnerability in Apache OFBiz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15374 invoked by uid 550); 6 Feb 2020 14:26:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12244 invoked from network); 6 Feb 2020 14:25:51 -0000
X-Gm-Message-State: APjAAAUGq8MoQjyqM4+ZBwS6J5BlPu/iSlnFiYb6malq/z3ANSz6kg3z
	HntlIdsBfHHkBjBp2p7oE1zAE6dPfr4pOS3qj7I=
X-Google-Smtp-Source: APXvYqwwlc4XJqV7KbG3CLD6ekhH89tS8Jgx8fSQMnLdKYb3U+qSQqMqnS5Sb7OkiTsEeEhvf8IUsgs5FJBn7OyGLas=
X-Received: by 2002:adf:edc4:: with SMTP id v4mr4041159wro.336.1580999138040;
 Thu, 06 Feb 2020 06:25:38 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEvdU_13o38HpfCWUE1hLt-k=fotsULFr-AGHq8CT0+FCMrzoA@mail.gmail.com>
Message-ID: <CAEvdU_13o38HpfCWUE1hLt-k=fotsULFr-AGHq8CT0+FCMrzoA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000003605a059de90cbc"
Date: Thu, 6 Feb 2020 15:25:27 +0100
From: Jacopo Cappellato <jacopoc@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2019-12426 information disclosure vulnerability in
 Apache OFBiz
To: oss-security@lists.openwall.com

--00000000000003605a059de90cbc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity:
Minor

Vendor:
The Apache Software Foundation

Versions Affected:
Apache OFBiz 16.11.01 to 16.11.06

Description:
an unauthenticated user could get access to information of some backend
screens by invoking setSessionLocale.

Mitigation:
Upgrade to 16.11.07

Credit:
This issue was discovered by =EF=BB=BFDennis Balkir <dennis.balkir@ecomify.=
de>.

References:
http://ofbiz.apache.org/security.html

--00000000000003605a059de90cbc--
