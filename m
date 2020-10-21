X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["443" "Wednesday" "21" "October" "2020" "15:21:39" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq4w3UX6hdjr2SszhtfXUpbrg16PMyyJPHT+8PXimBTPMg@mail.gmail.com>" "18" "[oss-security] [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint" "^Date:" nil nil "10" "2020102106:21:39" "[oss-security] [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint" (number mark "U       aajisaka@apa Oct 21   18/443   " thread-indent "\"[oss-security] [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19757 invoked by uid 550); 21 Oct 2020 06:32:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7473 invoked from network); 21 Oct 2020 06:22:04 -0000
X-Gm-Message-State: AOAM531pa2nhtYLZrAIT8atFAaEW3Drd3nStXWikVG2cni4GljJlVXrW
	MX/YjRJk6eN9JGOPigk3fcNyx4F57C9l78pJ4Xo=
X-Google-Smtp-Source: ABdhPJxKMVxOSFT8vd/Mc8B4QWS3uLaI+lTr9uYp+cvbwPuAmSgWcEbBKcUicuHjhujSIv/4I4pjWMSoM842YBvvqHw=
X-Received: by 2002:a2e:99c2:: with SMTP id l2mr656191ljj.38.1603261311153;
 Tue, 20 Oct 2020 23:21:51 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAP+3qq4w3UX6hdjr2SszhtfXUpbrg16PMyyJPHT+8PXimBTPMg@mail.gmail.com>
Message-ID: <CAP+3qq4w3UX6hdjr2SszhtfXUpbrg16PMyyJPHT+8PXimBTPMg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 21 Oct 2020 15:21:39 +0900
From: Akira Ajisaka <aajisaka@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint
To: oss-security@lists.openwall.com

CVE-2018-11764: Apache Hadoop Privilege escalation in web endpoint

Severity: Critical

Vendor: The Apache Software Foundation

Versions affected:
3.0.0-alpha4, 3.0.0-beta1, and 3.0.0

Description:
Web endpoint authentication check is broken. Authenticated users may
impersonate any user even if no proxy user is configured.

Mitigation:
Users should upgrade to Apache Hadoop 3.0.1 or upper.

Credit:
This issue was discovered by Daryn Sharp.
