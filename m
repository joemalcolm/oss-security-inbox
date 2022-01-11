X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["328" "Tuesday" "11" "January" "2022" "13:21:35" "-0800" "Mike Jumper" "mjumper@apache.org" nil "12" "[oss-security] [SECURITY] CVE-2021-43999: Apache Guacamole: Improper validation of SAML responses" nil nil nil "1" nil nil (number mark "U       mjumper@apac Jan 11   12/328   " thread-indent "\"[oss-security] [SECURITY] CVE-2021-43999: Apache Guacamole: Improper validation of SAML responses\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2021-43999: Apache Guacamole: Improper validation of SAML responses" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10097 invoked by uid 550); 11 Jan 2022 21:53:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26271 invoked from network); 11 Jan 2022 21:22:23 -0000
X-Gm-Message-State: AOAM533SO3Kq4fOqUXguAb3p0fpoeKSlKkk24Q15LPliKjprbggOHxsR
	PndDhaEuQjVb0CuyR5M+yRE5ur7r7wm7eYSMJVd5Sg==
X-Google-Smtp-Source: ABdhPJyIOvBQgHIDyUBusMICkcx+kNxTutt9l5KVTg7P+mt4Q/gN5XzcWBGr1ZWXAjwijORFrpT8rdHLMGlCfth4luo=
X-Received: by 2002:a25:348b:: with SMTP id b133mr9489657yba.21.1641936126257;
 Tue, 11 Jan 2022 13:22:06 -0800 (PST)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Tue, 11 Jan 2022 13:21:35 -0800
X-Gmail-Original-Message-ID: <CALKeL-MztJwfgVgt=bugEoafDNmgDtZ8o=vmZ6mbjuJj9zW20g@mail.gmail.com>
Message-ID: <CALKeL-MztJwfgVgt=bugEoafDNmgDtZ8o=vmZ6mbjuJj9zW20g@mail.gmail.com>
To: announce@apache.org, announce@guacamole.apache.org, 
	dev@guacamole.apache.org, user@guacamole.apache.org
Cc: security@guacamole.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2021-43999: Apache Guacamole: Improper validation of
 SAML responses

Severity: high

Description:

Apache Guacamole 1.2.0 and 1.3.0 do not properly validate responses
received from a SAML identity provider. If SAML support is enabled,
this may allow a malicious user to assume the identity of another
Guacamole user.

Credit:

We would like to thank Finn Steglich (ETAS) for reporting this issue.
