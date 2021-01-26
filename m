X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["828" "Tuesday" "26" "January" "2021" "09:34:07" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq5E8oXmyo4XU4FKzy9ZyDVUYLY+RtUuHeTPycc9gagFNA@mail.gmail.com>" "24" "[oss-security] [CVE-2020-9492] Apache Hadoop Potential privilege escalation" nil nil nil "1" "2021012600:34:07" "[oss-security] [CVE-2020-9492] Apache Hadoop Potential privilege escalation" (number mark "U       aajisaka@apa Jan 26   24/828   " thread-indent "\"[oss-security] [CVE-2020-9492] Apache Hadoop Potential privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9492] Apache Hadoop Potential privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28630 invoked by uid 550); 26 Jan 2021 08:25:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26180 invoked from network); 26 Jan 2021 00:34:31 -0000
X-Gm-Message-State: AOAM530DqoOKOqPhWG5kWYotykHOOG8wBusftmc+5/49/XTQlvCjIPgG
	0dtVr5NNH2SVaLwNusFkABolrQzx8S3aDA5Ly64=
X-Google-Smtp-Source: ABdhPJyk2m8aIHZtRGTThtvkEWN0tMntfqlRc4cKnSVscp3kvrJkh4y+6n0IS2rI2MOOI0LExBrWtpyCcwsRNANQ5lc=
X-Received: by 2002:a5e:8d03:: with SMTP id m3mr2402930ioj.130.1611621258770;
 Mon, 25 Jan 2021 16:34:18 -0800 (PST)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Tue, 26 Jan 2021 09:34:07 +0900
X-Gmail-Original-Message-ID: <CAP+3qq5E8oXmyo4XU4FKzy9ZyDVUYLY+RtUuHeTPycc9gagFNA@mail.gmail.com>
Message-ID: <CAP+3qq5E8oXmyo4XU4FKzy9ZyDVUYLY+RtUuHeTPycc9gagFNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2020-9492] Apache Hadoop Potential privilege escalation

CVE-2020-9492. Apache Hadoop Potential privilege escalation

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
3.2.0 to 3.2.1, 3.0.0-alpha1 to 3.1.3, 2.0.0-alpha to 2.10.0

Description:
WebHDFS client might send SPNEGO authorization header to remote URL
without proper verification. A crafty user can trigger services to
send server credentials to a webhdfs path for capturing the service
principal.

Mitigation:
Users of the affected versions should apply either of the following mitigations:
- Set different http signature secrets and use dedicated hosts for
each privileged impersonation service (such as HiveServer2).
- Upgrade to 3.3.0, 3.2.2, 3.1.4, 2.10.1, or newer with TLS encryption
enabled and configure dfs.http.policy to HTTPS_ONLY.

Credit:
This issue was discovered by Kevin Risden.
