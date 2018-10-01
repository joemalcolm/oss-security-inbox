X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["857" "Monday" "1" "October" "2018" "11:33:47" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" "<D256F892-8344-4273-A676-93D62E0CC984@gmail.com>" "20" "[oss-security] Django security release issued: 2.1.2" "^Date:" nil nil "10" "2018100109:33:47" "[oss-security] Django security release issued: 2.1.2" (number mark "        carlton.gibs Oct  1   20/857   " thread-indent "\"[oss-security] Django security release issued: 2.1.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9991 invoked by uid 550); 1 Oct 2018 10:11:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22045 invoked from network); 1 Oct 2018 09:34:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=WRRQ7cPWtabBwB3l6Mf/427UWSxQYHgPoPgau/c/fBc=;
        b=feqg/MhWbrCucQwPfXPJotYgRxjLBTqs4fRqRmKN+VE3XBctHE6Z4o8i+Bo2EusPoK
         apKdSlfDq7hwXt2a/bVhWBrMhWOLUs+D+O2wJpGgHhdqGwsKtJU286EXi8UAzeGDYmMv
         +z99v2qADaxjOce1sShfYjpyKO7VC551LFcjvOSTKSLbI8VzoNK9wFW1LqA20LcFlq0y
         UoMqqgRHcP90t1J1CKUONKObTACvIJYvhCeNR9nP7p+R7CUkXIQl97w1nyAx9c1w71Cb
         0mCy6ejYIjwHdXhC3qjGkgDappkeplHftNYKgx1mG40gClw32bGyRuxB9KZx+OWHCS6u
         Shrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=WRRQ7cPWtabBwB3l6Mf/427UWSxQYHgPoPgau/c/fBc=;
        b=N3xRqPiOCK8wshGhw/etFHq4En3qb9lTNO9lX5m26OaOuELgSPdODuiugu5++zL13a
         x1U9zj/H45xYnBPVh1CH6yL/aEluQ7/3cBUJvK1t6VAZbA9cotFHo9lARdvgnjRKyX8o
         CgEWaNZnT7sW5Cas4mvpeRmMJk4zzsn5I7C/IMR7B8GWQgvrHxRKqsVh5cyEomvXl4/l
         kLhhMzQVKUb7iIjHmS4qx2mt8fY1Awrghgk/YnXaGMqZ1mZOxp3u4IjjELCiboFo+zo5
         tQ5ffaNHdDE1WQ8Yq0Q+EEJ1CR6mrAbJmkoPqvvQo64uuUWX9lpA9JgSLASRV62+wmK4
         E81g==
X-Gm-Message-State: ABuFfojD57V7RIBY4pjfJiLOZOn8FcUox++sxbraMKmBR5wtM503ZsJs
	8Iknx2rntv+jCtZnqryYy1Ctue+b
X-Google-Smtp-Source: ACcGV60lvOaVU9K6viVfRChdZIm0mcysdUGzuCOAGlkA7O9AyNdPi64AYve5Vg7V5mnpBNu4Lal0UA==
X-Received: by 2002:adf:ebcf:: with SMTP id v15-v6mr1273984wrn.76.1538386428504;
        Mon, 01 Oct 2018 02:33:48 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_24BBC4BC-0749-4FDC-AC99-828EE784A8C0"
X-Mao-Original-Outgoing-Id: 560079227.014838-f66d99017f28911016f758699de62222
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <D256F892-8344-4273-A676-93D62E0CC984@gmail.com>
X-Mailer: Apple Mail (2.3273)
Date: Mon, 1 Oct 2018 11:33:47 +0200
From: Carlton Gibson <carlton.gibson@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Django security release issued: 2.1.2
To: oss-security@lists.openwall.com

--Apple-Mail=_24BBC4BC-0749-4FDC-AC99-828EE784A8C0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Today the Django team issued 2.1.2 as part of our security=20
process. This release address a security issue, and we encourage all=20
users to upgrade as soon as possible:=20

https://www.djangoproject.com/weblog/2018/oct/01/security-release/ <https:/=
/www.djangoproject.com/weblog/2018/oct/01/security-release/>

As a reminder, we ask that potential security issues be reported via=20
private email to security@djangoproject.com <mailto:security@djangoproject.=
com> and not via Django's Trac=20
instance or the django-developers list. Please see=20
https://www.djangoproject.com/security <https://www.djangoproject.com/secur=
ity> for further information.=20=

--Apple-Mail=_24BBC4BC-0749-4FDC-AC99-828EE784A8C0--
