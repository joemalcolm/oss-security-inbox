X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["900" "Monday" "9" "September" "2019" "15:04:33" "-0700" "Tomas Fernandez Lobbe" "tflobbe@apache.org" "<CAECwjAXAK+JLxRLrUfn3c6+BA=d9=0iGGPYPpN8qSt8DYN94iA@mail.gmail.com>" "31" "[oss-security] [SECURITY] CVE-2019-12401: XML Bomb in Apache Solr versions prior to 5.0" "^Date:" nil nil "9" "2019090922:04:33" "[oss-security] [SECURITY] CVE-2019-12401: XML Bomb in Apache Solr versions prior to 5.0" (number mark "U       tflobbe@apac Sep  9   31/900   " thread-indent "\"[oss-security] [SECURITY] CVE-2019-12401: XML Bomb in Apache Solr versions prior to 5.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-12401: XML Bomb in Apache Solr versions prior to 5.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3424 invoked by uid 550); 10 Sep 2019 01:03:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7858 invoked from network); 9 Sep 2019 22:05:07 -0000
X-Gm-Message-State: APjAAAVLShs+KXFu0NLVGgq5pf8yXYxNdHN+1cdAd/1gJ9uuqTGMvGQQ
	L4nXqV7N5zyZ/Ef4fdSuzj0arqyRu9Khl2QZCXI=
X-Google-Smtp-Source: APXvYqwwsKoziMxcBSNvU0Uo/L1C85xloRT/9JTr5l+hFUYlWKaEVBXmyuRnRn4P04ero/O5rWukXgg5ZXGfGTLOu5Y=
X-Received: by 2002:a65:4505:: with SMTP id n5mr21663934pgq.301.1568066684377;
 Mon, 09 Sep 2019 15:04:44 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAECwjAXAK+JLxRLrUfn3c6+BA=d9=0iGGPYPpN8qSt8DYN94iA@mail.gmail.com>
Message-ID: <CAECwjAXAK+JLxRLrUfn3c6+BA=d9=0iGGPYPpN8qSt8DYN94iA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b4dfa5059225f9b2"
Date: Mon, 9 Sep 2019 15:04:33 -0700
From: Tomas Fernandez Lobbe <tflobbe@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2019-12401: XML Bomb in Apache Solr versions prior to 5.0
To: oss-security@lists.openwall.com

--000000000000b4dfa5059225f9b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
1.3.0 to 1.4.1
3.1.0 to 3.6.2
4.0.0 to 4.10.4

Description: Solr versions prior to 5.0.0 are vulnerable to an XML resource
consumption attack (a.k.a. Lol Bomb) via it=E2=80=99s update handler. By le=
veraging
XML DOCTYPE and ENTITY type elements, the attacker can create a pattern
that will expand when the server parses the XML causing OOMs

Mitigation:
* Upgrade to Apache Solr 5.0 or later.
* Ensure your network settings are configured so that only trusted traffic
is allowed to post documents to the running Solr instances.

Credit: Matei "Mal" Badanoiu

References:
[1] https://issues.apache.org/jira/browse/SOLR-13750
[2] https://wiki.apache.org/solr/SolrSecurity

--000000000000b4dfa5059225f9b2--
