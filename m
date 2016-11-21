X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2668" "Monday" "21" "November" "2016" "11:54:33" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" "57" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112116:54:33" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        scott@parago Nov 21   57/2668  " thread-indent "\"[oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10161 invoked by uid 550); 21 Nov 2016 16:54:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10126 invoked from network); 21 Nov 2016 16:54:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=tIyP5qj/CACTjvQyBIo1byORDg1K/XUp+SyNtBl7ZxA=;
        b=Ut40F17zoYxgTeEClA7aLxYZLO6CXu6AfhfBGNdYYW2CSnXMPDhri32vHTUZ40pirQ
         hPGBNaeQnSXOfv8bs4BVVAnk3u56ato/Avbo7s1dam5Fg0a/HXNZuDzHFPPojgRRiPB3
         TR0XtNikUimNhj1ZyHYfExSpuDd4TXeMkAi1kE4Mv1WOxbJbaxdgiRRQY+fmCy0rPZs4
         erwCuQ31Xr+53Igo3MyrnLXi+4CKFbrk7u29vFMpqLcGCTYKKha39w65fqOvFeSVnEPj
         aK9zvauTtwkIDIjiSuMr9rmDIR//5eSQiuOnKlD7Jlr6OCg+X1NEaJ2vuX3bpZ6mAyr5
         C4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tIyP5qj/CACTjvQyBIo1byORDg1K/XUp+SyNtBl7ZxA=;
        b=YW9+PdfOELTWv/VnqNcwVUlyT6kwkMZoVduVb6eYAuzOJ1cosjgBoboni8lAvedO1K
         Mcysf3op8UswHqOBY7HeAFPjDpY/1HFe6LGaHieQx9FkqJvUYfkbh5yp2W84Ziwvl5Ht
         8+sLA4hof6Ozc5z4eNS0ffQGws34awk41/LiP9zahviXmjAc9KCMVzfMJ62VdmLW60no
         AYGbMHzeZNI5Cp5rvFUtlyOzKRtd6a3pgDOr1p1dnmOyfXX3av5jg4Uapu4/e8tQ70Yq
         YRLZmLj6T6oF8MbV9ldsHoam0Zg5CPcIFnEEIIXpZfCnsDxu6Yixv3CKGP5IxOJN3eKJ
         C1Yg==
X-Gm-Message-State: AKaTC03v6YWMl/JeQb8tCXVW6uI7PRnVLYGRKiFlxDyZAUyVYAgzPaZJNMwwBYeSsFRbkDgHy2Qp162HxY0vOg==
X-Received: by 10.157.10.197 with SMTP id 63mr8760488otq.99.1479747274310;
 Mon, 21 Nov 2016 08:54:34 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 21 Nov 2016 11:54:33 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

This is the function that fetches downloads from the WordPress update
servers: https://github.com/WordPress/WordPress/blob/f5b6731777bbd1dfe290867d2240a2a68e2f0cf1/wp-admin/includes/class-wp-upgrader.php#L252-L283

The only verification it offers is an MD5 checksum, which is sent by
the server that also serves the file:
https://github.com/WordPress/WordPress/blob/eeefec932f3d4f3b50369f6523c2cd8fad3d467f/wp-admin/includes/file.php#L482-L525

At no point lower in the automatic update process is a cryptographic
signature verified. The update server is trusted explicitly and
implicitly by every WordPress website online.

WordPress powers an estimated 26% of websites on the Internet.

Consequently, the WordPress update server is one of the largest single
points of failure (SPOF) on the Internet. If you manage to hack their
infrastructure, you can push a false update to millions of WordPress
blogs and get reliable remote code execution everywhere.

They are aware of this issue, and have been for years:
https://core.trac.wordpress.org/ticket/25052

Additionally, PHP before 5.6.0 had terrible SSL/TLS support. It may
also be possible to get targeted RCE out of a MitM condition due to
their stubborn insistence on supporting PHP 5.2.4. I need to do more
research here.

The WordPress culture, for those who are not aware, prioritizes higher
adoption rates over better security. They see backwards compatibility
as a usability problem more than a liability.

The WordPress team also promotes the use of the misnomer "responsible
disclosure" over the more accurate "coordinated disclosure", and
refuse to entertain suggestions to improve their vernacular.

In short, WordPress is semi-toxic towards improving their own
security-- mostly out of negligence and stubbornness rather than
outright hostility (see: OpenCart).

I don't believe there's much chance of fixing this, due to political
problems rather than technological problems. The first step towards a
reliable solution would look like this:

1. Up the minimum PHP version to at least 5.6.0.
2. Use openssl_sign() and openssl_verify() with an RSA keypair
maintained by their team.

A total solution would incorporate all of the elements listed here for
both core updates and theme/plugin updates:
https://paragonie.com/blog/2016/10/guide-automatic-security-updates-for-php-developers#elements-automatic-updates

Should anyone wish to endure the steep uphill battle to try to get
WordPress to fix this problem _before_ we see headlines titled
"WormPress: How your blog was hacked" in the news, godspeed.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>
