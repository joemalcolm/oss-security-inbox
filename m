X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["203" "Sunday" "13" "March" "2016" "10:55:12" "+0200" "Dmitry Kasyanov" "dkasyanov@cloudlinux.com" "<CAC1DjbY+tj0CN399O33MyG6Zx7B4d-iNtz=Us=bMtjXWjD54fQ@mail.gmail.com>" "8" "[oss-security] CVE Request: PHP-5.5.33: Use after free in WDDX Deserialize when processing XML data" "^Date:" nil nil "3" "2016031308:55:12" "[oss-security] CVE Request: PHP-5.5.33: Use after free in WDDX Deserialize when processing XML data" (number mark "U       dkasyanov@cl Mar 13    8/203   " thread-indent "\"[oss-security] CVE Request: PHP-5.5.33: Use after free in WDDX Deserialize when processing XML data\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11525 invoked by uid 550); 13 Mar 2016 08:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11500 invoked from network); 13 Mar 2016 08:55:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to;
        bh=krqcjVD47BV5rj6DRBYHI+aLC94gIbKDQPAp60DaNfs=;
        b=EkiIZeVJJy4jvwp+n+Ldc9zlCtb4in3ntT3PRN1NXDeT7YUSO4GVp0L6nFkL7cJU/h
         nWqOZYlAbF/vVRrrntkJYGjp9R+kLR791bIw/TFXfsW5kcU8qd8wdUZfX93hQUjB/UjL
         xmXXHZZjsnkjFyxc4sQCqXHUkHbxnLmJ5nqaN4EJqEMu21lbewWYCsQVwqw/Jmeillrw
         MCxjPmhQZp+LsGXmASNCt+lhC2lcwSZR2/+dljziFpn4HsgrjcZKlse3yUWI2NSGmRy5
         uc06WYVXw4afHqxv0tzt2pGKgDPL+2+eZbOsqZEU6KG788PWimcJNvyEkI0l5xRuyNc/
         BX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=krqcjVD47BV5rj6DRBYHI+aLC94gIbKDQPAp60DaNfs=;
        b=Ru/AMH/roqDN7Xd0wa0RTzRnmOUW5HxgFEzdXhf0AwKi2W6FHCk60ozZt7SQCGf/TH
         VYmn8fk+uRBq9Q3FYtEO8De0dGYxR290YQi4C65vdE9MYV6WuH/y5tvDm6DwWVxA3hF6
         TbmTlZU+2LSWr2rt7ytle+iRWgP9AT9e7zaoo+I3KnFciEGRDu0Yn9x0QFQa1hNu335o
         NusUCiB4kryhBnBoQdBVJRleICb/rAzIox7hGBLtOnBSIr1wd9tSxVpqPU+ES1pcjYtm
         JOcuy3a8MeM6EXi0IS/7icj33QIqNaboOw2F92Dh/E2hBC8tvXoi+YSp3IrM4A9qFPWb
         /Dkg==
X-Gm-Message-State: AD7BkJIXFx8E4O9iOKhXThDrt0BWmIJOXsqW0nHzHjuC51jyYcWg27jfL1uyFlARLPaPAyotkTnlYgsNHkr2aw==
MIME-Version: 1.0
X-Received: by 10.31.133.201 with SMTP id h192mr19441043vkd.102.1457859312518;
 Sun, 13 Mar 2016 00:55:12 -0800 (PST)
Message-ID: <CAC1DjbY+tj0CN399O33MyG6Zx7B4d-iNtz=Us=bMtjXWjD54fQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 13 Mar 2016 10:55:12 +0200
From: Dmitry Kasyanov <dkasyanov@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP-5.5.33: Use after free in WDDX Deserialize when
 processing XML data
To: oss-security@lists.openwall.com

Security vurnelability in WDDX extension was fixed in PHP 5.5.33.

Details available at PHP bug tracker:
https://bugs.php.net/bug.php?id=71587

-- 
Dmitry Kasyanov  |  Developer
dkasyanov@cloudlinux.com
