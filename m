X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Tuesday" "4" "April" "2017" "08:31:25" "-0700" "Tim Graham" "timograham@gmail.com" "<cb5fc51e-266b-456c-aaa6-8bf78874cac4@googlegroups.com>" "27" "[oss-security] Django security releases issued: 1.10.7, 1.9.13, and 1.8.18" "^Cc:" nil nil "4" "2017040415:31:25" "[oss-security] Django security releases issued: 1.10.7, 1.9.13, and 1.8.18" (number mark "U       timograham@g Apr  4   27/1528  " thread-indent "\"[oss-security] Django security releases issued: 1.10.7, 1.9.13, and 1.8.18\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24133 invoked by uid 550); 4 Apr 2017 15:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24087 invoked from network); 4 Apr 2017 15:31:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=0lMCWV3jL7gRfbJK9QjzJaRGTfmrRaDWXv0hxb08A+0=;
        b=cT7QUGdT2sVEI17k8n3TmVT7NFKL7YOVgAGMCJe4FZulzOGFwfNj3NqFn/j6CytEWD
         k9Ij4T+WClgOwib1+MWoTlsSXFYBkfsteR8Y167+pn1A3ycnUq7JgD1yfif30KylNarz
         47kp6HjwqCsZUvWSXVrne0m+40S39ykW7uAQ1cKwmL9OKmhCMIHS2WMy/t06Ti8E72p6
         1c+iTTC7vmmPIfwymd3HTSiK+Hla7Y5IsykPq7Aft4AMDxy/wfhqlffS5OPL7G2k3emx
         2mPgsR/+66h83ylscE927NemOGcAkD/oFZV5y3n3BrETXbhROQrkUXUio/3aSxG1wFrG
         I3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=0lMCWV3jL7gRfbJK9QjzJaRGTfmrRaDWXv0hxb08A+0=;
        b=YH4BBWNmgydkP64gYwtPp9AlBq9ydM7fOoHRBF89G1hDYARNF6QMVQj1NXRTNuMN9C
         AKHcoI5v7R3nFMKnCMwEBiv3n39kkT9SxivyUfTjAKYQxlzelNkXdBdTqWXYIl0JyrCU
         SQ8kmnJQjGTzcJW2vKoJ4+3y1De/iMS1u0Le4tdXyExCMrIb4IniqoFeUejsQAqJK1nt
         b65BGppZMV0oFgaod37m8ZN9ps60ewjCDwjAApHOpZK7vyHQKhbMX6INIr9311WYloC2
         y9EbtzV1+hRTf3UbjdewUf1xgr3+eb3qrq5wO70A4QCU7xvyckJaQ73RnRwS5d79W9cI
         KSrw==
X-Gm-Message-State: AFeK/H2P7rIPuF0deWFPRryPyPzswg4J7xFNehjhWVpAjX3OM6g523VEcSKIzaVOE86qLccXUZTf
X-Received: by 10.157.55.247 with SMTP id x110mr864650otb.6.1491319885563;
        Tue, 04 Apr 2017 08:31:25 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: c8ed46bfccc4b
X-Google-Thread-Id: dc01a6eb7c8ab31d
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/c8ed46bfccc4b
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/dc01a6eb7c8ab31d
X-Google-Web-Client: true
Message-Id: <cb5fc51e-266b-456c-aaa6-8bf78874cac4@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_177_926567903.1491319885150"
X-Google-Token: EM34jscF6NOBabSSItE0
X-Google-IP: 72.94.255.128
Cc: django-developers@googlegroups.com, django-users@googlegroups.com,
	oss-security@lists.openwall.com
Date: Tue, 4 Apr 2017 08:31:25 -0700 (PDT)
From: Tim Graham <timograham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Django security releases issued: 1.10.7, 1.9.13, and 1.8.18
To: django-announce <django-announce@googlegroups.com>

------=_Part_177_926567903.1491319885150
Content-Type: multipart/alternative; 
	boundary="----=_Part_178_1505078504.1491319885150"

------=_Part_178_1505078504.1491319885150
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.10.7, 1.9.13, and 1.8.18 as part of our 
security process. These releases address two security issues, and we 
encourage all users to upgrade as soon as possible:

https://www.djangoproject.com/weblog/2017/apr/04/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_178_1505078504.1491319885150
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.10.7, 1.9.13, and 1.8.18 as part of our security process. These releases address two security issues, and we encourage all users to upgrade as soon as possible:<br><br>https://www.djangoproject.com/weblog/2017/apr/04/security-releases/<br><br>As a reminder, we ask that potential security issues be reported via private email to security@djangoproject.com and not via Django&#39;s Trac instance or the django-developers list. Please see https://www.djangoproject.com/security for further information.<br></div>
------=_Part_178_1505078504.1491319885150--

------=_Part_177_926567903.1491319885150--
