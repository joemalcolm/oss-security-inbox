X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1664" "Monday" "18" "July" "2016" "11:56:22" "-0700" "Tim Graham" "timograham@gmail.com" "<0e221d12-4d59-429d-ba36-80711fca156c@googlegroups.com>" "29" "[oss-security] [ANNOUNCE] Django security releases issued: 1.10 release candidate 1, 1.9.8, and 1.8.14" nil nil nil "7" "2016071818:56:22" "[oss-security] [ANNOUNCE] Django security releases issued: 1.10 release candidate 1, 1.9.8, and 1.8.14" (number mark "U       timograham@g Jul 18   29/1664  " thread-indent "\"[oss-security] [ANNOUNCE] Django security releases issued: 1.10 release candidate 1, 1.9.8, and 1.8.14\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13953 invoked by uid 550); 18 Jul 2016 18:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13890 invoked from network); 18 Jul 2016 18:56:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=PdpBXoXUEE25VoRa1db8LM/8u4cIBoIavhsPyvo+tAs=;
        b=xvkeoaQiOCfxYbmoTax3SF1GtL4ymtc5Jx5wTNL2criRgDTiQ31XeRNVSk+uyRGcFq
         cNwlJnHfTfqFckV7XfFOtKXg0D3B/ZFoBrEY4Z9SFEivQGhPrND88VNWkOJ8nAB7Ej1j
         fTlsxMAUSYqMgmvWtmX4KSlursspjW8iL4//vleKWKzpqtALloqdZHIQVedvqYJeaivm
         8Rizco8cHr3N2+qvNVkIOVTi4dU+RnmE8ryPkdkZtUfU6GY835EFxWwcPLanIO2FYEX2
         niqhbeWqPuSXn+ZR1Xu7nBiL6AJjkec/okZjupX7rzCJhdJzF9w5efkqtXPl3KgUORzA
         FrMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=PdpBXoXUEE25VoRa1db8LM/8u4cIBoIavhsPyvo+tAs=;
        b=JICRy4d5vrD1K3f6TAlBe4RJ2UVkvom68cPBlx/RSYGQScgWFWPHXEOEkMaC6LgrIu
         oEccrJOP/w48zQME3lF3KbyIKGjbVQPpSfjE5moev7Q4nZWqyH0ACbRRwE6SZh1OZJH4
         z5s8IhufhkaPzvwgivme2B5T++zOUbB01ptEn9fWlbpq1goYghpr0e4eIde4TM/An78W
         BwUtTaU9tKlpUQCKorEpiH5m+4e98z8d7NprUVFB94wBwo1i1Ja3A9R06iQcG/k0E3uC
         USXNkcKPeoes/QPshD3U1ez2KxNllCr3cSwQKbX7LyUVbJs4lLhONQacDH8obBX2l1cU
         nZ+g==
X-Gm-Message-State: ALyK8tKNYbmauVBIaxvRbpSHpr6wDmmZ7q1fMzqoDE7KBp6rlHoS6SbnEnGX6FvPyqFovRY5U3LK
X-Received: by 10.36.108.66 with SMTP id w63mr641729itb.7.1468868183450;
        Mon, 18 Jul 2016 11:56:23 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 5f8633310a
X-Google-Doc-Id: 102a8599368d3
X-Google-Thread-Id: f6006acf427a9c92
X-Google-Message-Url: http://groups.google.com/group/django-announce/msg/102a8599368d3
X-Google-Thread-Url: http://groups.google.com/group/django-announce/t/f6006acf427a9c92
X-Google-Web-Client: true
Date: Mon, 18 Jul 2016 11:56:22 -0700 (PDT)
From: Tim Graham <timograham@gmail.com>
To: django-announce <django-announce@googlegroups.com>
Cc: django-developers@googlegroups.com, django-users@googlegroups.com, 
	oss-security@lists.openwall.com
Message-Id: <0e221d12-4d59-429d-ba36-80711fca156c@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4529_818495541.1468868182184"
X-Google-Token: ENbMtLwF1FFCqDCWEF80
X-Google-IP: 128.91.19.10
Subject: [oss-security] [ANNOUNCE] Django security releases issued: 1.10 release candidate
 1, 1.9.8, and 1.8.14

------=_Part_4529_818495541.1468868182184
Content-Type: multipart/alternative; 
	boundary="----=_Part_4530_80926229.1468868182184"

------=_Part_4530_80926229.1468868182184
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Today the Django team issued 1.10 release candidate 1, 1.9.8, and 1.8.14 as 
part of our security process. This releases address a security issue, and 
we encourage all users to upgrade as soon as possible.

Details are available on the Django project weblog:

https://www.djangoproject.com/weblog/2016/jul/18/security-releases/

As a reminder, we ask that potential security issues be reported via 
private email to security@djangoproject.com and not via Django's Trac 
instance or the django-developers list. Please see 
https://www.djangoproject.com/security for further information.

------=_Part_4530_80926229.1468868182184
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Today the Django team issued 1.10 release candidate 1, 1.9.8, and 1.8.14 as part of our security process. This releases address a security issue, and we encourage all users to upgrade as soon as possible.<br><br>Details are available on the Django project weblog:<br><br>https://www.djangoproject.com/weblog/2016/jul/18/security-releases/<br><br>As a reminder, we ask that potential security issues be reported via private email to security@djangoproject.com and not via Django&#39;s Trac instance or the django-developers list. Please see https://www.djangoproject.com/security for further information.<br></div>
------=_Part_4530_80926229.1468868182184--

------=_Part_4529_818495541.1468868182184--
