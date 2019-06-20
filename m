X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Thursday" "20" "June" "2019" "07:22:18" "-0700" "Anthony Baker" "abaker@apache.org" "<CAEwge-Ei_WkFg5Jkq2H2adyDwt=DGuhY-Uc=0mM9DmhQvYcK4g@mail.gmail.com>" "35" "[oss-security] [CVE-2017-15694] Apache Geode metadata modification vulnerability" nil nil nil "6" "2019062014:22:18" "[oss-security] [CVE-2017-15694] Apache Geode metadata modification vulnerability" (number mark "U       abaker@apach Jun 20   35/922   " thread-indent "\"[oss-security] [CVE-2017-15694] Apache Geode metadata modification vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2017-15694] Apache Geode metadata modification vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18404 invoked by uid 550); 20 Jun 2019 15:33:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11489 invoked from network); 20 Jun 2019 14:22:44 -0000
X-Gm-Message-State: APjAAAWRfP/6ofP9RI3IwmnmaOfAvrD8/z12U3vmDdvA9vNU2yr4kueb
	12uP7XoA+o3UaGONobw3XkDSvybyVKzjsYX/mrOW+z4SwBjnxAONcmAvaFUwzaD+OR2O+/d8jfs
	iW2sNIJ1ywVG8F+taVluXWZu1f1CHzWOXLa9la/nhuso/rPYMSQlMVFGeFxZICyuPgspwkQ==
X-Received: by 2002:ab0:32d5:: with SMTP id f21mr57966uao.55.1561040551319;
        Thu, 20 Jun 2019 07:22:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw3KkgMaLrHcUEM2hBob0knWgnUsxTd6+wMVZyw6+0xMNG+e2N8eA5DJ53XC1e5KcY8resTA75AK5yNzpbPs68=
X-Received: by 2002:ab0:32d5:: with SMTP id f21mr57956uao.55.1561040551199;
 Thu, 20 Jun 2019 07:22:31 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Thu, 20 Jun 2019 07:22:18 -0700
X-Gmail-Original-Message-ID: <CAEwge-Ei_WkFg5Jkq2H2adyDwt=DGuhY-Uc=0mM9DmhQvYcK4g@mail.gmail.com>
Message-ID: <CAEwge-Ei_WkFg5Jkq2H2adyDwt=DGuhY-Uc=0mM9DmhQvYcK4g@mail.gmail.com>
To: user@geode.apache.org, geode <dev@geode.apache.org>, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com, announce@apache.org
Content-Type: multipart/alternative; boundary="00000000000089708a058bc21334"
Subject: [oss-security] [CVE-2017-15694] Apache Geode metadata modification vulnerability

--00000000000089708a058bc21334
Content-Type: text/plain; charset="UTF-8"

CVE-2017-15694 Apache Geode metadata modification vulnerability

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
Apache Geode 1.0.0 through 1.8.0

Description:
When a Geode server is operating in secure mode, a user with write
permissions for specific data regions can modify internal cluster
metadata.  A malicious user could modify this data in a way that affects
the operation of the cluster.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.9.0 or
later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team by
Jason Huynh from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3981
[2]
https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC

--00000000000089708a058bc21334--
