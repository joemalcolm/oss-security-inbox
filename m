X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Monday" "18" "November" "2019" "15:26:43" "-0500" "Brian Demers" "bdemers@apache.org" "<CAH9eYVoxuzjJRTS9_FBZH2cmkY9Cp2q2rZyUJ-azCsZeqzWj1Q@mail.gmail.com>" "27" "[oss-security] [CVE-2019-12422] Apache Shiro weak cookie vulnerability" nil nil nil "11" "2019111820:26:43" "[oss-security] [CVE-2019-12422] Apache Shiro weak cookie vulnerability" (number mark "U       bdemers@apac Nov 18   27/813   " thread-indent "\"[oss-security] [CVE-2019-12422] Apache Shiro weak cookie vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12422] Apache Shiro weak cookie vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27947 invoked by uid 550); 18 Nov 2019 20:28:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26621 invoked from network); 18 Nov 2019 20:27:07 -0000
X-Gm-Message-State: APjAAAWGV/tCrcDROs6oUn1iVoRSjkNY8kWk6vdUgg6G02L3RDEdJecb
	mfjSkwhFYg0ijClPULzxSwJ9o47O6Tmpt4yRRb0=
X-Google-Smtp-Source: APXvYqwGNj+tXkFU+nGP/95GXvimiDINW4yMJoRAlofwYCEeFvLSBiLYoN8gl1MjdMITtyNjdrld45ssHElVVk6lOTE=
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr935096ljj.11.1574108814256;
 Mon, 18 Nov 2019 12:26:54 -0800 (PST)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Mon, 18 Nov 2019 15:26:43 -0500
X-Gmail-Original-Message-ID: <CAH9eYVoxuzjJRTS9_FBZH2cmkY9Cp2q2rZyUJ-azCsZeqzWj1Q@mail.gmail.com>
Message-ID: <CAH9eYVoxuzjJRTS9_FBZH2cmkY9Cp2q2rZyUJ-azCsZeqzWj1Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b6300f0597a4c4e8"
Subject: [oss-security] [CVE-2019-12422] Apache Shiro weak cookie vulnerability

--000000000000b6300f0597a4c4e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Shiro team is pleased to announce the release of Apache Shiro version
1.4.2.

This security release contains 1 fix since the 1.4.1 release and is
available for Download now [1].

    CVE-2019-12422:
    Apache Shiro before 1.4.2, when using the default =E2=80=9Cremember me=
=E2=80=9D
configuration,
    cookies could be susceptible to a padding attack.

Release binaries (.jars) are also available through Maven Central and
source bundles through Apache distribution mirrors.

For more information on Shiro, please read the documentation[2].

-The Apache Shiro Team

[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/documentation.html

--000000000000b6300f0597a4c4e8--
