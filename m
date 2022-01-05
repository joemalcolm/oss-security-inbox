X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Wednesday" "5" "January" "2022" "18:30:38" "-0500" "Neil Griffin" "asfgriff@apache.org" nil "22" "[oss-security] CVE-2021-36737: Apache Portals: XSS in V3 Demo Portlet" nil nil nil "1" nil nil (number mark "U       asfgriff@apa Jan  5   22/497   " thread-indent "\"[oss-security] CVE-2021-36737: Apache Portals: XSS in V3 Demo Portlet\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36737: Apache Portals: XSS in V3 Demo Portlet" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7387 invoked by uid 550); 5 Jan 2022 23:41:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3492 invoked from network); 5 Jan 2022 23:31:42 -0000
X-Gm-Message-State: AOAM532sILT0LMXXWM2DExaiWO047+7wuRo4UZCD1QdGdpwV1wB7LjkV
	17W9722AnBny/PEbvyH1HCmZDWnrXOC0j/hfSPo=
X-Google-Smtp-Source: ABdhPJy88RhYrDrQmdEA14lPSdW8AeDdTc7hmwFEO4f2dZ0sGd6eSUzeV+QXZl8f2ITfX79mN0ZTnmk7ed0+1bHRPMc=
X-Received: by 2002:a05:6808:30a0:: with SMTP id bl32mr4292580oib.77.1641425449537;
 Wed, 05 Jan 2022 15:30:49 -0800 (PST)
MIME-Version: 1.0
From: Neil Griffin <asfgriff@apache.org>
Date: Wed, 5 Jan 2022 18:30:38 -0500
X-Gmail-Original-Message-ID: <CAAqbB_dr90dmdxrVpG-cznaPrtPEQwtViaYgB2EA43efhRgRiA@mail.gmail.com>
Message-ID: <CAAqbB_dr90dmdxrVpG-cznaPrtPEQwtViaYgB2EA43efhRgRiA@mail.gmail.com>
To: general@portals.apache.org, pluto-user@portals.apache.org, 
	announce@apache.org, jetspeed-user@portals.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d8550205d4de24fa"
Subject: [oss-security] CVE-2021-36737: Apache Portals: XSS in V3 Demo Portlet

--000000000000d8550205d4de24fa
Content-Type: text/plain; charset="UTF-8"

Severity: low

Description:

The input fields of the Apache Pluto UrlTestPortlet are vulnerable to
Cross-Site Scripting (XSS) attacks.  Users should migrate to version 3.1.1
of the v3-demo-portlet.war artifact

Mitigation:

* Uninstall the v3-demo-portlet.war artifact
   -or-
* Migrate to version 3.1.1 of the v3-demo-portlet.war artifact

Credit:

Thanks to Dhiraj Mishra for reporting.

--000000000000d8550205d4de24fa--
