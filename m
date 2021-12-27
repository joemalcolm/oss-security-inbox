X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Monday" "27" "December" "2021" "22:25:04" "+0800" "JunXu Chen" "chenjunxu@apache.org" nil "27" "[oss-security] CVE-2021-45232: Apache APISIX Dashboard: security vulnerability on unauthorized access" nil nil nil "12" nil nil (number mark "U       chenjunxu@ap Dec 27   27/747   " thread-indent "\"[oss-security] CVE-2021-45232: Apache APISIX Dashboard: security vulnerability on unauthorized access\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45232: Apache APISIX Dashboard: security vulnerability on unauthorized access" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18101 invoked by uid 550); 27 Dec 2021 15:06:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3098 invoked from network); 27 Dec 2021 14:25:29 -0000
X-Gm-Message-State: AOAM531EHW5fRVjDesAjVICu28PaptNsKmm7aGo/ERXH/NBs9fGHMGcL
	PKXH1NaoZDCXshVBeDOLvxjymAbZgVnDSzjfBUA=
X-Google-Smtp-Source: ABdhPJzXS2f4F0hYS5qRezidNfBCUBcU5ZJrcXkb9Xc/yqIBrpawnBLWTk2y57y+WBdhkjUJAFJRcpmD8wZGL1Bz7rA=
X-Received: by 2002:aa7:c641:: with SMTP id z1mr16739077edr.84.1640615115046;
 Mon, 27 Dec 2021 06:25:15 -0800 (PST)
MIME-Version: 1.0
From: JunXu Chen <chenjunxu@apache.org>
Date: Mon, 27 Dec 2021 22:25:04 +0800
X-Gmail-Original-Message-ID: <CAMikTu7OC1+SN_nOMEcSdFoE7EVmVKYt56WctqQe+nDYqMkAVA@mail.gmail.com>
Message-ID: <CAMikTu7OC1+SN_nOMEcSdFoE7EVmVKYt56WctqQe+nDYqMkAVA@mail.gmail.com>
To: announce@apache.org, dev@apisix.apache.org, 
	oss-security@lists.openwall.com, =?UTF-8?B?5pyx56a55oiQ?= <zhuyucheng@yuanbaotech.cn>
Content-Type: multipart/alternative; boundary="0000000000002545ac05d421797a"
Subject: [oss-security] CVE-2021-45232: Apache APISIX Dashboard: security vulnerability on
 unauthorized access

--0000000000002545ac05d421797a
Content-Type: text/plain; charset="UTF-8"

Severity: high

Description:

In Apache APISIX Dashboard before 2.10.1, the Manager API uses two
frameworks and introduces framework `droplet` on the basis of
framework `gin`, all APIs and authentication middleware are developed
based on framework `droplet`, but some API directly use the interface
of framework `gin` thus bypassing the authentication.

Mitigation:

Implement one of the following mitigation techniques:

1. Upgrade to release 2.10.1

2. Change the default username and password, restrict the source IP to
access the Apache APISIX Dashboard

Credit:

Independently discovered by ZHU Yucheng of YuanbaoTeach Security Team.

--0000000000002545ac05d421797a--
