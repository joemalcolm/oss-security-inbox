X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1702" "Tuesday" "1" "March" "2016" "09:19:47" "-0800" "Tim Graham" "timograham@gmail.com" "<7dc04e47-533c-46cb-b9e0-eee3367e6f81@googlegroups.com>" "29" "[oss-security] [ANNOUNCE] Django security releases issued: 1.9.3 and 1.8.10" nil nil nil "3" "2016030117:19:47" "[oss-security] [ANNOUNCE] Django security releases issued: 1.9.3 and 1.8.10" (number mark "U       timograham@g Mar  1   29/1702  " thread-indent "\"[oss-security] [ANNOUNCE] Django security releases issued: 1.9.3 and 1.8.10\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1956 invoked by uid 550); 1 Mar 2016 17:20:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1900 invoked from network); 1 Mar 2016 17:19:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=g6QYWbcyDrTDpNDA+CDU029WHn5YpjX2GivH9mwuEeg=;
        b=qztHE2krphRs7Y1V0+gB80bu5piAMz5hwYw+4o7gwdqQzk8tdvYJCzkkVJ+oIgMlSE
         bptAil1GToK7o+Z1ojV37miy6Yo8iCmcxSrBDZG6i87ejfoKJML2LNiJjRR795VXkDT5
         RVp+INN7tFxKq5/XPLvGEoT3aMlqJTIvO/xI6F4Oz8/WUEIb85GlTnzQKWdNRLWSd40h
         Wmne++TVhbE9c2G2HZRVaEzRuJKBJA60p8fEenMIG2nkGzCWHmxoafuczMcAtZRT01u3
         V4Rxwhtf5emMWbzo1iyvUbuYiYdaXfEH/nyhJfmp8bzynWS93YyMWBh0pklwNX9ajLRj
         R9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=g6QYWbcyDrTDpNDA+CDU029WHn5YpjX2GivH9mwuEeg=;
        b=eEckOu3dQSYzivn/Dk5kFCV4GUi8ytjUGwhbt9EGj+hIlhyEjuSYRM2e5Eg1J2nAvV
         SFi77ZAB/FiG2DnWclGqFoE/57ao9pDuziJS4EupNPQfLDP2lrVZRYnsM8Jhp4N6tBI0
         4t9cLV19fFnIH5gV0pialKdr0ss/ZaF+Tlllp3Mw3zBzx4o9CIF7KULeM0HUvfSYa7M6
         K+cwGrAKSOb07SzgriniWHwf9cn2ZPAGLg3AJTDrWfaMVXxiGT3Gc9X1LAOQwTVsUtcO
         7e0yfqX5+z4FKowhR59hNhzLK8cGNsWZFHqRG318EYO+1Ro+5LvcjfZ9izX+cyHNHuGD
         A58w==
X-Gm-Message-State: AD7BkJJ7qzxzQngdMDnkd/olzGkg9ReqsufT8kGrNzfBDMkWF6VEMBeHXjEk4pe0ogQilpGQVjtf
X-Received: by 10.50.85.107 with SMTP id g11mr6758igz.7.1456852788047;
        Tue, 01 Mar 2016 09:19:48 -0800 (PST)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: 4d9c26fe3331f
X-Google-Thread-Id: 42931224f99fccaa
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/4d9c26fe3331f
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/42931224f99fccaa
X-Google-Web-Client: true
Date: Tue, 1 Mar 2016 09:19:47 -0800 (PST)
From: Tim Graham <timograham@gmail.com>
To: django-announce <django-announce@googlegroups.com>
Cc: django-developers@googlegroups.com, django-users@googlegroups.com, 
	oss-security@lists.openwall.com
Message-Id: <7dc04e47-533c-46cb-b9e0-eee3367e6f81@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_732_1047101678.1456852787466"
X-Google-Token: ELOe17YF6ckKm_oOHSE0
X-Google-IP: 72.94.185.243
Subject: [oss-security] [ANNOUNCE] Django security releases issued: 1.9.3 and 1.8.10

------=_Part_732_1047101678.1456852787466
Content-Type: multipart/alternative; 
	boundary="----=_Part_733_1807160752.1456852787466"

------=_Part_733_1807160752.1456852787466
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.9.3 and 1.8.10 as part of our security 
process. This releases address two security issues, and we encourage all 
users to upgrade as soon as possible.

Details are available on the Django project weblog:

https://www.djangoproject.com/weblog/2016/mar/01/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_733_1807160752.1456852787466
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.9.3 and 1.8.10 as part of our security process. This releases address two security issues, and we encourage all users to upgrade as soon as possible.<br><br>Details are available on the Django project weblog:<br><br><a href="https://www.djangoproject.com/weblog/2016/mar/01/security-releases/">https://www.djangoproject.com/weblog/2016/mar/01/security-releases/</a><br><br>As a reminder, we ask that potential security issues be reported via private email to security@djangoproject.com and not via Django&#39;s Trac instance or the django-developers list. Please see https://www.djangoproject.com/security for further information.<br></div>
------=_Part_733_1807160752.1456852787466--

------=_Part_732_1047101678.1456852787466--
