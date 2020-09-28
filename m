X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["614" "Monday" "28" "September" "2020" "14:42:30" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq52fdBO3WmcYZWs6ETxJ7y6SG-V2KomfaB+xbBn4aSApw@mail.gmail.com>" "20" "[oss-security] CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces" nil nil nil "9" "2020092805:42:30" "[oss-security] CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces" (number mark "U       aajisaka@apa Sep 28   20/614   " thread-indent "\"[oss-security] CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6143 invoked by uid 550); 28 Sep 2020 06:35:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15493 invoked from network); 28 Sep 2020 05:42:54 -0000
X-Gm-Message-State: AOAM530YjZAWKebOz9qbilSNGqo8UE/u3665zdLoQ6K28Pm0dbFz64eK
	MGcP5GJ3Epj0PL8qKpSMy+OuwflwdvQukuiOxv8=
X-Google-Smtp-Source: ABdhPJy9w6TzfCg0gDI4lkfqAurnSllzRNKYMf2rlkvZN+jGH/wlarVP2UGJtoU0qUPYE27P81jS6R3SOFmyXL/lnfg=
X-Received: by 2002:a05:651c:38d:: with SMTP id e13mr4105564ljp.38.1601271761525;
 Sun, 27 Sep 2020 22:42:41 -0700 (PDT)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Mon, 28 Sep 2020 14:42:30 +0900
X-Gmail-Original-Message-ID: <CAP+3qq52fdBO3WmcYZWs6ETxJ7y6SG-V2KomfaB+xbBn4aSApw@mail.gmail.com>
Message-ID: <CAP+3qq52fdBO3WmcYZWs6ETxJ7y6SG-V2KomfaB+xbBn4aSApw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces

CVE-2018-11765: Potential information disclosure in Hadoop Web interfaces

Severity: Important

Vendor: The Apache Software Foundation

Versions affected:
3.0.0-alpha2 to 3.0.0, 2.9.0 to 2.9.2, 2.8.0 to 2.8.5

Description:
When Kerberos authentication is enabled and SPNEGO through HTTP is not
enabled, any users can access some servlets without authentication.

Mitigation:
Users should upgrade to Apache Hadoop 2.10.0, 3.0.1 or upper. If you
are using the affected version of Apache Hadoop, you need to enable
SPNEGO through HTTP.

Credit:
This issue was discovered by Owen O'Malley and reported by Larry McCay.
