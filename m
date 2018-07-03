X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["934" "Tuesday" "3" "July" "2018" "17:13:14" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=Vht4hg7MQFkhkzP7MQrM5Rj3DHp1dr+n3WknWo=vXQ0g@mail.gmail.com>" "33" "Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" "^Cc:" nil nil "7" "2018070315:13:14" "[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" (number mark "        glider@googl Jul  3   33/934   " thread-indent "\"Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl\"\n") "<195286405.46114672.1530032082079.JavaMail.zimbra@redhat.com>" ("<CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>" "<460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>" "<CAG_fn=UCp-bw7312gxmSP8d1ioYr1YBmOuSiSsJKCvJakzHS4A@mail.gmail.com>" "<195286405.46114672.1530032082079.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1506 invoked by uid 550); 3 Jul 2018 15:13:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1437 invoked from network); 3 Jul 2018 15:13:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DX3UZYA1Q8yI/f0WCPwDg1G5Nrs/pi/pvS1D7H6GRQw=;
        b=jn4vXVszN994wgPKUcY3Jv0XzS63JG0f1dL4ZcqY4JirRuqSt8OTPnUyAV/yGFKM+W
         MuyQWcVd1frJyJ0k0MG8+44QUv3I6uHrKMOSMUZnkvuaRbw1l4rmRTxR2J3UKta7LRXj
         NJ3qtbEMabvQxbe7msm5bgppbNXI4MlTJHjgcE0PxX7SB3Ud7QWGnsuNrXag6azdREtT
         5NZlS/k0K+5hJ2kNptiZa2tDB9ZGF8/d6XCOjOs/ivcfb744xKgLQ0Ruyh+W630Kcsnx
         uF0NqXFLMXwlZ1V46GklCAuzjnCIq67e5BRnDSAlK0yQxDTnKAT0hg0h1P2PkcGNeB1A
         uUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DX3UZYA1Q8yI/f0WCPwDg1G5Nrs/pi/pvS1D7H6GRQw=;
        b=WX4sfBGHZmSlirMURYUS2W2pH7cLfLu67gdfadx1EZ7xOjYbhPcboI8jn2ZvK79u/5
         7DiYFyK0MPhSijMbw0lfYfWA9li3EOGDFsubzEsdizOF7knzDTOGbWS7J2dCX1Y1+Jxq
         aab+8bHoLl9TpIIXT1/ax3QzmhNnUjgUX+YrY24UEpL6+b1lUP6FyHhyiFrDg3HtoK+A
         AiXEpl1mpgTwrw42eKkirDGrX5siTXn9CLCoyjat8TGFRSXcKvAAYp97N8nCq3z4j3nO
         DHLpN+/YMsdQngWYCCCIIJaqHaYaBs45StX/3NJxWEh/5kwM0SKHi7ZInuKAxJOT53G7
         hagw==
X-Gm-Message-State: APt69E0kXNLTsoIQ/VbOapyh3lfEOIlD06v+W7OnJEboC/D23EmwTbpt
	UK/jcyeMO9qg4tNCpZDiUl+XAJ49qSlZE1VfGgYZrA==
X-Google-Smtp-Source: AAOMgpfHifKoDHQzsENjudHrJ3o9TVGrBQ6DzGmN7v1Uyp/XkNoLxQbWzEVV5ZJ255pG+G6q4zdHZWbJFXUD5fCwf6U=
X-Received: by 2002:a1f:3fd2:: with SMTP id m201-v6mr17622277vka.62.1530630805419;
 Tue, 03 Jul 2018 08:13:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>
 <460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>
 <CAG_fn=UCp-bw7312gxmSP8d1ioYr1YBmOuSiSsJKCvJakzHS4A@mail.gmail.com> <195286405.46114672.1530032082079.JavaMail.zimbra@redhat.com>
In-Reply-To: <195286405.46114672.1530032082079.JavaMail.zimbra@redhat.com>
Message-ID: <CAG_fn=Vht4hg7MQFkhkzP7MQrM5Rj3DHp1dr+n3WknWo=vXQ0g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Tue, 3 Jul 2018 17:13:14 +0200
From: Alexander Potapenko <glider@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16
 infoleak due to incorrect handling of SG_IO ioctl
To: Vladis Dronov <vdronov@redhat.com>

On Tue, Jun 26, 2018 at 6:54 PM Vladis Dronov <vdronov@redhat.com> wrote:
>
> Hello, Alexander,
>
> > > I may not got smth correctly, but for now I do not see CVE-2018-10002=
04
> > > as a security flaw and I believe a reject request to MITRE should be
> > > issued.
> > How do I proceed with this?
>
> I believe it is: https://cveform.mitre.org/ -> Request an update to an ex=
isting
> CVE Entry -> Rejection
I've issued a reject request, but the CVE entry is currently marked as
"Disputed" (http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-100020=
4)
Not sure if that's the desired result.
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer
>


--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
