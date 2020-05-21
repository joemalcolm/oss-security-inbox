X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1566" "Thursday" "21" "May" "2020" "12:56:23" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "40" "[oss-security] Short notes on qmail security guarantee" "^Date:" nil nil "5" "2020052109:56:23" "[oss-security] Short notes on qmail security guarantee" (number mark "        gguninski@gm May 21   40/1566  " thread-indent "\"[oss-security] Short notes on qmail security guarantee\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7486 invoked by uid 550); 21 May 2020 10:16:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30247 invoked from network); 21 May 2020 09:56:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qNi4djUu/TyDi5cGgctItZqn+hcWVXyJenhryTQgnRo=;
        b=n0BVcCu7iwoCQZvJQJXpPS09A5uSZSOjYW628rwnw3HWtUrcg1RrPwHAxR3gfpeR/U
         3ZbRMqx8ZEC/6LG3EmPJ7wFdXOv1XXCnj0R3mFN9aWI70p09o3dBzZzjWWBEtvtNVTar
         vhSXhQ0AUqJSHP6MGab4zVA1OD8SpzazKT1QWTHjAZugjqSUxhu4tg/Clabs7wP8jnbF
         fmvgS9aexCv2SbTaeyFg1j21nczPXth1jFPGjrqVodBPZRk7kftf5Eq8LhaY+R1ZTxX0
         06qYGEsIwG+VQhDbVjCqFIaXfaAtYpgwFUg17XAQMdT1r8RCbt+R63vc/oBEwziKmArl
         CQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qNi4djUu/TyDi5cGgctItZqn+hcWVXyJenhryTQgnRo=;
        b=XijCigNC19qw3YJcb0RCzGpk9s65qLYGbtCj5mrVaYeByUvIY9/JYjyacQazBY+i3Z
         MZ00N71Bzd53YjdizGJ/qxGVuhzxnqj4L590RSoFH1dGgcB3SZqPrK9BPMwrgrIb8QE+
         BY9qcBrjYyAE/xVzJsGa529eJH93iOpBV8VoE3ePfLCzAXydQCFr2V3bt5fDTBqFk2y4
         0+TZKGQTXgsQf9M4LEFcwEJpao8CylMQXRwpJYZSkZb5ij60ELNuPm5YNhDEzk4W4aL1
         bRlB1SMIdOYLfQBqVuvznQvfOryLpEsiSk60ARC8J2+M62FKPevHlRRuvCZgI/a5A0yU
         Mehg==
X-Gm-Message-State: AOAM530HrAkFZM2LWXTrfXQ3104aSDrKFgmrZVovhMjOfCRYKmwGrrgJ
	I/0rR3Eq5s/VI1JPX7CEu2gtGg1c5j3u1WyIeGV7vUWI
X-Google-Smtp-Source: ABdhPJzmUMzyIz2L0hyJ7pKV4L9+HJaKAfNwAlVSh2Smt/rjIWTrBAnNpF1KXyztJla/02fBrGa9SWolz7zIzfxowK4=
X-Received: by 2002:adf:82b6:: with SMTP id 51mr7863773wrc.102.1590054995315;
 Thu, 21 May 2020 02:56:35 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 21 May 2020 12:56:23 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Short notes on qmail security guarantee
To: oss-security@lists.openwall.com

 From my blog:
https://j.ludost.net/blog/archives/2020/05/21/short_notes_on_qmail_security_guarantee/index.html

Short notes on qmail security guarantee

Disclaimer: written in hurry, could be wrong.

djb offers monetary bounty for verifiable qmail exploit,
called "qmail security guarantee" [1].

He hasn't awarded the bounty yet, despite several
vulnerabilities found by us in 2005 [2] and in 2020 [3]
Qualys discovered that at least one of the vulnerabilities
works in default qmail install.

Both of these vulnerabilities require more that 4GB memory.

djb's main argument is that nobody gives a lot of memory
to qmail-smtpd (and as djb might missed to all other
qmail- components).

We believe that the claim of memory limit is wrong for
the following reasons:

1. qmail's install documentation doesn't mention memory limits
2. Qualys claims that their exploit works on the default
install of all packages they have seen (and all package maintainers
have missed memory limits).
3. djb shouldn't assume that 4-8GB will be enough for the
normal functioning of qmail. In theory libc might require
more RAM in the future. Currently mobile phones have
32+GB RAM and there is clear trend in grow of RAM.
4. By common sense, distributing software with known vulnerabilities
is bad practice.
5. AFAIK djb teaches students about coding and security and he
better lead by example of good coding.

[1] https://cr.yp.to/qmail/guarantee.html
[2] http://www.guninski.com/where_do_you_want_billg_to_go_today_4.html
[3] https://www.openwall.com/lists/oss-security/2020/05/19/8
