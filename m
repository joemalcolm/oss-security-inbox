X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Friday" "4" "January" "2019" "09:22:56" "-0500" "Tim Graham" "timograham@gmail.com" "<CAD-rxRBEb3zdu_43VEHyy7ntz-Sy4tvUCQzVOGivycMyc+2JVg@mail.gmail.com>" "21" "[oss-security] Django security releases issued: 2.1.5, 2.0.10, and 1.11.18" "^Cc:" nil nil "1" "2019010414:22:56" "[oss-security] Django security releases issued: 2.1.5, 2.0.10, and 1.11.18" (number mark "        timograham@g Jan  4   21/908   " thread-indent "\"[oss-security] Django security releases issued: 2.1.5, 2.0.10, and 1.11.18\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4018 invoked by uid 550); 4 Jan 2019 14:23:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3984 invoked from network); 4 Jan 2019 14:23:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qvrJkmEqfl3sftIFMCKrrglTKm5p4hKJ2JeqAGF/US0=;
        b=lnxXFXx3gb1FaFegKyqqopnbCoSybWomwr1U9gndW54MsJWr0p40ksgeGB61ZqEaTL
         n+rudNGHj/3woMn64tQmyJECLj441bFNyROJputEuTK6mgYHNu2XA4mR4DKP4TxaFzBR
         rnnxvUObuWtmHzhAIFeyhKVOaiUKnnPVZUaEijFBoA2xsJR5aE3rn/UFE+fk/wnAWGrY
         bQF07FydzLfui7/3zPUaUi2L3CnLsfbwAp3BY0gOfiHPg3bnQObR/TpCIH85CSciI6Bh
         2sCGKX7oNRhXkay7xN0ohZdB2uunTH62+ZnGuSeD580HDVonpSp0qxq798IUCbQsNcA/
         YV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qvrJkmEqfl3sftIFMCKrrglTKm5p4hKJ2JeqAGF/US0=;
        b=YqIIUidbFS5EcvyddItKiQV5wRqzzFwmVpla/h80e/rjbqO0WCvleIbvPiMVhrvC4H
         pyZfqHE5BeHJNbUza5q2aOQ6p1KylGR4I3A7XDeQ8XT9RWmn9sHnC72NXQx15E0Z7qtd
         fJdSRM8Evx4Rk3x3yqsXQj8UThOlDaHs2/TuyXxpKlOWpp1qFoWtlSzckAoOiaSUODxi
         sjbQNABoTDUyZOb0rPSU2CUry8HQDL6qDbjJKPK0mGVZfHsZoYRuPUWsTaDGp9AC2953
         Rv/KgwqeneJft+yXcfvF6qFDeRt7Je8CIzt79xgI7yqArCq+TKE5ZRvXbZC3oxzO0M9w
         QW9Q==
X-Gm-Message-State: AA+aEWZFP3N03YToVZanxjnzLWJTiXeQKCn/mZV+nF1y7K025GVjabqv
	VweDEOQvucMWlecaMj/ag6S4xP4J+SfENHfUP44=
X-Google-Smtp-Source: AFSGD/WZphoey1JWzGHIlowbJbfOAuH+GeNvUAFsuChySpa8vMqBhUkOXAgC/RSFWZkwU2J7Pcd7ZAIrYVMvCLdNVFQ=
X-Received: by 2002:a02:8a1c:: with SMTP id j28mr35257396jak.49.1546611787404;
 Fri, 04 Jan 2019 06:23:07 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAD-rxRBEb3zdu_43VEHyy7ntz-Sy4tvUCQzVOGivycMyc+2JVg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000319c0b057ea29e0a"
Cc: django-users@googlegroups.com, django-developers@googlegroups.com, 
	oss-security@lists.openwall.com
Date: Fri, 4 Jan 2019 09:22:56 -0500
From: Tim Graham <timograham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Django security releases issued: 2.1.5, 2.0.10, and 1.11.18
To: django-announce@googlegroups.com

--000000000000319c0b057ea29e0a
Content-Type: text/plain; charset="UTF-8"

Today the Django team issued 2.1.5, 2.0.10, and 1.11.18 as part of our
security process. These releases address a security issue, and we encourage
all users to upgrade as soon as possible:

https://www.djangoproject.com/weblog/2019/jan/04/security-releases/

The issue was publicly reported through a GitHub pull request, therefore we
fixed the issue as soon as possible without the usual prenotification
process (
https://docs.djangoproject.com/en/dev/internals/security/#how-django-discloses-security-issues
).

As a reminder, we ask that potential security issues be reported via private
email to security@djangoproject.com and not via Django's Trac  instance,
Django's GitHub repositories, or the django-developers list. Please see
https://www.djangoproject.com/security for further information.

--000000000000319c0b057ea29e0a--
