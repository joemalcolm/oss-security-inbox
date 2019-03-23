X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["920" "Saturday" "23" "March" "2019" "14:58:41" "+0100" "Alex R" "alexr@apache.org" nil "32" nil "^Date:" nil nil "3" nil nil (number mark "        alexr@apache Mar 23   32/920   " thread-indent "\"[oss-security] CVE-2019-0204: Some Mesos components can be overwritten making arbitrary code execution possible.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0204: Some Mesos components can be overwritten making arbitrary code execution possible." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28086 invoked by uid 550); 23 Mar 2019 14:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11640 invoked from network); 23 Mar 2019 13:59:06 -0000
X-Gm-Message-State: APjAAAXOzw3VpPxCAFvOHvf5dMyoBVD6e6MQ7NiMEOoy3QJ+cRKBeTWw
	b9fa4uQHUtc4tHL2egSMPlrg3DUIHUZ5w6DcX6c=
X-Google-Smtp-Source: APXvYqyhfvlpzCyDSfQsqhcGyFTiAcjk+JEQylS30oeIgdhLnP6iuOE1vY+vekGK6jtk7lfeGPLTl8i/DnDSCI3V3A8=
X-Received: by 2002:a67:ef8d:: with SMTP id r13mr8197610vsp.6.1553349532508;
 Sat, 23 Mar 2019 06:58:52 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAPNiXbEebqXnrqodz2P6h0=_jFZGHTUXRR2Ps7umzaE=Y6nmFA@mail.gmail.com>
Message-ID: <CAPNiXbEebqXnrqodz2P6h0=_jFZGHTUXRR2Ps7umzaE=Y6nmFA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000018e94b0584c35f91"
Date: Sat, 23 Mar 2019 14:58:41 +0100
From: Alex R <alexr@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-0204: Some Mesos components can be overwritten making
 arbitrary code execution possible.
To: oss-security@lists.openwall.com

--00000000000018e94b0584c35f91
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.4.0 to 1.7.0
The unsupported Apache Mesos pre-1.4.0 releases may be also affected.

Description:
A specifically crafted Docker image running under the root user can
overwrite the init helper binary of the Mesos container runtime and/or
the Mesos command executor. A malicious actor can therefore gain
root-level code execution on the host.

Mitigation:
1.4.x users should upgrade to 1.4.3
1.5.x users should upgrade to 1.5.3
1.6.x users should upgrade to 1.6.2
1.7.x users should upgrade to 1.7.2
1.8-dev users should obtain Mesos 1.8.0 or latest snapshot of 1.8-dev

Credit:
This issue was discovered by Gilbert Song and Jie Yu based on similar RunC
vulnerability report, CVE-2019-5736.

Alex on behalf of Mesos PMC

--00000000000018e94b0584c35f91--
