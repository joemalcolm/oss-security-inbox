X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["817" "Tuesday" "22" "October" "2019" "23:00:45" "+0200" "Dominik Stadler" "centic@apache.org" "<CABdJj56vHPvGo=nqZPYb1tPGVa_cSOwgBn6-TFj3FCE6KQXSEw@mail.gmail.com>" "29" "[oss-security] CVE-2019-12415 - XML External Entity (XXE) Processing in Apache POI" nil nil nil "10" "2019102221:00:45" "[oss-security] CVE-2019-12415 - XML External Entity (XXE) Processing in Apache POI" (number mark "U       centic@apach Oct 22   29/817   " thread-indent "\"[oss-security] CVE-2019-12415 - XML External Entity (XXE) Processing in Apache POI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12415 - XML External Entity (XXE) Processing in Apache POI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5571 invoked by uid 550); 23 Oct 2019 09:35:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20031 invoked from network); 22 Oct 2019 21:01:09 -0000
X-Gm-Message-State: APjAAAWjpJhT6CVCStgCh+TRIiQoUZkSUokUAVUHwwlgqeIRWZ9puswF
	91ZGdhH6IGhOaK9croEjGBc0oZpI7aHQERY+RYo=
X-Google-Smtp-Source: APXvYqyTlpM1nXH14NejarHatV2rZYfgiSwKe3ibPIiEBWOu0oT98RshqV9zCFIajXNARAsWOl+woHLMkKv/G3htOag=
X-Received: by 2002:a05:620a:1211:: with SMTP id u17mr5049027qkj.310.1571778056707;
 Tue, 22 Oct 2019 14:00:56 -0700 (PDT)
MIME-Version: 1.0
From: Dominik Stadler <centic@apache.org>
Date: Tue, 22 Oct 2019 23:00:45 +0200
X-Gmail-Original-Message-ID: <CABdJj56vHPvGo=nqZPYb1tPGVa_cSOwgBn6-TFj3FCE6KQXSEw@mail.gmail.com>
Message-ID: <CABdJj56vHPvGo=nqZPYb1tPGVa_cSOwgBn6-TFj3FCE6KQXSEw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000bc63af059586187c"
Subject: [oss-security] CVE-2019-12415 - XML External Entity (XXE) Processing in Apache POI

--000000000000bc63af059586187c
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache POI up to version 4.1.0

Description:
When using the tool XSSFExportToXml to convert user-provided Microsoft
Excel documents, a specially crafted document can allow an attacker to
read files from the local filesystem or from internal network resources
via XML External Entity (XXE) Processing.

Mitigation:
Apache POI 4.1.0 and before: users who do not use the tool XSSFExportToXml
are not affected. affected users are advised to update to Apache POI 4.1.1
which fixes this vulnerability.

Credit:
This issue was discovered by Artem Smotrakov from SAP

References:
https://en.wikipedia.org/wiki/XML_external_entity_attack

--000000000000bc63af059586187c--
