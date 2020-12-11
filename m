X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["506" "Friday" "11" "December" "2020" "13:14:07" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" "<CAH5JyZpTnHka4PZFR60QKx_53NJsKVAYyYKHxe5Ro2P+ZgQEhg@mail.gmail.com>" "21" "[oss-security] CVE-2020-17515: Apache Airflow Reflected XSS via Origin Parameter" nil nil nil "12" "2020121113:14:07" "[oss-security] CVE-2020-17515: Apache Airflow Reflected XSS via Origin Parameter" (number mark "U       kaxilnaik@ap Dec 11   21/506   " thread-indent "\"[oss-security] CVE-2020-17515: Apache Airflow Reflected XSS via Origin Parameter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17515: Apache Airflow Reflected XSS via Origin Parameter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30220 invoked by uid 550); 11 Dec 2020 13:16:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28267 invoked from network); 11 Dec 2020 13:14:48 -0000
X-Gm-Message-State: AOAM530RXs5SHf5cCRTkV8GcUUWBOf1Ev1yfOs3w8aYWO4QCp/ybZNfG
	VKQdqpy7MofoBJlvE08cgy9/8uflKHoTteDN7B0=
X-Google-Smtp-Source: ABdhPJy+GlbjGQUf4oWTOZWHELPx/b2d+Rhjn30gZTAWnu8Fy2MA6xlKd3uU0xniWvi6KoAqH2tTrKTjS2Fp6JJFvtM=
X-Received: by 2002:aa7:d6d8:: with SMTP id x24mr11984822edr.105.1607692457887;
 Fri, 11 Dec 2020 05:14:17 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Fri, 11 Dec 2020 13:14:07 +0000
X-Gmail-Original-Message-ID: <CAH5JyZpTnHka4PZFR60QKx_53NJsKVAYyYKHxe5Ro2P+ZgQEhg@mail.gmail.com>
Message-ID: <CAH5JyZpTnHka4PZFR60QKx_53NJsKVAYyYKHxe5Ro2P+ZgQEhg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org
Content-Type: multipart/alternative; boundary="000000000000dc4ef705b6301144"
Subject: [oss-security] CVE-2020-17515: Apache Airflow Reflected XSS via Origin Parameter

--000000000000dc4ef705b6301144
Content-Type: text/plain; charset="UTF-8"

Versions Affected: < 1.10.13

Description:
The "origin" parameter passed to some of the endpoints like '/trigger' was
vulnerable to XSS exploit. This issue affects Apache Airflow versions prior
to 1.10.13.

This is same as CVE-2020-13944 but the implemented fix in Airflow 1.10.13
did not fix the issue completely.

Credit:
Ali Al-Habsi of Accellion

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--000000000000dc4ef705b6301144--
