X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1467" "Tuesday" "25" "May" "2021" "10:17:06" "+0200" "Emond Papegaaij" "papegaaij@apache.org" nil "36" "[oss-security] CVE-2021-23937: Apache Wicket: DNS proxy and possible amplification attack" nil nil nil "5" nil nil (number mark "U       papegaaij@ap May 25   36/1467  " thread-indent "\"[oss-security] CVE-2021-23937: Apache Wicket: DNS proxy and possible amplification attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-23937: Apache Wicket: DNS proxy and possible amplification attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7878 invoked by uid 550); 25 May 2021 09:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24569 invoked from network); 25 May 2021 08:17:29 -0000
X-Gm-Message-State: AOAM5314gADSHeWTBRQMzfGdISx6eU8Scuo99b4Sz4fDIOg6hYS7eHP2
	c9crXFn2u3pbBB+2c4aV44O2FWPhwFkD7pNk8ZY=
X-Google-Smtp-Source: ABdhPJxHOMW2p4J9tNn9TXORpCZaA5B5c1NM4H+KBth8ur2ON9I0ha4u+smrnlXhhvByyhfzDqAUjC0jT2cDOAA/b7k=
X-Received: by 2002:a05:6638:1382:: with SMTP id w2mr30924681jad.78.1621930637279;
 Tue, 25 May 2021 01:17:17 -0700 (PDT)
MIME-Version: 1.0
From: Emond Papegaaij <papegaaij@apache.org>
Date: Tue, 25 May 2021 10:17:06 +0200
X-Gmail-Original-Message-ID: <CAGXsc+aitBM=VqO-TjvY2GjpdUsDiBtDrHS_24Tp7=ZVwi3hqg@mail.gmail.com>
Message-ID: <CAGXsc+aitBM=VqO-TjvY2GjpdUsDiBtDrHS_24Tp7=ZVwi3hqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-23937: Apache Wicket: DNS proxy and possible amplification attack

Description:

A DNS proxy and possible amplification attack vulnerability in
WebClientInfo of Apache Wicket allows an attacker to trigger arbitrary
DNS lookups from the server when the X-Forwarded-For header is not
properly sanitized. This DNS lookup can be engineered to overload an
internal DNS server or to slow down request processing of the Apache
Wicket application causing a possible denial of service on either the
internal infrastructure or the web application itself.

This issue affects Apache Wicket Apache Wicket 9.x version 9.2.0 and
prior versions; Apache Wicket 8.x version 8.11.0 and prior versions;
Apache Wicket 7.x version 7.17.0 and prior versions and Apache Wicket
6.x version 6.2.0 and later versions.

Mitigation:

Sanitize the X-Forwarded-For header by running an Apache Wicket
application behind a reverse HTTP proxy. This proxy should put the
client IP address in the X-Forwarded-For header and not pass through
the contents of the header as received by the client.

The application developers are recommended to upgrade to:
- Apache Wicket 7.18.0
<https://wicket.apache.org/news/2021/04/06/wicket-7.18.0-released.html>
- Apache Wicket 8.12.0
<https://wicket.apache.org/news/2021/03/31/wicket-8.12.0-released.html>
- Apache Wicket 9.0.0
<https://wicket.apache.org/news/2021/03/30/wicket-9.3.0-released.html>

Credit:

Apache Wicket would like to thank Jonathan Juursema from
Topicus.Healthcare for reporting this issue.

Apache Wicket Team
