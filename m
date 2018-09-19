X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["520" "Wednesday" "19" "September" "2018" "08:44:41" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwVx2Z1haCnvYBhH7nQRN4kYKjwkLfjsCbeFHv2tRcBonA@mail.gmail.com>" "21" "[oss-security] [CVE-2018-11761] Apache Tika DoS XML Entity Expansion Vulnerability" nil nil nil "9" "2018091912:44:41" "[oss-security] [CVE-2018-11761] Apache Tika DoS XML Entity Expansion Vulnerability" (number mark "U       tallison@apa Sep 19   21/520   " thread-indent "\"[oss-security] [CVE-2018-11761] Apache Tika DoS XML Entity Expansion Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30443 invoked by uid 550); 19 Sep 2018 12:45:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30419 invoked from network); 19 Sep 2018 12:45:14 -0000
X-Gm-Message-State: APzg51DAQpQBJU8l6CA20gJIS+PIeEQrLuqX+2VnVZ0cOSgi/y3N+oGc
	DBP+3HaGiQgZAysecLEciebuTWrCBaXO4myP0ig=
X-Google-Smtp-Source: ANB0Vda7FnDHetKKDNiI25oflgNLAB8O7Dt6713t05T2z+52H/ycCJbquIweoL3Ae6DbdcKOM+fYRyLwl/+yfOy0Ecg=
X-Received: by 2002:a81:55cd:: with SMTP id j196-v6mr14067640ywb.192.1537361094818;
 Wed, 19 Sep 2018 05:44:54 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 19 Sep 2018 08:44:41 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVx2Z1haCnvYBhH7nQRN4kYKjwkLfjsCbeFHv2tRcBonA@mail.gmail.com>
Message-ID: <CAC1dCwVx2Z1haCnvYBhH7nQRN4kYKjwkLfjsCbeFHv2tRcBonA@mail.gmail.com>
To: dev@tika.apache.org, user@tika.apache.org, announce@apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-11761] Apache Tika DoS XML Entity Expansion Vulnerability

CVE-2018-11761: Apache Tika Denial of Service via XML Entity Expansion
Vulnerability

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 0.1 to 1.18

Description:
Apache Tika's XML parsers were not configured to limit entity expansion.
They were therefore vulnerable to an entity expansion vulnerability which
can lead to a denial of service attack.

Mitigation:
Apache Tika users should upgrade to 1.19 or later

Credit:
This issue was discovered by Renfei (Brian) Wang of Amazon.
