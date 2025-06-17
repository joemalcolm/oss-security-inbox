Received: (qmail 13753 invoked by uid 550); 17 Jun 2025 21:24:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3815 invoked from network); 17 Jun 2025 21:17:51 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YzfDFKWL2+olGErZJVq4LiEg/Yk4NzxyUV83fkyCT1kUUIZJr7v
	xGcKKNSWt1w2B6tEIZjY11RBpjrpNnb4wet9v2hVfTrH+IpxU1PTB7VcHrEEjAHyrk2n8nDHkf4
	1z54YKnLkz41b4PNUZlBc+tTkEhbSvJs=
X-Google-Smtp-Source: AGHT+IE2PnzU7EY4cEdpTLV8+uSLUe2vi+ecfOivi1aI8ZPdIUl4uY88en9Ry7NHIGeo1KncM2pht+6KX8t/T4dBLPA=
X-Received: by 2002:a17:90b:17ca:b0:315:6f2b:ce5a with SMTP id
 98e67ed59e1d1-3156f2bd09bmr821070a91.11.1750195039929; Tue, 17 Jun 2025
 14:17:19 -0700 (PDT)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Tue, 17 Jun 2025 15:17:07 -0600
X-Gmail-Original-Message-ID: <CAGjw+kNpwn6Hpk5n6WBgLbma7LeabiTuvc1X98e_nO82PG_XHw@mail.gmail.com>
X-Gm-Features: AX0GCFtxNgVN-ClJB2-Uw2bFVkrDQTN872RZ8x5SoPreAsmUhsj_jL9xhIzv7g8
Message-ID: <CAGjw+kNpwn6Hpk5n6WBgLbma7LeabiTuvc1X98e_nO82PG_XHw@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a48e810637cb09df"
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server has an ACL issue, and also has a
 vulnerability in ESI processing

--000000000000a48e810637cb09df
Content-Type: text/plain; charset="UTF-8"

Description:
Apache Traffic Server has an ACL issue, and also has a vulnerability in ESI
processing

CVE:
CVE-2025-31698 - Client IP address from PROXY protocol is not used for ACL
CVE-2025-49763 - Remote DoS via memory exhaustion in ESI Plugin

Reported By:
Masakazu Kitajo (CVE-2025-31698)
Yohann Sillam (CVE-2025-49763)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.10
ATS 10.0.0 to 10.0.5

Mitigation:
9.x users should upgrade to 9.2.11 or later versions
10.x users should upgrade to 10.0.6 or later versions

Please note that the new versions only provide settings to mitigate issues.
Users are expected to configure those settings to mitigate the issues if
necessary.

Users who configure Apache Traffic Server to accept PROXY protocol can use
a new setting (proxy.config.acl.subjects) to choose which IP addresses to
use for the ACL configured by ip_allow.config and remap.config. Please
refer to the documentation for the detail.

Users who use the ESI plugin can use a new setting for the plugin
(--max-inclusion-depth) to limit the maximum inclusion depth. The default
value is 3 and it prevents infinite inclusion at a minimum.

CVE:
https://www.cve.org/CVERecord?id=CVE-2025-31698
https://www.cve.org/CVERecord?id=CVE-2025-49763

--000000000000a48e810637cb09df--
