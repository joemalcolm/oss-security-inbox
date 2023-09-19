Received: (qmail 25697 invoked by uid 550); 19 Sep 2023 17:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9418 invoked from network); 19 Sep 2023 10:45:21 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yz0uDoYGlxfjGPKHWoHCh9fW97FM2BdFfWPv2p3YcHDMXMdYvMw
	QbLCWDTE/O2/CxViVdzg5gHheV7XTimCfvarAMKySg==
X-Google-Smtp-Source: AGHT+IFHuv1wcRKbHYmphwMqI1Qg+LCwSO+eRCZ0pjaCqaXhayFMA6QPt7Bfg2vAqGaWpmPcfB9LI3FK3giN5HwofLo=
X-Received: by 2002:a17:907:97cb:b0:9aa:f7f:e276 with SMTP id
 js11-20020a17090797cb00b009aa0f7fe276mr3051533ejc.38.1695120235789; Tue, 19
 Sep 2023 03:43:55 -0700 (PDT)
MIME-Version: 1.0
From: Martijn Visser <martijnvisser@apache.org>
Date: Tue, 19 Sep 2023 12:43:45 +0200
X-Gmail-Original-Message-ID: <CAELFjNMCrNxurM6MJ2yc2Xckm9=AVV1XcLmw_GoX6m45s39NLw@mail.gmail.com>
Message-ID: <CAELFjNMCrNxurM6MJ2yc2Xckm9=AVV1XcLmw_GoX6m45s39NLw@mail.gmail.com>
To: dev@flink.apache.org, user <user@flink.apache.org>, 
	user-zh <user-zh@flink.apache.org>, news@flink.apache.org, 
	Apache Security Team <security@apache.org>, Andrea Cosentino <ancosen@gmail.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2023-41834] Apache Flink Stateful Functions allowed HTTP header
 injection due to Improper Neutralization of CRLF Sequences

CVE-2023-41834: Apache Flink Stateful Functions allowed HTTP header
injection due to Improper Neutralization of CRLF Sequences

Severity: moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Stateful Functions 3.1.0 to 3.2.0

Description:
Improper Neutralization of CRLF Sequences in HTTP Headers in Apache
Flink Stateful Functions 3.1.0, 3.1.1 and 3.2.0 allows remote
attackers to inject arbitrary HTTP headers and conduct HTTP response
splitting attacks via crafted HTTP requests. Attackers could
potentially inject malicious content into the HTTP response that is
sent to the user. This could include injecting a fake login form or
other phishing content, or injecting malicious JavaScript code that
can steal user credentials or perform other malicious actions on the
user's behalf.

Mitigation:
Users should upgrade to 3.3.0

Credit:
This issue was discovered by Andrea Cosentino from Apache Software Foundation

References:
https://flink.apache.org/security/
