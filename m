X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1040" "Monday" "19" "March" "2018" "19:50:42" "-0700" "Ryan Grove" "ryan@wonko.com" "<F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>" "36" "[oss-security] Sanitize <= 4.6.2 HTML injection and XSS" nil nil nil "3" "2018032002:50:42" "[oss-security] Sanitize <= 4.6.2 HTML injection and XSS" (number mark "U       ryan@wonko.c Mar 19   36/1040  " thread-indent "\"[oss-security] Sanitize <= 4.6.2 HTML injection and XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1662 invoked by uid 550); 20 Mar 2018 03:12:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5622 invoked from network); 20 Mar 2018 02:50:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wonko.com; s=wonko;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=0buypfeELRuac+L3sxa4Rp5JbbvsNzsTZgW47OnVqx8=;
        b=Ae5nAW5j3AlQrj4y7JYU8o6F9RIKw4Sp8tlq1JfHhxRBVCeKZiLPaX2gcEK8L0Bq2V
         lQcWuqjJBMoFcWj6yucJlUPeg+KBQ1Zx7/KzLCSFq8PC+r0D/ZbZsGjW/Ax9R7AKWVwb
         cG6EUMZTCeKz52zMoW4DtyDNe3obzT7qA4gF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=0buypfeELRuac+L3sxa4Rp5JbbvsNzsTZgW47OnVqx8=;
        b=ptOTZswQ3khfd/e9egSlgUqGSzRdwXqkfVG4bBeox/6b214gwIHZ6JJigdkgq6KvCt
         hzImYEi/kk9HMhS54OY6OO8sMR36Mg74TzGOcwsSwJraeTQfHdFQDtp/o6uA6GA5wTyn
         jyjzWPbvCKRi0DVhwUJFCb48odoL7JWtERy3UR4yz5S/FgeBQIKxJi2f6San78wXUSP3
         vrekqgD87w4mZYKRA/0G+FaMMgCNCpvBwkrMdw5w7HzIsG+b2TztxXi6SMrn2a0TSPkp
         +vl1wrGxqjLBIGjfMKmSncQfdvQpIcLQ4uOe/cpB0ii8bUIZpign2yqx/gJcW0TElgxD
         QMOA==
X-Gm-Message-State: AElRT7HsvOR4L9wrVh6Yn1sF+2Sfzn6vup4xO+PxZT6oLotUdZ4TTq/W
	6iEsrfpOJt9uISbIJEtP+GtJTs1P064=
X-Google-Smtp-Source: AG47ELuLuK+MhE3Y+gtUElPaYB6TWuhX6KoKTev6K1wBOUP3lzqqOjXnqt8Phf+ijPPfbqbDEQgzjQ==
X-Received: by 10.99.110.5 with SMTP id j5mr2003207pgc.246.1521514243387;
        Mon, 19 Mar 2018 19:50:43 -0700 (PDT)
From: Ryan Grove <ryan@wonko.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>
Date: Mon, 19 Mar 2018 19:50:42 -0700
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] Sanitize <= 4.6.2 HTML injection and XSS

Sanitize is a Ruby library that removes unacceptable HTML and CSS from a st=
ring based on a whitelist. Versions 4.6.2 and below contain an HTML injecti=
on vulnerability that allows XSS.

Details are included below, and can also be found at:

https://github.com/rgrove/sanitize/issues/176=20

=3D=3D=3D=3D

# Sanitize XSS vulnerability

This is a public disclosure of an HTML injection vulnerability in Sanitize =
that could allow XSS. I=E2=80=99d like to thank the Shopify Application Sec=
urity Team for responsibly reporting this vulnerability.

## Description

A specially crafted HTML fragment can cause Sanitize to allow non-whitelist=
ed attributes to be used on a whitelisted HTML element.

## Affected Versions

Sanitize < 4.6.3, but only in combination with libxml2 >=3D 2.9.2

## Mitigation

Upgrade to Sanitize 4.6.3.

## History of this vulnerability

- 2018-03-19: Reported by Shopify Application Security Team via email
- 2018-03-19: Sanitize 4.6.3 released with a fix
- 2018-03-19: Initial vulnerability report published


