X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["387" "Saturday" "23" "April" "2016" "08:27:15" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160423062715.GA7765@eldamar.local>" "20" "[oss-security] CVE Request: jq: heap buffer overflow in tokenadd() function" "^Date:" nil nil "4" "2016042306:27:15" "[oss-security] CVE Request: jq: heap buffer overflow in tokenadd() function" (number mark "        carnil@debia Apr 23   20/387   " thread-indent "\"[oss-security] CVE Request: jq: heap buffer overflow in tokenadd() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28560 invoked by uid 550); 23 Apr 2016 06:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28542 invoked from network); 23 Apr 2016 06:27:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mpLOD5Nrm2GejtzoXd0aE14SlPcTFo5HEQzg2GOqBWU=;
        b=OAIZcuQKLv2isiIs/5KF3wxSU19K5qXN0QGLyKRxz9BNJ+c21YGiXJr1RpFScEGwE/
         CM88HjRZCz4cKCiSWNDyHo8TKaZ2FrwOU9zi3q62OL1468xyAQrSpYy84ivFCXJDVu8W
         XRKMVWtWy+B7f2DlbE0nDxvRlPEnfs9BF33COll1W5T36e9I39EjnAK3n9lFOw+z7+hV
         guLvXHE3iQUAIdmwqkMKN3HGV8XIaxsrhXzJgbNfwhtXkMPr8Fxwp0anUWyssmO5z4p+
         +bq4A+9atylVVhMPXH4YE/LkNttsM8xP5j/JZH/5h+uV1F7g2fNDcMqIKzig6b5P9UHs
         uBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=mpLOD5Nrm2GejtzoXd0aE14SlPcTFo5HEQzg2GOqBWU=;
        b=g4uxs4CsPcHTui0VMl5uS372LA3iI7ZVpq5/FcemA6xSNT8wuwWb9hMB/L7PDfkjOS
         poHLSmOTCN42mMk2mCAuzqnxrLVxmuvRSGtUMfKXelnw4bSVtANyk7lQMkvUzUCHZZfy
         3i03C6vCPI/YwssUaS80YXPRKqgPIvwEZc40r0166FZN7zBQB8Q6CTfm/Hvh+eG5S9Jd
         QYCZ281lmXF6QHwNG3twP3KdqIGWY015WS1e9h+NMgfEY5jjugY+LpyKPXpg2qyWAuh6
         HEJyaHU1pBxnDWjl1vZi26lfSpFkWGIuIDUZiRq4upRAB/gm3PLJEO0cAmwOujpODZ8c
         y+xw==
X-Gm-Message-State: AOPr4FVVwSh4k1iyf4ua2PNm8Zy6ZeK+hag4YpmCFWbZHFCfTyPDgs0u45M6QJN/k3aXLg==
X-Received: by 10.28.63.73 with SMTP id m70mr1161909wma.55.1461392838443;
        Fri, 22 Apr 2016 23:27:18 -0700 (PDT)
Message-ID: <20160423062715.GA7765@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Sat, 23 Apr 2016 08:27:15 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: jq: heap buffer overflow in tokenadd() function
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could you assign a CVE for the following issue in jq, a lightweight
and flexible command-line JSON processor.

Upstream report:

https://github.com/stedolan/jq/issues/995

Upstream commit:

https://github.com/stedolan/jq/commit/8eb1367ca44e772963e704a700ef72ae2e12babd

Reports:

https://bugs.debian.org/802231
https://bugzilla.redhat.com/show_bug.cgi?id=1328747

Regards,
Salvatore
