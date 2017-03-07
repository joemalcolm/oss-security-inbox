X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1235" "Tuesday" "7" "March" "2017" "10:44:26" "+0000" "Craig Small" "csmall@enc.com.au" "<CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>" "36" "[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" nil nil nil "3" "2017030710:44:26" "[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" (number mark "U       csmall@enc.c Mar  7   36/1235  " thread-indent "\"[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18176 invoked by uid 550); 7 Mar 2017 10:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17979 invoked from network); 7 Mar 2017 10:44:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=enc-com-au.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=kn4aIPsZWUlvwkP9ASZf7UYL51xFq7MBWMc4U1pgkLY=;
        b=H2oQYCxuN3+/vXIcDGylY+ee/mZ5oYZy/uQ/yeEhGYATeQhyM98rfijYDPIG2+HeCd
         QplZ2C6h3jbV7khwpJRN6UWq92pNQFh9Q4P8n7x7YUQZh/dB9e7Yxte0mBMiTLxv+m9W
         copk2VRO0K7X0vMNJ3vnpNhaipEzQJZq50/ZHmzphlA899W8c6BBcidAeKvxjF0QkhCt
         hoHEOpngKv9b5w91fcyfVloS0BR/5DOW9qij1RR7+o6r+8CNAeclxcVJzhfBauTgg/ND
         OiH3VIHhazenN6HsYDC5Y5H3FtGwQI5VTAhsvCwlQnEqq6JeIgEJ8aYTYW5w/0jJZbiX
         rLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kn4aIPsZWUlvwkP9ASZf7UYL51xFq7MBWMc4U1pgkLY=;
        b=I5K7QqdlstklsJEEm2j7QEU1f7isO0727AXAUiDK70sFIYKo2V3TlzlGqgXTquQAib
         AudlImHjJ1IwAJMCYPDFnOOepGPmHXRO6Ka0tPofVpPYNSgUVqKgOpczau+Ua/qCcmDa
         u42A35+WWQNcB/y4CKDag7ymMT5uolNNF2nBWMFQa+FCiobOcoVWz9lkZd9XFYheMvNa
         WM7T+r2gZrOaxtEr8oz74wj2dCLO7pOcUwORuDMdjAzZ6LJYWDjCIXYWrnI9aE6K39Zw
         AWpOdtHTo1soYWopz3at6Yg1tEABOlC3o/A2uJ4HH2QwKo1b4Bsb33l0aJfLve9glGiW
         V5VQ==
X-Gm-Message-State: AMke39lCpl629hkKBzy/Se1zsgrTJ3gFbWDt/QC+1c9e6SvARGb+lGskMiT8TgbSQBqBoBSi+27fFCsTA8dawA==
X-Received: by 10.31.78.134 with SMTP id c128mr907629vkb.10.1488883477460;
 Tue, 07 Mar 2017 02:44:37 -0800 (PST)
MIME-Version: 1.0
From: Craig Small <csmall@enc.com.au>
Date: Tue, 07 Mar 2017 10:44:26 +0000
Message-ID: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11484538c94b44054a21b2b6
Subject: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2

--001a11484538c94b44054a21b2b6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello again,
 Wordpress 4.7.3 fixes 6 security issues.  Summer of Pwnage has reported 2
here yesterday but here is the list from the wordpress site.

Cross-site scripting (XSS) via media file metadata. Reported by Chris Andr=
=C3=A8
Dale, Yorick Koster, and Simon P. Briggs.

Control characters can trick redirect URL validation. Reported by Daniel
Chatfield.

Unintended files can be deleted by administrators using the plugin deletion
functionality. Reported by xuliang.

Cross-site scripting (XSS) via video URL in YouTube embeds. Reported by
Marc Montpas.

Cross-site scripting (XSS) via taxonomy term names. Reported by Delta.

Cross-site request forgery (CSRF) in Press This leading to excessive use of
server resources. Reported by Sipke Mellema.


Reference:
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance=
-release/
--=20
Craig Small (@smallsees)   http://dropbear.xyz/     csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

--001a11484538c94b44054a21b2b6--
