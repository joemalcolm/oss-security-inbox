X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Tuesday" "1" "November" "2016" "07:50:21" "-0700" "Tim Graham" "timograham@gmail.com" "<cd843cd1-250f-46d5-b5ab-afddb8aecfae@googlegroups.com>" "29" "[oss-security] [ANNOUNCE] Django security releases issued: 1.10.3, 1.9.11, and 1.8.16" nil nil nil "11" "2016110114:50:21" "[oss-security] [ANNOUNCE] Django security releases issued: 1.10.3, 1.9.11, and 1.8.16" (number mark "U       timograham@g Nov  1   29/1642  " thread-indent "\"[oss-security] [ANNOUNCE] Django security releases issued: 1.10.3, 1.9.11, and 1.8.16\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18066 invoked by uid 550); 1 Nov 2016 14:50:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18039 invoked from network); 1 Nov 2016 14:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=esFnyd/092HyTBY+E5Jagc5NIwJLNpDV4nmQ48FxzGc=;
        b=bR2XZpVaiw46CstNDwy3v3pdforA2dAa2lI8mvidLEYaQltuWwOtdYlz7JMpGCrlBt
         rq9wIGs9nd2xri4M9UwO85cuI4nnTRYUgfeFHCtA7G5QfXh7wGAdNpGxOvN0ZDOu+ArZ
         EJx4ESxRgP4YAHjngK1u+wbknJWEt2m/FkrI6E/qazKaYW6P/9rFIaXashxiTn8oynuf
         rpyNXaQLEnOS3rujxzQgDd9vUuLp6viSZ4LZPMXyrjku6lZav9a/9rFQBdeipjGKbQiN
         uHx+56m0RLgX0TxZZcbvHJPAJyeTCXDExx5LeWeokz1sIp2KFP1lTflHe41iZn3S9U02
         9Pvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=esFnyd/092HyTBY+E5Jagc5NIwJLNpDV4nmQ48FxzGc=;
        b=Iz9J4vGpgEPIEoCWAShciUHHfRilvK1Wyl7gyjMnt6PesloDNpv0XQ+A9za77phBmQ
         HK2ifjUIzdfp1DesTlCmJCpYFIFlpV0h/k8MgMPC1cUI5s/V0+ZBQZIxNjT6TDiBh2Hg
         Zto5GhGLpb4w6cLMtmgAvM8UW6OjVN/5qXDVi2n/7PgcRNiYNONMKnL/+c1XwyD+rvCg
         60K4bcnE728HtDUHBVLBsjDIovwbr+TcUDy9I/NzG28QMsm5y6zvKlktn9+WqNPk+yiv
         fBeJL81/vSAnDqC3e0o+WjIGVv5ROGTPjlHIxYfbTLqoKhBOAytpIZx3dOVpTNySIbMQ
         AreA==
X-Gm-Message-State: ABUngvcqweiyBG49ASAXbq3o7qID5Z7gkR8kAeOAt8qgQLmOlU14Nobl6B/bWGhz3hxJQu4OIJFG
X-Received: by 10.157.44.39 with SMTP id f36mr1384937otb.16.1478011822239;
        Tue, 01 Nov 2016 07:50:22 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: 8b63eb0a084e0
X-Google-Thread-Id: 52049bb992b835d2
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/8b63eb0a084e0
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/52049bb992b835d2
X-Google-Web-Client: true
Date: Tue, 1 Nov 2016 07:50:21 -0700 (PDT)
From: Tim Graham <timograham@gmail.com>
To: django-announce <django-announce@googlegroups.com>
Cc: django-developers@googlegroups.com, django-users@googlegroups.com,
	oss-security@lists.openwall.com
Message-Id: <cd843cd1-250f-46d5-b5ab-afddb8aecfae@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_929_1939741259.1478011821841"
X-Google-Token: EK3X4sAF8NbwZEbTNfg0
X-Google-IP: 71.175.65.78
Subject: [oss-security] [ANNOUNCE] Django security releases issued: 1.10.3, 1.9.11, and
 1.8.16

------=_Part_929_1939741259.1478011821841
Content-Type: multipart/alternative; 
	boundary="----=_Part_930_1539521571.1478011821841"

------=_Part_930_1539521571.1478011821841
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.10.3, 1.9.11, and 1.8.16 as part of our 
security process. These releases address two security issues, and we 
encourage all users to upgrade as soon as possible.

Details are available on the Django project weblog:

https://www.djangoproject.com/weblog/2016/nov/01/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_930_1539521571.1478011821841
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.10.3, 1.9.11, and 1.8.16 as part of our security process. These releases address two security issues, and we encourage all users to upgrade as soon as possible.<br><br>Details are available on the Django project weblog:<br><br>https://www.djangoproject.com/weblog/2016/nov/01/security-releases/<br><br>As a reminder, we ask that potential security issues be reported via private email to security@djangoproject.com and not via Django&#39;s Trac instance or the django-developers list. Please see https://www.djangoproject.com/security for further information.<br></div>
------=_Part_930_1539521571.1478011821841--

------=_Part_929_1939741259.1478011821841--
