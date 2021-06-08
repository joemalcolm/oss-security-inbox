X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["743" "Tuesday" "8" "June" "2021" "22:42:05" "+0800" "JunXu Chen" "chenjunxu@apache.org" nil "23" "[oss-security] CVE-2021-33190: Apache APISIX Dashboard: Bypass network access control" nil nil nil "6" nil nil (number mark "U       chenjunxu@ap Jun  8   23/743   " thread-indent "\"[oss-security] CVE-2021-33190: Apache APISIX Dashboard: Bypass network access control\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33190: Apache APISIX Dashboard: Bypass network access control" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19609 invoked by uid 550); 8 Jun 2021 15:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30579 invoked from network); 8 Jun 2021 14:42:30 -0000
X-Gm-Message-State: AOAM532iYt9yKm3777kCF/EIxw6S6/fkW3+B5YLCqJvT0f/xc9FWk5+r
	6kPsCmR2MxbSOJIxnOnYCkYoJkdd00YWtS5gVCU=
X-Google-Smtp-Source: ABdhPJzgLX+bkMO3nWyPn0Kp2Est5SMTKw0cWKWzxUF/3mtb1Le1OCPD7oQo5FWqqqUVMDdz/ZCHDIeRh4sVMBgkwDM=
X-Received: by 2002:a17:906:3ce:: with SMTP id c14mr24724364eja.426.1623163337843;
 Tue, 08 Jun 2021 07:42:17 -0700 (PDT)
MIME-Version: 1.0
From: JunXu Chen <chenjunxu@apache.org>
Date: Tue, 8 Jun 2021 22:42:05 +0800
X-Gmail-Original-Message-ID: <CAMikTu5EMKjehMu5gHGo5RUPOtVbwhdhibmrOX3du1HAWqqdbQ@mail.gmail.com>
Message-ID: <CAMikTu5EMKjehMu5gHGo5RUPOtVbwhdhibmrOX3du1HAWqqdbQ@mail.gmail.com>
To: announce@apache.org, dev@apisix.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, vernhk@qq.com
Content-Type: multipart/alternative; boundary="0000000000002a283205c4422a8b"
Subject: [oss-security] CVE-2021-33190: Apache APISIX Dashboard: Bypass network access control

--0000000000002a283205c4422a8b
Content-Type: text/plain; charset="UTF-8"

Severity: important

Description:

In Apache APISIX Dashboard version 2.6, we changed the default value of
listen host to 0.0.0.0 in order to facilitate users to configure external
network access. In the IP allowed list restriction, a risky function was
used for the IP acquisition, which made it possible to bypass the network
limit. At the same time, the default account and password are
fixed.Ultimately these factors lead to the issue of security risks.  This
issue is fixed in APISIX Dashboard 2.6.1.

Mitigation:

1. Change the account password after installation, do not use the default
password.

2. Upgrade to 2.6.1 or newer.

--0000000000002a283205c4422a8b--
