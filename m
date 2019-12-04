X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["650" "Wednesday" "4" "December" "2019" "06:25:00" "+0100" "mibo" "mibo@apache.org" "<CAGSZ4d6cZjj+-xeADxW=VOrzvLFzCGm-ZdqFAhvR2+e-8QSSVg@mail.gmail.com>" "23" "[oss-security] CVE-2019-17554: Olingo: XML External Entity resolution attack" nil nil nil "12" "2019120405:25:00" "[oss-security] CVE-2019-17554: Olingo: XML External Entity resolution attack" (number mark "U       mibo@apache. Dec  4   23/650   " thread-indent "\"[oss-security] CVE-2019-17554: Olingo: XML External Entity resolution attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-17554: Olingo: XML External Entity resolution attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32588 invoked by uid 550); 4 Dec 2019 10:34:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23915 invoked from network); 4 Dec 2019 05:25:24 -0000
X-Gm-Message-State: APjAAAWkGS1WAqeSXvM4Ly7SKGgVyyY9bdR5RZ0CWFlC6lKKruFAxDC/
	672N3fhntGvpRiqCncjHNJ9pOyt5LCeAI0C31Ys=
X-Google-Smtp-Source: APXvYqwFqbOC9PJAyTPOykRdpe/8fakLe9DxsO1HaArKZytMvv9MpQpdwVT9Mn5CJeAPt8fceWzdnbHowTnm2XINpZ4=
X-Received: by 2002:a17:906:72c7:: with SMTP id m7mr1140658ejl.232.1575437111106;
 Tue, 03 Dec 2019 21:25:11 -0800 (PST)
MIME-Version: 1.0
From: mibo <mibo@apache.org>
Date: Wed, 4 Dec 2019 06:25:00 +0100
X-Gmail-Original-Message-ID: <CAGSZ4d6cZjj+-xeADxW=VOrzvLFzCGm-ZdqFAhvR2+e-8QSSVg@mail.gmail.com>
Message-ID: <CAGSZ4d6cZjj+-xeADxW=VOrzvLFzCGm-ZdqFAhvR2+e-8QSSVg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2019-17554: Olingo: XML External Entity resolution attack

CVE-2019-17554: XML External Entity resolution attack

Severity: Important
Vendor: The Apache Software Foundation

Versions Affected:
Olingo 4.0.0 to 4.6.0
The OData v2 versions of Olingo 2.x are not affected

Description:
The XML content type entity deserializer is not configured to deny the
resolution of external entities.
Request with content type "application/xml", which trigger the
deserialization of entities, can be used to trigger XXE attacks.

Mitigation:
4.x.x users should upgrade to 4.7.0

Credit:
This issue was discovered by Archibald Haddock of Compass Security Schweiz AG.

Links:
https://issues.apache.org/jira/browse/OLINGO-1409
