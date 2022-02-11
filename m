X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["928" "Friday" "11" "February" "2022" "16:51:21" "+0800" "Zexuan Luo" "spacewander@apache.org" nil "28" "[oss-security] CVE-2022-24112: Apache APISIX: apisix/batch-requests plugin allows overwriting the X-REAL-IP header" nil nil nil "2" nil nil (number mark "U       spacewander@ Feb 11   28/928   " thread-indent "\"[oss-security] CVE-2022-24112: Apache APISIX: apisix/batch-requests plugin allows overwriting the X-REAL-IP header\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-24112: Apache APISIX: apisix/batch-requests plugin allows overwriting the X-REAL-IP header" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13675 invoked by uid 550); 11 Feb 2022 12:43:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26073 invoked from network); 11 Feb 2022 08:51:45 -0000
X-Gm-Message-State: AOAM532evtu+EHPURJxLwFMWAka6Bs8//06NLL1R2HhDJxeCR8c3HGUv
	5zqC4pxKiwRYj8qQT2FuMY8gS31ubT7lpHyl7Uo=
X-Google-Smtp-Source: ABdhPJwsGxOnwAgsvWvH4pAztAtiwDOI5jErBLYSOBt9AX4GinPywqQZeuvD93B7DJxYdID5ErE/CRWCVNPLi0o+epc=
X-Received: by 2002:a05:6402:22eb:: with SMTP id dn11mr746580edb.331.1644569491994;
 Fri, 11 Feb 2022 00:51:31 -0800 (PST)
MIME-Version: 1.0
From: Zexuan Luo <spacewander@apache.org>
Date: Fri, 11 Feb 2022 16:51:21 +0800
X-Gmail-Original-Message-ID: <CAADJU122drfk2TE_bLJ=HoWJG_T6Rxnq0ngX+GQqOGXFmEoKNA@mail.gmail.com>
Message-ID: <CAADJU122drfk2TE_bLJ=HoWJG_T6Rxnq0ngX+GQqOGXFmEoKNA@mail.gmail.com>
To: announce@apache.org, dev@apisix.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	Live Overflow <liveoverflow@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-24112: Apache APISIX: apisix/batch-requests plugin allows
 overwriting the X-REAL-IP header

Severity: high

Description:

An attacker can abuse the batch-requests plugin to send requests to
bypass the IP restriction of Admin API.
A default configuration of Apache APISIX (with default API key) is
vulnerable to remote code execution.
When the admin key was changed or the port of Admin API was changed to
a port different from the data panel, the impact is lower. But there
is still a risk to bypass the IP restriction of Apache APISIX's data
panel.

There is a check in the batch-requests plugin which overrides the
client IP with its real remote IP. But due to a bug in the code, this
check can be bypassed.

Mitigation:

1. explicitly configure the enabled plugins in `conf/config.yaml`,
ensure `batch-requests` is disabled. (Or just comment out
`batch-requests` in `conf/config-default.yaml`)
Or
1. upgrade to 2.10.4 or 2.12.1.

Credit:

Original discovery by Real World CTF at Chaitin Tech. Reported by Sauercloud.
