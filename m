X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["758" "Thursday" "4" "January" "2018" "14:19:59" "+0300" "Taher Alkhateeb" "slidingfilaments@gmail.com" "<CAFqjAi0Zjfy1h1VZa3s-OKm2=oZPkD2jULV6Rpm_k=uBXCnwMg@mail.gmail.com>" "28" "[oss-security] \"[SECURITY] CVE-2017-15714 Apache OFBiz BIRT code vulnerability\"" nil nil nil "1" "2018010411:19:59" "[oss-security] \"[SECURITY] CVE-2017-15714 Apache OFBiz BIRT code vulnerability\"" (number mark "U       slidingfilam Jan  4   28/758   " thread-indent "\"[oss-security] \"[SECURITY] CVE-2017-15714 Apache OFBiz BIRT code vulnerability\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32664 invoked by uid 550); 4 Jan 2018 13:09:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11617 invoked from network); 4 Jan 2018 11:20:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zMMgVFFkbNHFmVX4kXsAkByPebxagi6N4Ae2enAivTU=;
        b=PC24pIuyLk/snK3TREK1nWzx1kdhp4hdPGQpwVl8Xjv8HNLFh7rb7PvCWYH5vNgcdJ
         aP6nNvFpre9ZTDS1ZG6vSnKkYS5kpL3C/eWdkVkLmYAwRnN+x56ZQGkyZf1C3U+HBpoN
         ZH/m52mRAnmBprXGntvvIWYRZxv0IwXuLHawguv50r3D0n8D1xY5glE1rg/e8l7Rgzcc
         ht7/Yealth0hEkVtLOUcMlMuyhKwOoN1WBHzbKRZyz36kBZwD15JF4o2urJ9qgMI2YsV
         JgQ/6A51O1QMor3/sEEuMdstXFz8vgDXnb0E7pGVIXm+gZ6NIYHROD93Ifcm+D+Afd8u
         ZGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zMMgVFFkbNHFmVX4kXsAkByPebxagi6N4Ae2enAivTU=;
        b=U9gixrJTMAQDH5ggJTifOfnYNmYX3hjyCnVDihOmN/eNiKHLCsRRjf31NVyeodR2Rc
         Wi+zJSI8nXx6Ove++ayQuOpteHNGtw9J97IkEB5bxqVM7+Ke8u3pBgIjOIltFjMKyDuO
         7qYKpSnwKgNRDoJ7iMMxYaizjxWgcdlQ/MfdAZtFVoJr0IH4YwDeJ7QbyZErngGjyRk1
         4g9FuG+2PUnx1kGEZfp3fvxttBwMuUyJWzdRQKjdQaWZOtgz1JvLIO0ZCPf6zr4AO92F
         NCdrFVyG9vHQJJ1FAJ9VtWi0oV75VSCh60tgflqRHTA8RgvKe2GRUV1SfRN9Fs41TMpw
         obNw==
X-Gm-Message-State: AKGB3mIeOKyqf897ctCP4okICqU6ji+gZ50L+soJQQDRXVk64fZkjVti
	zgDzWAMdNmYi874mKWR/tcPtzjeRl/BxZykRO1o=
X-Google-Smtp-Source: ACJfBovhCuSIytRz/yB9nKITT75awftxfXPR0sxzuDGXJPZKGEWXwOd7z23JzR6rjOmsgVhxrLXDOTTs3zmj8saNwUc=
X-Received: by 10.202.44.134 with SMTP id s128mr2371840ois.240.1515064799359;
 Thu, 04 Jan 2018 03:19:59 -0800 (PST)
MIME-Version: 1.0
From: Taher Alkhateeb <slidingfilaments@gmail.com>
Date: Thu, 4 Jan 2018 14:19:59 +0300
Message-ID: <CAFqjAi0Zjfy1h1VZa3s-OKm2=oZPkD2jULV6Rpm_k=uBXCnwMg@mail.gmail.com>
To: OFBIZ Development Mailing List <dev@ofbiz.apache.org>, user@ofbiz.apache.org, announce@apache.org, 
	oss-security@lists.openwall.com, Niels Heinen <heinenn@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] "[SECURITY] CVE-2017-15714 Apache OFBiz BIRT code vulnerability"

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.03

Description:
The BIRT plugin in Apache OFBiz does not escape user input property passed.
This allows for code injection by passing that code through the URL. For
example by appending this code "__format=%27;alert(%27xss%27)" to the URL
an alert window would execute.

Mitigation:
Upgrade to 16.11.04

Credit:
Niels Heinen

References:
http://ofbiz.apache.org/download.html#vulnerabilities

This is a security announcement on behalf of the Apache OFBiz security
team. All affected users are advised to upgrade OFBiz as per the below
mitigation strategy. Apology for the repetition to some mailing lists
because I'm resending to _all_ relevant emails.
