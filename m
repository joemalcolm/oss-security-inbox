X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1512" "Tuesday" "5" "September" "2017" "09:30:23" "-0700" "Tim Graham" "timograham@gmail.com" "<da74bef7-e0dc-4fff-a44e-8fd51bc2d012@googlegroups.com>" "27" "[oss-security] Django security releases issued: 1.11.5 and 1.10.8" nil nil nil "9" "2017090516:30:23" "[oss-security] Django security releases issued: 1.11.5 and 1.10.8" (number mark "U       timograham@g Sep  5   27/1512  " thread-indent "\"[oss-security] Django security releases issued: 1.11.5 and 1.10.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20342 invoked by uid 550); 5 Sep 2017 16:30:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20291 invoked from network); 5 Sep 2017 16:30:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=mUhC/NYXSKegMKTDEeiyOJXRioFHOUrj+x7LODow3lI=;
        b=ZYuFkqTNYoiXrZmPt32lZdYelW1nD0nhVp14857rke1hgpEX2eXl0LVJDGU91vXIqD
         u3UYg6ZnZeowpNrzix6h/YSIjv5fBFS5Zt0uAKhVWrFEg1GhF97Y8iNWvWGqT27zcuzO
         5eZ5HIZM3JR4okgBWGUkRF7Deb21DTgsGKTCLisS2+X616zFOcfMTo8c8t8WqLqoPs+A
         WPoWp0Gov+420PqEQI3Hm/AW0OYS6vajpQD36UjNoORN4oeeyDSVhbLBEv10NOZVXToL
         t82M77cGQmqYF0JaK2QeGOuP9BJHPAFF5Pk9A8nLlr/hdB52sC/Cjl2YkEPF39A2x04V
         5WMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=mUhC/NYXSKegMKTDEeiyOJXRioFHOUrj+x7LODow3lI=;
        b=LW+hPYgkn/BAHILH01ptPEaSohKCCi4wcLMvbPBwz9lpF7UMyIlmNHzsP12t/Bvomo
         e3OZzanxHCWRSYB8rZxLTAsQiERA+HLO4Jbc0kj1DOqtK8ou2N72E49QnsAlfPCTkRll
         P0efuwCFqu4dgHVd2YerVwMVV85fsIckMoQE3RwLRMM2W9EGh1RQeH+avKWYUXZnE0Ir
         geNTZPOw10RWINEYUlsxO/vVtWG7VPRGPFC06ad5pacmAoaaYhhraKrP83UDXRB5uxrn
         20+zetRyFvxKJ3qGjTn75mV3RdaCoHZNSvL4vqNPG2NdXiELtDUg8IzraIzxcH83+v4m
         WRXg==
X-Gm-Message-State: AHPjjUhHQd+0CznDX1hTr9Pg20R/NLUEG81o6COcRZzXGokzEATHR4Uw
	Rf4H9hyCJAUMdhmIdrR5
X-Google-Smtp-Source: ADKCNb6KKkcClhJifDgAhBx4iUU1OLT4v/1qSiTyVaAZGl+3O3cf9aDH/Weac9DZWbDc1sdjOf2vo2Ec7Q==
X-Received: by 10.31.155.76 with SMTP id d73mr28349vke.23.1504629024015;
        Tue, 05 Sep 2017 09:30:24 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: 17b1be6415787
X-Google-Thread-Id: f20d31d2d271c52a
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/17b1be6415787
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/f20d31d2d271c52a
X-Google-Web-Client: true
Date: Tue, 5 Sep 2017 09:30:23 -0700 (PDT)
From: Tim Graham <timograham@gmail.com>
To: django-announce <django-announce@googlegroups.com>
Cc: django-users@googlegroups.com, django-developers@googlegroups.com,
	oss-security@lists.openwall.com
Message-Id: <da74bef7-e0dc-4fff-a44e-8fd51bc2d012@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1386_2007218016.1504629023529"
X-Google-Token: EJ-iu80FFvQ0bWF_mUc0
X-Google-IP: 71.175.65.223
Subject: [oss-security] Django security releases issued: 1.11.5 and 1.10.8

------=_Part_1386_2007218016.1504629023529
Content-Type: multipart/alternative; 
	boundary="----=_Part_1387_1915782764.1504629023530"

------=_Part_1387_1915782764.1504629023530
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.11.5 and 1.10.8 as part of our security 
process. These releases address a security issue, and we encourage all 
users to upgrade as soon as possible:

https://www.djangoproject.com/weblog/2017/sep/05/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_1387_1915782764.1504629023530
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.11.5 and 1.10.8 as part of our security process. These releases address a security issue, and we encourage all users to upgrade as soon as possible:<br><br>https://www.djangoproject.com/weblog/2017/sep/05/security-releases/<br><br>As a reminder, we ask that potential security issues be reported via private email to security@djangoproject.com and not via Django&#39;s Trac instance or the django-developers list. Please see https://www.djangoproject.com/security for further information.<br></div>
------=_Part_1387_1915782764.1504629023530--

------=_Part_1386_2007218016.1504629023529--
