X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["691" "Tuesday" "24" "March" "2020" "23:21:38" "-0400" "Daniel Klco" "dklco@apache.org" "<CAHbpyFYWV3mM9GHwpmKhVB-aMhXKa2w4HBRwSER6sqGHuYP2ag@mail.gmail.com>" "28" "[oss-security] CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability" nil nil nil "3" "2020032503:21:38" "[oss-security] CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability" (number mark "U       dklco@apache Mar 24   28/691   " thread-indent "\"[oss-security] CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9318 invoked by uid 550); 25 Mar 2020 09:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20214 invoked from network); 25 Mar 2020 03:22:02 -0000
X-Gm-Message-State: ANhLgQ0OtqLqxwYFTRSbvKsT4sdawcvejlOcLQmrtexMhF6WGJnckO7S
	oskcxiJxLFRalTDJjUX5ph8j4+zDmj6ZK2NhX0U=
X-Google-Smtp-Source: ADFU+vuhg1WmpoFKO26aWxgWfgIrWKqOub54ka1tSdNaEuNs7eN3NDa1TMqNKrNHo54O53Le/+NjrZZd7qtPSt3agc4=
X-Received: by 2002:aca:3255:: with SMTP id y82mr1121703oiy.44.1585106509266;
 Tue, 24 Mar 2020 20:21:49 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Klco <dklco@apache.org>
Date: Tue, 24 Mar 2020 23:21:38 -0400
X-Gmail-Original-Message-ID: <CAHbpyFYWV3mM9GHwpmKhVB-aMhXKa2w4HBRwSER6sqGHuYP2ag@mail.gmail.com>
Message-ID: <CAHbpyFYWV3mM9GHwpmKhVB-aMhXKa2w4HBRwSER6sqGHuYP2ag@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006a856d05a1a55e91"
Subject: [oss-security] CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability

--0000000000006a856d05a1a55e91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Sling CMS 0.14.0 and previous releases

Description:
Scripts in Sling CMS do not property escape the Sling Selector from URLs
when generating navigational elements for the administrative consoles and
are vulnerable to reflected XSS attacks.

Mitigation:
All users should upgrade to 0.16.0

Credit:
This issue was discovered by Guillaume GRAB=C3=89 Pentester from Orange
Cyberdefense France

References:
https://sling.apache.org/project-information/security.html

--0000000000006a856d05a1a55e91--
