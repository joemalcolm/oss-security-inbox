X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1235" "Monday" "13" "January" "2020" "14:08:01" "-0600" "Randall Hauch" "rhauch@apache.org" "<CALYgK0H9P-omi=V29--MQH5obuH8xGw4r0otPzsras-c+fmQaw@mail.gmail.com>" "45" "[oss-security] CVE-2019-12399: Apache Kafka Connect REST API may expose plaintext secrets in tasks endpoint" nil nil nil "1" "2020011320:08:01" "[oss-security] CVE-2019-12399: Apache Kafka Connect REST API may expose plaintext secrets in tasks endpoint" (number mark "U       rhauch@apach Jan 13   45/1235  " thread-indent "\"[oss-security] CVE-2019-12399: Apache Kafka Connect REST API may expose plaintext secrets in tasks endpoint\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12399: Apache Kafka Connect REST API may expose plaintext secrets in tasks endpoint" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19908 invoked by uid 550); 14 Jan 2020 06:21:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10066 invoked from network); 13 Jan 2020 20:08:24 -0000
X-Gm-Message-State: APjAAAUGgE4fzPp4jFafxg5maR3liKBIptCInTUEKa4fVI/gWFaiy4/X
	eAz8Nn/vS+KWiJdQK91fTBgLR/dCmWkW+b6HJNs=
X-Google-Smtp-Source: APXvYqzuDwLNrZtOelFpkCAzE45qAfq2V41qZmR1K12guuFUKnvXBeYKHaDCXMBNaJae8PhWWTDGFvrTVcswJjAxkyg=
X-Received: by 2002:a05:620a:1522:: with SMTP id n2mr13363960qkk.108.1578946092239;
 Mon, 13 Jan 2020 12:08:12 -0800 (PST)
MIME-Version: 1.0
From: Randall Hauch <rhauch@apache.org>
Date: Mon, 13 Jan 2020 14:08:01 -0600
X-Gmail-Original-Message-ID: <CALYgK0H9P-omi=V29--MQH5obuH8xGw4r0otPzsras-c+fmQaw@mail.gmail.com>
Message-ID: <CALYgK0H9P-omi=V29--MQH5obuH8xGw4r0otPzsras-c+fmQaw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f28e6d059c0b0800"
Subject: [oss-security] CVE-2019-12399: Apache Kafka Connect REST API may expose plaintext
 secrets in tasks endpoint

--000000000000f28e6d059c0b0800
Content-Type: text/plain; charset="UTF-8"

CVE-2019-12399: Apache Kafka Connect REST API exposes plaintext secrets in
tasks endpoint

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:

Apache Kafka 2.0.0, 2.0.1, 2.1.0, 2.1.1, 2.2.0, 2.2.1, 2.3.0

Description:

When Connect workers in Apache Kafka 2.0.0, 2.0.1, 2.1.0, 2.1.1, 2.2.0,
2.2.1, or 2.3.0 are configured with one or more config providers, and a
connector is created/updated on that Connect cluster to use an externalized
secret variable in a substring of a connector configuration property value
(the externalized secret variable is not the whole configuration property
value), then any client can issue a request to the same Connect cluster to
obtain the connector's task configurations and the response will contain
the plaintext secret rather than the externalized secrets variable.


Mitigation:

Apache Kafka Connect users should upgrade to one of the following versions
where this vulnerability has been fixed:
- 2.0.2 or higher
- 2.1.2 or higher
- 2.2.2 or higher
- 2.3.1 or higher

Acknowledgements:

This issue was first reported by Oleksandr Diachenko.


Regards,

Randall

--000000000000f28e6d059c0b0800--
