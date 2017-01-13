X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2119" "Friday" "13" "January" "2017" "21:47:02" "+0000" "Craig Small" "csmall@debian.org" "<CALy8Cw5KNydTryiDytu=AC88w06VpkEawB3ohsa8SOj0=1miZA@mail.gmail.com>" "56" "[oss-security] CVE Request: Wordpress: 8 security issues in 4.7" "^Date:" nil nil "1" "2017011321:47:02" "[oss-security] CVE Request: Wordpress: 8 security issues in 4.7" (number mark "U       csmall@debia Jan 13   56/2119  " thread-indent "\"[oss-security] CVE Request: Wordpress: 8 security issues in 4.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20001 invoked by uid 550); 14 Jan 2017 00:15:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28543 invoked from network); 13 Jan 2017 21:47:25 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yNX9DETjYDdDOUMsVmlK6ioRbvNuaUuPxofJYDdAVi4=;
        b=GIKLE7ngSzUCAIwnTzK56+m+REF0GaYo2QIIpilo/7RnxWcs73svmAUEFFPMxOuXjo
         uc4c2d/kNuQ3wls0sCslhb2liTCh/Ewkn0VXQN6qzc1HDrUqCYQXpCb+2QfOpdwLv5ut
         HjHJ/BztdZFtfCXWbRrGZbLVu0KI1WK0jsm8uSmLtRh+g2lhdRCsXcBhtcOg/qV2EVDE
         1RrqNRhYhYGEejY49AipR47qbWMqeENWtIWH3AhJjH9WXbFL89G8vTWbc5Wh4okcNH3B
         chy9fiQECDzRWyTS1KAgc5kvL80+BygnUL6/OfmKyGcI00BrIIM3cYsdRq9/RPQKYVqp
         jutQ==
X-Gm-Message-State: AIkVDXIx+5PbxxzbNweKuHQRYIzpYh3eHRCX4ALxFI/pd7Gisoln6UYJhjssduTip6BSbA==
X-Received: by 10.176.71.23 with SMTP id h23mr4201721uac.167.1484344033236;
        Fri, 13 Jan 2017 13:47:13 -0800 (PST)
X-Received: by 10.176.69.172 with SMTP id u41mr9835586uau.164.1484344032777;
 Fri, 13 Jan 2017 13:47:12 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CALy8Cw5KNydTryiDytu=AC88w06VpkEawB3ohsa8SOj0=1miZA@mail.gmail.com>
Message-ID: <CALy8Cw5KNydTryiDytu=AC88w06VpkEawB3ohsa8SOj0=1miZA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c11bf24cca190054600c685
Date: Fri, 13 Jan 2017 21:47:02 +0000
From: Craig Small <csmall@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Wordpress: 8 security issues in 4.7
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--94eb2c11bf24cca190054600c685
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
  I couldn't find any CVE for the 8 issues wordpress 4.7 (including some
earlier versions) have.
The announcement is at [1] but it is often better to look at [2] to work
out what is what, though their announcement for 4.7.1 is one of the more
better ones.

Remote code execution (RCE) in PHPMailer =E2=80=93 No specific issue appear=
s to
affect WordPress or any of the major plugins we investigated but, out of an
abundance of caution, we updated PHPMailer in this release. This issue was
reported to PHPMailer by Dawid Golunski and Paul Buonopane.
(this is an extra  fix for the CVE-2016-10066 and CVE-2016-10045, I'll
leave it to you to decide if it is same ID or new)

The REST API exposed user data for all users who had authored a post of a
public post type. WordPress 4.7.1 limits this to only post types which have
specified that they should be shown within the REST API. Reported by
Krogsgard and Chris Jean.

Cross-site scripting (XSS) via the plugin name or version header on
update-core.php. Reported by Dominik Schilling of the WordPress Security
Team.

Cross-site request forgery (CSRF) bypass via uploading a Flash file.
Reported by Abdullah Hussam.

Cross-site scripting (XSS) via theme name fallback. Reported by Mehmet Ince.

Post via email checks mail.example.com if default settings aren=E2=80=99t c=
hanged.
Reported by John Blackbourn of the WordPress Security Team.

A cross-site request forgery (CSRF) was discovered in the accessibility
mode of widget editing. Reported by Ronnie Skansing.

Weak cryptographic security for multisite activation key. Reported by Jack.

 - Craig

1:
https://wordpress.org/news/2017/01/wordpress-4-7-1-security-and-maintenance=
-release/
2: https://wpvulndb.com/wordpresses/47


--=20
Craig Small (@smallsees)   http://dropbear.xyz/     csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

--94eb2c11bf24cca190054600c685--
