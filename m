X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Wednesday" "24" "July" "2019" "09:27:15" "+0200" "=?UTF-8?B?U3RpZyBSb2hkZSBEw7hzc2luZw==?=" "srdo@apache.org" "<CAG09ER1O_+YYQzj9dmTJ225JtiB-qLeMJe=ztPO1bPF0ukiLcA@mail.gmail.com>" "16" "[oss-security] [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability" nil nil nil "7" "2019072407:27:15" "[oss-security] [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability" (number mark "U       srdo@apache. Jul 24   16/592   " thread-indent "\"[oss-security] [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15970 invoked by uid 550); 24 Jul 2019 08:06:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29738 invoked from network); 24 Jul 2019 07:27:38 -0000
X-Gm-Message-State: APjAAAXLdEyCJENgCVV+lFhxOCgJzQp9FflpADkUTs4nvzQCVLsoneHY
	R3X45HIn8x0Z2KPo2ci8wloTklLwBowa5hM/yFA=
X-Google-Smtp-Source: APXvYqxnTy0FpgEKrKAeugvoQMMWjypiHCzAANZcReCyp/Jnv9linKkps/S75qEY3X4WxNocp490rr6fYEnofVf/BMU=
X-Received: by 2002:aca:4c14:: with SMTP id z20mr38635096oia.121.1563953246159;
 Wed, 24 Jul 2019 00:27:26 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Stig_Rohde_D=C3=B8ssing?= <srdo@apache.org>
Date: Wed, 24 Jul 2019 09:27:15 +0200
X-Gmail-Original-Message-ID: <CAG09ER1O_+YYQzj9dmTJ225JtiB-qLeMJe=ztPO1bPF0ukiLcA@mail.gmail.com>
Message-ID: <CAG09ER1O_+YYQzj9dmTJ225JtiB-qLeMJe=ztPO1bPF0ukiLcA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000aeca60058e683d1a"
Subject: [oss-security] [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability

--000000000000aeca60058e683d1a
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2018-11779[PRODUCT]:Apache Storm[VERSION]:Apache Storm
1.1.0 to 1.2.2[PROBLEMTYPE]:CWE-502: Deserialization of Untrusted
Data[DESCRIPTION]:In Apache Storm versions 1.1.0 to 1.2.2,
              when the user is using the storm-kafka-client or
storm-kafka modules,
              it is possible to cause the Storm UI daemon to
deserialize user provided bytes into a Java class.

Mitigation: Upgrade to Apache Storm 1.2.3 or later.

Credit: Bobby Evans for discovery and fix

--000000000000aeca60058e683d1a--
