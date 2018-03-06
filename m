X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["523" "Tuesday" "6" "March" "2018" "09:46:24" "-0500" "Tim Graham" "timograham@gmail.com" "<CAD-rxRC=Sra9eOmzTq1rbkSTzyFCAMALqChi5HdK8f1aaHOgZg@mail.gmail.com>" "10" "[oss-security] Django security releases issued: 2.0.3, 1.11.11, and 1.8.19" nil nil nil "3" "2018030614:46:24" "[oss-security] Django security releases issued: 2.0.3, 1.11.11, and 1.8.19" (number mark "U       timograham@g Mar  6   10/523   " thread-indent "\"[oss-security] Django security releases issued: 2.0.3, 1.11.11, and 1.8.19\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3174 invoked by uid 550); 6 Mar 2018 14:46:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3133 invoked from network); 6 Mar 2018 14:46:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=sRtymH4xVXgp/ij7B1LfzZU4LSNHC8Ti6iagyJrLp0o=;
        b=Bui2HS+v56RTxTODX/OTT/noEz7sH5fUVcLXZw00k17WBAnO5gqqpfHnT4xq8nckr9
         rcuV1OX7nB7MeO9bETf3B9JISJNxlH2pv/Adsp078+oM9mQkDqV3Kak+XVAsRnehrBXP
         cZRpxrYf2pLsxpOjVUhcEB1oC6/eEfvkizJG79O5F7mmZK3pxpJK95EpvhqZHebADblW
         1Vl6VSzeK4cyzpzGbUbenbbdYF7yFlDjLvo4nA6O8wvKZmOf0agTEqhgRA7ZWKF6Sx7C
         apeXekakXv73VxusI0aEZ9HvA9AtYFagcVi/VBrQcjNS/aa/gtNIULKfpDB6vAzLkNlH
         Gdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=sRtymH4xVXgp/ij7B1LfzZU4LSNHC8Ti6iagyJrLp0o=;
        b=U6VMF+PO/0j24OF0JY8yKr7KGsTXhLHQtOADG09dLUGpRNTN514LvlNrBggQbRtrF3
         SMfhiDecBvzToO3bmDcEuN2AYk/OQxK0mhQ9+TkPw+4nSLF7NzvrFsGS0Zg2yyxedvkn
         io5gVapfBcP6CZ12cW7GotigwsQqMpcduSvzD1kFZydP7aANbOpj/jEjWl8lC4uv6Zjv
         MkJ2NFeO6aGAPcKbEekKsHXr67MTOdw6t8RTT3CSJaelhn4zvkJyN/el+7YYPoImKuO9
         qHhTmoQq+v7wUytr6QzOq+5Yd5RpxjvvUCRgw5wNOvz8ikjvN3OFaBAAoAw94qR+iauN
         4TdQ==
X-Gm-Message-State: AElRT7HfYjmmrfCwSTvuFI+8JWU14BOMiE4XglNy9f2+14uA2wFJjVxk
	nZQVpWviFX8HvXI7unPjTwJLJOVR6vtVbbYxL2RLbXVu
X-Google-Smtp-Source: AG47ELs3I/11s7Z0qX3PHLOqooHboLhV4EXO3JHAO9Wn3cTAANtpVjkdThBEB4izY3dJdMYEncXpv5ixU+3E4Cx+iFY=
X-Received: by 10.55.74.2 with SMTP id x2mr26994099qka.314.1520347604456; Tue,
 06 Mar 2018 06:46:44 -0800 (PST)
MIME-Version: 1.0
From: Tim Graham <timograham@gmail.com>
Date: Tue, 6 Mar 2018 09:46:24 -0500
Message-ID: <CAD-rxRC=Sra9eOmzTq1rbkSTzyFCAMALqChi5HdK8f1aaHOgZg@mail.gmail.com>
To: django-announce@googlegroups.com
Cc: "Django developers (Contributions to Django itself)" <django-developers@googlegroups.com>, django-users@googlegroups.com, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Django security releases issued: 2.0.3, 1.11.11, and 1.8.19

Today the Django team issued Django 2.0.3, 1.11.11, and 1.8.19 as part
of our security process. These releases address two security issues,
and we encourage all users to upgrade as soon as possible:

https://www.djangoproject.com/weblog/2018/mar/06/security-releases/

As a reminder, we ask that potential security issues be reported via
private email to security@djangoproject.com and not via Django's Trac
instance or the django-developers list. Please see
https://www.djangoproject.com/security for further information.
