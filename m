X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Wednesday" "4" "December" "2019" "06:28:45" "+0100" "mibo" "mibo@apache.org" "<CAGSZ4d6Zo5jLuPJJ+2XsBX5Ji7kRCxruqxVE8LcqLV=VhQmXiQ@mail.gmail.com>" "23" "[oss-security] CVE-2019-17556: Olingo: Deserialization vulnerability" nil nil nil "12" "2019120405:28:45" "[oss-security] CVE-2019-17556: Olingo: Deserialization vulnerability" (number mark "U       mibo@apache. Dec  4   23/635   " thread-indent "\"[oss-security] CVE-2019-17556: Olingo: Deserialization vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-17556: Olingo: Deserialization vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2012 invoked by uid 550); 4 Dec 2019 10:34:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25696 invoked from network); 4 Dec 2019 05:29:09 -0000
X-Gm-Message-State: APjAAAWgnG3K8TkD4Y781Ijcbbg34UTuL9XOuSHi+8NrF5cymaiDMDCg
	rceHwh3MzP9WeDNpcmEgwlBFcUzqQJa9eBI58A0=
X-Google-Smtp-Source: APXvYqwdTNaiKq97DVdG6WBaSSDQL/gT3UPLDaQmXlsTxWQZX6T6nqjkymvPZO3O5biEUJXt8/aB1Qv9l7hO8pMVUxg=
X-Received: by 2002:a17:906:72c7:: with SMTP id m7mr1151779ejl.232.1575437336447;
 Tue, 03 Dec 2019 21:28:56 -0800 (PST)
MIME-Version: 1.0
From: mibo <mibo@apache.org>
Date: Wed, 4 Dec 2019 06:28:45 +0100
X-Gmail-Original-Message-ID: <CAGSZ4d6Zo5jLuPJJ+2XsBX5Ji7kRCxruqxVE8LcqLV=VhQmXiQ@mail.gmail.com>
Message-ID: <CAGSZ4d6Zo5jLuPJJ+2XsBX5Ji7kRCxruqxVE8LcqLV=VhQmXiQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2019-17556: Olingo: Deserialization vulnerability

CVE-2019-17556: Deserialization vulnerability

Severity: Important
Vendor: The Apache Software Foundation

Versions Affected:
Olingo 4.0.0 to 4.6.0
The OData v2 versions of Olingo 2.x are not affected

Description:
The AbstractService class, which is public API, uses ObjectInputStream
and doesn't check classes being deserialized. If an attacker can feed
malicious metadata to the class, then it may result in running
attacker's code in the worse case.

Mitigation:
4.x.x users should upgrade to 4.7.0

Credit:
This issue was discovered by =EF=BB=BFArtem Smotrakov of SAP SE.

Links:
https://issues.apache.org/jira/browse/OLINGO-1410
