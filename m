X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1032" "Friday" "6" "September" "2019" "13:54:47" "-0600" "Rawlin Peters" "rawlin@apache.org" nil "32" nil "^Date:" nil nil "9" nil nil (number mark "        rawlin@apach Sep  6   32/1032  " thread-indent "\"[oss-security] CVE-2019-12405: Apache Traffic Control LDAP-based authentication vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12405: Apache Traffic Control LDAP-based authentication vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21994 invoked by uid 550); 6 Sep 2019 20:19:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1192 invoked from network); 6 Sep 2019 19:55:10 -0000
X-Gm-Message-State: APjAAAWYp0L/cefgpf9YjyKyNejzrnhwIh6/vEZ3/Q94sEuMWphRZl4f
	fNnd5u1xsQfxXiKqrU2PPFDh1ulxoMlIyepqyeg=
X-Google-Smtp-Source: APXvYqyOqnoFUzhihlgvFcqjgHlrOuGgxWUN06EbFqPOIzvdPE20hsSOC7KJk/kLy+G+5fiSb0h1QeYrbxBVfllcBWk=
X-Received: by 2002:a1f:6681:: with SMTP id a123mr5370149vkc.81.1567799698070;
 Fri, 06 Sep 2019 12:54:58 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CA+5ZNX8MVdu=TstQr+xz9ZX0FuOBPY-dSeM-Qzd=PTq-vKYRmw@mail.gmail.com>
Message-ID: <CA+5ZNX8MVdu=TstQr+xz9ZX0FuOBPY-dSeM-Qzd=PTq-vKYRmw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 6 Sep 2019 13:54:47 -0600
From: Rawlin Peters <rawlin@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-12405: Apache Traffic Control LDAP-based authentication vulnerability
To: oss-security@lists.openwall.com

CVE-2019-12405: Apache Traffic Control LDAP-based authentication vulnerability

Severity: Critical

Vendor: The Apache Software Foundation

Versions affected:
Traffic Control 3.0.0
Traffic Control 3.0.1

Description:
The Traffic Ops API component of the Apache Traffic Control project is
vulnerable to improper authentication when LDAP is enabled. Given a username
for a user that can be authenticated via LDAP, it is possible to improperly
authenticate as that user without that user's correct password.

Mitigation:
3.x users should upgrade to 3.0.2.
If the upgrade cannot be done immediately, LDAP authentication can be disabled
by removing the Traffic Ops LDAP configuration file -- ldap.conf -- in order to
mitigate the vulnerability until an upgrade to 3.0.2 can be performed.

References:
    Downloads:
        http://trafficcontrol.apache.org/releases/
    CVE:
        https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-12405
    Project security:
        http://trafficcontrol.apache.org/security/
--
Thanks,
Rawlin
