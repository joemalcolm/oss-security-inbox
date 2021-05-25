X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Tuesday" "25" "May" "2021" "21:32:35" "+0800" "PengHui Li" "penghui@apache.org" nil "27" "[oss-security] CVE-2021-22160 Apache Pulsar Information Disclosure" nil nil nil "5" nil nil (number mark "U       penghui@apac May 25   27/749   " thread-indent "\"[oss-security] CVE-2021-22160 Apache Pulsar Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-22160 Apache Pulsar Information Disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11617 invoked by uid 550); 25 May 2021 14:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13669 invoked from network); 25 May 2021 13:33:37 -0000
X-Gm-Message-State: AOAM532S6y/WyaAsqtP8voty7R4R13TvQFeirRBVrp0URtaAkoNHgmTb
	Lw95zrsEmn6XM8m5/FyVk9ohCT9Ez4rPyUmEU8M=
X-Google-Smtp-Source: ABdhPJzImw/klN9J6pFGYrJ+cyt8xGIR4OV3TBDQnbwFLcLbRb3J6ajosVqEQJV4X7QlhjQtXl0+foPRMMHOoma6zwI=
X-Received: by 2002:ac2:4423:: with SMTP id w3mr13699713lfl.208.1621949588346;
 Tue, 25 May 2021 06:33:08 -0700 (PDT)
MIME-Version: 1.0
From: PengHui Li <penghui@apache.org>
Date: Tue, 25 May 2021 21:32:35 +0800
X-Gmail-Original-Message-ID: <CAJVHGGx-d9_mBWHU=hr74CsrsxvLwsq65+ZHhOGiKU3qgkw=nQ@mail.gmail.com>
Message-ID: <CAJVHGGx-d9_mBWHU=hr74CsrsxvLwsq65+ZHhOGiKU3qgkw=nQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000e9d5d05c32791e8"
Subject: [oss-security] CVE-2021-22160 Apache Pulsar Information Disclosure

--0000000000000e9d5d05c32791e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2021-22160 Apache Pulsar Information Disclosure

Severity: High

Versions Affected:
Apache Pulsar < 2.7.1

Description:
If Apache Pulsar is configured to authenticate clients using tokens
based on JSON Web Tokens (JWT), the signature of the token is not
validated if the algorithm of the presented token is set to "none".
This allows an attacker to connect to Pulsar instances as any user
(incl. admins).

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
Upgrade to Apache Pulsar 2.7.1 or later

Credit:
This issue was identified by Peter St=C3=B6ckli

--0000000000000e9d5d05c32791e8--
