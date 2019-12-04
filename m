X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Wednesday" "4" "December" "2019" "06:27:11" "+0100" "mibo" "mibo@apache.org" "<CAGSZ4d6LBTEQyr_qB5xHEkhv83DL42Pysgh6BNBoJSouvshAiw@mail.gmail.com>" "23" "[oss-security] CVE-2019-17555: Olingo: DoS via Retry-After header vulnerability" nil nil nil "12" "2019120405:27:11" "[oss-security] CVE-2019-17555: Olingo: DoS via Retry-After header vulnerability" (number mark "U       mibo@apache. Dec  4   23/635   " thread-indent "\"[oss-security] CVE-2019-17555: Olingo: DoS via Retry-After header vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-17555: Olingo: DoS via Retry-After header vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1300 invoked by uid 550); 4 Dec 2019 10:34:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24318 invoked from network); 4 Dec 2019 05:27:34 -0000
X-Gm-Message-State: APjAAAVZ/pu9wHTl4TXtcGc5Z1Xrn/fTPtido49FZ+sBi0s86p4hUKUT
	gAKuVI408p7hzSXwM2FtttWiW8DEfzBVhnnMa9s=
X-Google-Smtp-Source: APXvYqyaqUQ1TwoWIQFZI7zxYLf/37CvdbQ5IZ+olxQJgyFW0OVIK5v28J4IMZB8W18ggME9wW4BqBYaj7CjohBs9B4=
X-Received: by 2002:a17:906:c78b:: with SMTP id cw11mr1189641ejb.262.1575437241619;
 Tue, 03 Dec 2019 21:27:21 -0800 (PST)
MIME-Version: 1.0
From: mibo <mibo@apache.org>
Date: Wed, 4 Dec 2019 06:27:11 +0100
X-Gmail-Original-Message-ID: <CAGSZ4d6LBTEQyr_qB5xHEkhv83DL42Pysgh6BNBoJSouvshAiw@mail.gmail.com>
Message-ID: <CAGSZ4d6LBTEQyr_qB5xHEkhv83DL42Pysgh6BNBoJSouvshAiw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2019-17555: Olingo: DoS via Retry-After header vulnerability

CVE-2019-17555: DoS via Retry-After header vulnerability

Severity: Important
Vendor: The Apache Software Foundation

Versions Affected:
Olingo 4.0.0 to 4.6.0
The OData v2 versions of Olingo 2.x are not affected

Description:
The AsyncResponseWrapperImpl class reads the Retry-After header and
passes it to the Thread.sleep() method without any check. If a
malicious server returns a huge value in the header, then it can help
to implement a DoS attack.

Mitigation:
4.x.x users should upgrade to 4.7.0

Credit:
This issue was discovered by =EF=BB=BFArtem Smotrakov of SAP SE.

Links:
https://issues.apache.org/jira/browse/OLINGO-1411
