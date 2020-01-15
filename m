X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["924" "Wednesday" "15" "January" "2020" "17:30:50" "+0100" "=?UTF-8?B?SXNtYcOrbCBNZWrDrWE=?=" "iemejia@apache.org" "<CAE7Uba-_3at3DD=nyQydDbArg7Bjdz_9uUn-izyW0m41BKEvig@mail.gmail.com>" "32" "[oss-security] [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate trust verification" nil nil nil "1" "2020011516:30:50" "[oss-security] [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate trust verification" (number mark "U       iemejia@apac Jan 15   32/924   " thread-indent "\"[oss-security] [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate trust verification\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate trust verification" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17691 invoked by uid 550); 15 Jan 2020 17:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22336 invoked from network); 15 Jan 2020 16:31:29 -0000
X-Gm-Message-State: APjAAAVwZx2uEMlRrGkoFpB9jzVsd0im7c9PJAiJdJ/al3uqS3qpDNNG
	nLcq7kgwECMhf/H/uaACiGAZR32W0Pix88JCFw4=
X-Google-Smtp-Source: APXvYqwczuW0K2cZ2fT/ieqg+dLhTGRGbnmtIAMoEGA9fwTexz53QmxYLbNwMP/oWh43QXQQ1DDBNthfn1RFMjAmUiY=
X-Received: by 2002:a37:e308:: with SMTP id y8mr23516065qki.347.1579105876923;
 Wed, 15 Jan 2020 08:31:16 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?SXNtYcOrbCBNZWrDrWE=?= <iemejia@apache.org>
Date: Wed, 15 Jan 2020 17:30:50 +0100
X-Gmail-Original-Message-ID: <CAE7Uba-_3at3DD=nyQydDbArg7Bjdz_9uUn-izyW0m41BKEvig@mail.gmail.com>
Message-ID: <CAE7Uba-_3at3DD=nyQydDbArg7Bjdz_9uUn-izyW0m41BKEvig@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000db5e1e059c303c23"
Subject: [oss-security] [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate
 trust verification

--000000000000db5e1e059c303c23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2020-1929 Apache Beam MongoDB IO connector disables certificate trust
verification

Severity: Major
Vendor: The Apache Software Foundation

Versions Affected:
Apache Beam 2.10.0 to 2.16.0

Description:
The Apache Beam MongoDB connector in versions 2.10.0 to 2.16.0 has an
option to
disable SSL trust verification. However this configuration is not respected
and
the certificate verification disables trust verification in every case. This
exclusion also gets registered globally which disables trust checking for
any
code running in the same JVM.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Beam 2.17.0 or later

Acknowledgements:
This issue was reported (and fixed) by Colm =C3=93 h=C3=89igeartaigh.

--000000000000db5e1e059c303c23--
