X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Monday" "20" "July" "2020" "17:17:16" "+0100" "Gary Tully" "gtully@apache.org" "<CAH+vQmMmWe_ghWoob-aKYkBXW5Nfaw30FFfsMBGMT-p4L1-Uqg@mail.gmail.com>" "29" "[oss-security] CVE-2020-13932 Apache ActiveMQ Artemis - Remote XSS in Web console Diagram Plugin" nil nil nil "7" "2020072016:17:16" "[oss-security] CVE-2020-13932 Apache ActiveMQ Artemis - Remote XSS in Web console Diagram Plugin" (number mark "U       gtully@apach Jul 20   29/833   " thread-indent "\"[oss-security] CVE-2020-13932 Apache ActiveMQ Artemis - Remote XSS in Web console Diagram Plugin\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13932 Apache ActiveMQ Artemis - Remote XSS in Web console Diagram Plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9706 invoked by uid 550); 20 Jul 2020 16:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7604 invoked from network); 20 Jul 2020 16:17:39 -0000
X-Gm-Message-State: AOAM533NTf0g3jKTPAnpqJSkqB1/X6ceJ2LUKTqmJGrRFqq7zwAyz7+S
	72n3No/whZP3iyJY40kuXtdkSVBlD1Z5i1ibmpk=
X-Google-Smtp-Source: ABdhPJzG8R49itc+kCYnZ7K+T4bcfxaTbroP8BT0dEBKUqpzRcMOP5E2gUWlGMidTMvVYw46jgrWCOlsze7tWHN1oAI=
X-Received: by 2002:a02:7108:: with SMTP id n8mr26022467jac.35.1595261847066;
 Mon, 20 Jul 2020 09:17:27 -0700 (PDT)
MIME-Version: 1.0
From: Gary Tully <gtully@apache.org>
Date: Mon, 20 Jul 2020 17:17:16 +0100
X-Gmail-Original-Message-ID: <CAH+vQmMmWe_ghWoob-aKYkBXW5Nfaw30FFfsMBGMT-p4L1-Uqg@mail.gmail.com>
Message-ID: <CAH+vQmMmWe_ghWoob-aKYkBXW5Nfaw30FFfsMBGMT-p4L1-Uqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b7dd2f05aae1d7a9"
Subject: [oss-security] CVE-2020-13932 Apache ActiveMQ Artemis - Remote XSS in Web console
 Diagram Plugin

--000000000000b7dd2f05aae1d7a9
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2017-5648

Apache ActiveMQ Artemis - Remote XSS in Web console Diagram Plugin

Severity: Medium

Vendor: The Apache Software Foundation

Affected Version: Apache ActiveMQ Artemis 2.5.0 to 2.13.0

Vulnerability details:
A specifically crafted MQTT packet which has an XSS payload as
client-id or topic name can exploit this vulnerability. The XSS
payload is being injected into the admin console's browser. The XSS
payload is triggered in the diagram plugin; queue node and the info
section.

Mitigation:
Upgrade to Apache ActiveMQ Artemis 2.14.0

Credit: This issue was discovered by Arun Magesh from Payatu Software Labs

see:
https://activemq.apache.org/security-advisories.data/CVE-2020-13932-announcement.txt

--000000000000b7dd2f05aae1d7a9--
