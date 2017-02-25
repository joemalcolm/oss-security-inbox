X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["624" "Saturday" "25" "February" "2017" "12:49:12" "-0500" "Assaf Gordon" "assafgordon@gmail.com" "<598330B5-3AE7-49CD-B826-3FFEAA7C5048@gmail.com>" "23" "Re: [oss-security] gnu-paxutils: multiple crashes" "^Date:" nil nil "2" "2017022517:49:12" "[oss-security] gnu-paxutils: multiple crashes" (number mark "U       assafgordon@ Feb 25   23/624   " thread-indent "\"Re: [oss-security] gnu-paxutils: multiple crashes\"\n") "<670171.970592008-sendEmail@localhost>" ("<670171.970592008-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27905 invoked by uid 550); 25 Feb 2017 18:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5332 invoked from network); 25 Feb 2017 17:49:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=TSq6UQlDphZkcyMagTNrbSom+cNHk9NCVCqETy0UA8o=;
        b=MSDWoQWimHpo5tii30lEb1/geRfLjNPkOA2Ng0kvyEaaLn8WXEArCAWii7ltDdA8e3
         UzL5WVILGMn0OS+RrQswwkYsuai2fTmQgd8gK+FOf6XAlHVWFoj4XSSQBKciJuHm/Hd2
         QTFFKTr57tT6sqIcybmFngShEcV43dkR3RGdabbSTpxH7eM+jEJ2gggm0zPLq62a1ZBM
         bYa315jUY9TEu4HHOHlaxaYfxKJyMhh8EfdBjRn73ao7SojF43CtiwNmr8JyZsH4dhOE
         ZIqD7SNmRK8B7LWLDhk9/pFmssejpAi+vf8l/7uKyDyQYnwmJR2JwrwRrkfFJa/mHN5p
         k01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=TSq6UQlDphZkcyMagTNrbSom+cNHk9NCVCqETy0UA8o=;
        b=Yn21G+OWDdYdSvdWcZzeZ4AmhTQKQYP6FOFKydcxUhZhJ2h21NZXQ6XWcTpo/hrElq
         /FZoEkBnY5vOxf5fMSdUYZi6pq3IIbFzJ+CUPo3zxw4UTMolozsyVpS3xSO+EZEQZauW
         iXxvHnpSk0wqu+R+4a/NOcBGtobokamqYO45SCSfUu267iZX7igsrbqV04D6D/ItVjg1
         FZICwmq+Wump9JvEkgyJTSqApO9Iaz6a99xHSEPGIF1110rNz+vKyfTjGsovW5d4hAOI
         OtOUcUZYBqEuRifItRCqsXUmZLEsD0VghcFhR0YVuV9kLDjmPalHYwYS09ubt/vJJglD
         /TcQ==
X-Gm-Message-State: AMke39kYYvgjiVMqA3OpVFH/jxwm2o6Cpsu8AD6MShS6foq9pDW0NunBTtikpVgoS2uWnA==
X-Received: by 10.200.35.36 with SMTP id a33mr7619670qta.216.1488044954567;
        Sat, 25 Feb 2017 09:49:14 -0800 (PST)
Content-Type: text/plain; charset=iso-8859-1
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
In-Reply-To: <670171.970592008-sendEmail@localhost>
Content-Transfer-Encoding: quoted-printable
Message-Id: <598330B5-3AE7-49CD-B826-3FFEAA7C5048@gmail.com>
References: <670171.970592008-sendEmail@localhost>
X-Mailer: Apple Mail (2.2102)
Date: Sat, 25 Feb 2017 12:49:12 -0500
From: Assaf Gordon <assafgordon@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] gnu-paxutils: multiple crashes
To: oss-security@lists.openwall.com

Hello,

> On Feb 25, 2017, at 06:36, Agostino Sarubbo <ago@gentoo.org> wrote:
>=20
> Description:
> GNU paxutils is a suite of archive utilities [...]
> A fuzzing on tar and pax shows multiple crashes.
[...]
> Note:
> The email to upstream was rejected.

Not sure what "rejected" means (did the email delivery failed or the mainta=
iner rejected your input, etc).

But generally for GNU Software,
If you don't get timely response from the maintainer,
you can send an email to "security@gnu.org" ,
and if that doesn't help, escalate to "maintainers@gnu.org".
see https://www.gnu.org/software/security/=20

regards,
 - assaf

