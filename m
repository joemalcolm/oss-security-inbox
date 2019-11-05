X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["837" "Tuesday" "5" "November" "2019" "15:53:54" "+0000" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGA+QOBH2ztTP4T+Nk_YSRO7oJCK1O3UZTGh6K313ma-WA@mail.gmail.com>" "23" "[oss-security] [CVE-2019-12406] Apache CXF does not restrict the number of message attachments" nil nil nil "11" "2019110515:53:54" "[oss-security] [CVE-2019-12406] Apache CXF does not restrict the number of message attachments" (number mark "U       coheigea@apa Nov  5   23/837   " thread-indent "\"[oss-security] [CVE-2019-12406] Apache CXF does not restrict the number of message attachments\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12406] Apache CXF does not restrict the number of message attachments" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1303 invoked by uid 550); 5 Nov 2019 17:13:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28282 invoked from network); 5 Nov 2019 15:54:18 -0000
X-Gm-Message-State: APjAAAUldgxyupWBz+sYI2f+/5U6SF/5RzPHUxthe8LXpX62GzqTUltX
	LHthrLF6Teyor14mXLT8tSE0uctSOdlGZTzdZ5o=
X-Google-Smtp-Source: APXvYqykSM9+IFClJCiPuGM/ujszUpZTw3hFPPZerstA2m5b90f9qpVqCqcRw72yHTnDNqeReDI3FEU0U9n+dyB6Aao=
X-Received: by 2002:a92:d28d:: with SMTP id p13mr35654063ilp.227.1572969245602;
 Tue, 05 Nov 2019 07:54:05 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Tue, 5 Nov 2019 15:53:54 +0000
X-Gmail-Original-Message-ID: <CAB8XdGA+QOBH2ztTP4T+Nk_YSRO7oJCK1O3UZTGh6K313ma-WA@mail.gmail.com>
Message-ID: <CAB8XdGA+QOBH2ztTP4T+Nk_YSRO7oJCK1O3UZTGh6K313ma-WA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000208c4705969b7192"
Subject: [oss-security] [CVE-2019-12406] Apache CXF does not restrict the number of message attachments

--000000000000208c4705969b7192
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-12406
[PRODUCT]:Apache CXF
[VERSION]:Apache CXF versions before 3.3.4 and 3.2.11
[PROBLEMTYPE]:Denial of Service
[REFERENCES]:
http://cxf.apache.org/security-advisories.data/CVE-2019-12406.txt.asc
[DESCRIPTION]:Apache CXF does not restrict the number of message
attachments present in a
              given message. This leaves open the possibility of a denial
of service type
              attack, where a malicious user crafts a message containing a
very large number
              of message attachments.

              From the 3.3.4 and 3.2.11 releases, a default limit of 50
message attachments
              is enforced. This is configurable via the message property
              "attachment-max-count".

--000000000000208c4705969b7192--
