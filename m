X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1866" "Monday" "26" "September" "2016" "11:53:49" "-0700" "Tim Graham" "timograham@gmail.com" "<94b6bfdb-3b5e-459d-8e74-054325ee56f7@googlegroups.com>" "31" "[oss-security] [ANNOUNCE] Django security releases issued: 1.9.10 and 1.8.15" "^Cc:" nil nil "9" "2016092618:53:49" "[oss-security] [ANNOUNCE] Django security releases issued: 1.9.10 and 1.8.15" (number mark "U       timograham@g Sep 26   31/1866  " thread-indent "\"[oss-security] [ANNOUNCE] Django security releases issued: 1.9.10 and 1.8.15\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4070 invoked by uid 550); 26 Sep 2016 18:54:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4026 invoked from network); 26 Sep 2016 18:54:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=50diP3NrVwIIlX1ABMwrH78uxGnWB6g9LRxbKVNEQCs=;
        b=sxNCkGSD/zz7n8zy595FUZj6kVyAjDJW8/LXQxr08+I1ctiIwncqsI5NzyltLHnMBu
         RaA2yzKKkEZKTgz6IeOgC8VC9cliTkb4GWfyUGzcneQHKNThpk0XHQNjhKlx10VqMBg0
         yVV8xi56uAGO8fGNMrmDwU7lc2FIxJp66Ve8Puso61sewuIh4AXG+1D9DsHU3m5X3BGc
         ymrh7g+632ppK2q/EVsbjcLBeHxd3NTdycWiEae5ku17N0QrPAVWrUQcV4lwAeNPicul
         xA6ZhpXj+Hd/6xsEVS/ZwZEdYtkSyOBr0PD2oSxO1v6KJs9Y9ykNN8Q00kw+NiJK5OEA
         Sqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=50diP3NrVwIIlX1ABMwrH78uxGnWB6g9LRxbKVNEQCs=;
        b=OIojxY2mfoInQaq3CCuYLbSwhZ2EvmSbYM0IZxxIsZxdKEaf4E+p27C80iAVC+44R9
         fHLoAHeZuMOgyHVD3sYHzQWonDA+QLOW1fkTXkd2o1scTOat66GDN3BAuFtQseWOiVIR
         hmxryZeTlGlhYLkHy4w8eW6dZyhcPJjVn0QpalVihTYo/yILEDd2TFyJ1QN+kb0fc9k9
         aBmMsGkLqsUVl3nCGz++M8VX9q+ObVkPr3s8LrEtSFSDLepuRQESyxy7aH5Sxw8n0tSm
         1v3tVYigyq6kPyRcBQGXNcjt1jL0nwA+dt8KcSIq89gRCJabjx9X+aLZZfneZfV4omvd
         T75A==
X-Gm-Message-State: AA6/9RmxGozYdz/zcjJlEwfS+dDbdJMulRd+hmSe3OHw9yFwaM1zSYszwvZ6daMjdU/X/jtdpZWQ
X-Received: by 10.36.103.4 with SMTP id u4mr759631itc.9.1474916030161;
        Mon, 26 Sep 2016 11:53:50 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: c3509f8ba73be
X-Google-Thread-Id: 930bd1c4b7083e92
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/c3509f8ba73be
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/930bd1c4b7083e92
X-Google-Web-Client: true
Message-Id: <94b6bfdb-3b5e-459d-8e74-054325ee56f7@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_486_1658264407.1474916029646"
X-Google-Token: EL3dpb8F3CHcyLogfNI0
X-Google-IP: 71.175.65.78
Cc: django-users@googlegroups.com, django-developers@googlegroups.com,
	oss-security@lists.openwall.com
Date: Mon, 26 Sep 2016 11:53:49 -0700 (PDT)
From: Tim Graham <timograham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] Django security releases issued: 1.9.10 and 1.8.15
To: django-announce <django-announce@googlegroups.com>

------=_Part_486_1658264407.1474916029646
Content-Type: multipart/alternative; 
	boundary="----=_Part_487_1089142892.1474916029647"

------=_Part_487_1089142892.1474916029647
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.9.10 and 1.8.15 as part of our security 
process. These releases address a security issue, and we encourage all 
users to upgrade as soon as possible.

Details are available on the Django project weblog:

https://www.djangoproject.com/weblog/2016/sep/26/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_487_1089142892.1474916029647
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.9.10 and 1.8.15
 as part of our security process. These releases address a security 
issue, and we encourage all users to upgrade as soon as possible.<br><br>Details are available on the Django project weblog:<br><a href="https://www.djangoproject.com/weblog/2016/sep/26/security-releases/"><br>https://www.djangoproject.com/weblog/2016/sep/26/security-releases/</a><br><br>As a reminder, we ask that potential security issues be reported via private email to <a href="mailto:security@djangoproject.com" target="_blank" rel="nofollow">security@djangoproject.com</a> and not via Django&#39;s Trac instance or the django-developers list. Please see <a href="https://www.djangoproject.com/security" target="_blank" rel="nofollow">https://www.djangoproject.com/<wbr>security</a> for further information.</div>
------=_Part_487_1089142892.1474916029647--

------=_Part_486_1658264407.1474916029646--
