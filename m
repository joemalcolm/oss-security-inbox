X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["967" "Thursday" "13" "September" "2018" "16:52:53" "+0200" "Alex R" "alexr@apache.org" "<CAPNiXbG8-Z7BC=pts=EigRo0yNnvFU+GV6pBNQhKt9HpxFfu2g@mail.gmail.com>" "32" "[oss-security] CVE-2018-1330: Libprocess might crash when decoding malformed HTTP requests or malformed JSON payload." nil nil nil "9" "2018091314:52:53" "[oss-security] CVE-2018-1330: Libprocess might crash when decoding malformed HTTP requests or malformed JSON payload." (number mark "U       alexr@apache Sep 13   32/967   " thread-indent "\"[oss-security] CVE-2018-1330: Libprocess might crash when decoding malformed HTTP requests or malformed JSON payload.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1127 invoked by uid 550); 13 Sep 2018 14:59:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24277 invoked from network); 13 Sep 2018 14:53:18 -0000
X-Gm-Message-State: APzg51DS+3reMRPwk5FKCc+GuG+Wg/iGD+4OBfy7jw+JQJEwH4Bc/4mP
	whNabhL3rcmAgC+lacFF9o3rZZbNEq6mQrxAOwE=
X-Google-Smtp-Source: ANB0VdY59tc0g55LgaxT4lRelxKI02FFUWgXvqSAOL+L8qdIRfRpX6thnkIYjPMMb4tzJmVF39FrymusXWV6PmqHYU0=
X-Received: by 2002:a67:eb81:: with SMTP id e1-v6mr2805335vso.75.1536850384728;
 Thu, 13 Sep 2018 07:53:04 -0700 (PDT)
MIME-Version: 1.0
From: Alex R <alexr@apache.org>
Date: Thu, 13 Sep 2018 16:52:53 +0200
X-Gmail-Original-Message-ID: <CAPNiXbG8-Z7BC=pts=EigRo0yNnvFU+GV6pBNQhKt9HpxFfu2g@mail.gmail.com>
Message-ID: <CAPNiXbG8-Z7BC=pts=EigRo0yNnvFU+GV6pBNQhKt9HpxFfu2g@mail.gmail.com>
To: dev <dev@mesos.apache.org>, user <user@mesos.apache.org>, 
	Amon Flair <amon@nandynarwhals.org>, Lyon Yang <lyon.yang.s@gmail.com>, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	Yeo Quan Yang <quanyang@live.com>
Content-Type: multipart/alternative; boundary="00000000000041395e0575c1dd9c"
Subject: [oss-security] CVE-2018-1330: Libprocess might crash when decoding malformed HTTP
 requests or malformed JSON payload.

--00000000000041395e0575c1dd9c
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.4.0 to 1.5.0
The unsupported Apache Mesos pre-1.4.0 releases may be also affected.

Description:
When parsing a malformed JSON payload, libprocess might crash due to
an uncaught exception. Parsing chunked HTTP requests with trailers
can lead to a libprocess crash too because of the mistakenly planted
assertion. A malicious actor can therefore cause a denial of service
of Mesos masters rendering the Mesos-controlled cluster inoperable.

Mitigation:
pre-1.4.x users should upgrade to at least 1.4.2
1.4.x users should upgrade to 1.4.2
1.5.0 users should upgrade to 1.5.1
1.6.0-dev users should obtain Mesos 1.6.0 or later

Credit:
This issue was discovered by Lyon Yang (@l0Op3r), Jeremy Heng
(@nn\_amon) and Quan Yang (@quanyang).

Alex on behalf of Mesos PMC.

--00000000000041395e0575c1dd9c--
