X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["334" "Thursday" "5" "December" "2019" "12:44:56" "+0200" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>" "12" "Re: [oss-security] Authentication vulnerabilities in OpenBSD" "^Date:" nil nil "12" "2019120510:44:56" "[oss-security] Authentication vulnerabilities in OpenBSD" (number mark "        gguninski@gm Dec  5   12/334   " thread-indent "\"Re: [oss-security] Authentication vulnerabilities in OpenBSD\"\n") "<20191204204020.GB7012@localhost.localdomain>" ("<20191204204020.GB7012@localhost.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] Authentication vulnerabilities in OpenBSD" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16344 invoked by uid 550); 5 Dec 2019 10:53:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5944 invoked from network); 5 Dec 2019 10:45:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=D7Y5sy3QpucruZKmM34ufmkVZpQcWcqBhswJBHe0XhU=;
        b=IZhvw1+srjj9EnpGfwkCtMaUqAa2Dy9Q5MpIwg4/jcv1UPQr6YJXbz0J7fvCPGCF8Y
         xISzpTkBfGQiH/2JKxInTEv8TXM4PZsEuDit3nKR8GxG/ciQYharaFCMowNUwSR7v6DQ
         gb6NkDJ4F6h2bgT20GKT+Q0+GqP075SbN23eUnImrioJss3mdbxeFduYZM65REO5szEe
         UbgMje19W9EVfgifxN5WXS0/sMALMJRd4X6y3yS0F7MM2wzMRJ5HKYJ2v7SOJbTsCIzC
         tKakvHB+J9L9lxgvqu1PoOh36ETj/oUmlgtQ7hhl1BSYvv/6ft2r7EAinoGYGkzzfzPQ
         YNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=D7Y5sy3QpucruZKmM34ufmkVZpQcWcqBhswJBHe0XhU=;
        b=uhSEbrzeOrJJQ42LM+Oio5ONZlGg65X2G79dtDsazaqU9c0kG/5ecr7rKNl/heihtS
         7miGgD2gAKjYmhyZq30j4tJfZ681Vnkn4c3SonWgGxPDMCslSnBxEUQOauisMRy2EfDR
         M6opQRYtx8fxOUw2FYWZ9JEPYFRmUm3joqbtI+cD07BXzcguyxG1FJA0jqVzhoTJYfez
         yfSnYrqIfeX83la2O6V2sIBdVKZwHJFzBtO1tiAYpTbhG4qTR8ZBvD9fUYC8eQ4mVcyX
         bKOhEvt3g7WxnjV9kM8XzuEI2a3f29U7fMyQlGlwfBtGQ43YVHGThc+MqOH28mMggn1b
         oSww==
X-Gm-Message-State: APjAAAWms0Yg3MXt1lwQ8JpjsBfCbeNA1wvKM7QAgn7R2z7aQHDyiTPy
	Nag0gVIGpOy04IesmEfKTB7j4X1hoc48kVav3NvfwIjb55U=
X-Google-Smtp-Source: APXvYqwsG4GjMH18cWIQHqGbiUfeazlX3ODAx2SxNTwcsqSa5e9tPpRz1isnXB/8R8yLW1GvM0b314I+SSbn7N7QiIs=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr6024032ioe.238.1575542708298;
 Thu, 05 Dec 2019 02:45:08 -0800 (PST)
MIME-Version: 1.0
References: <20191204204020.GB7012@localhost.localdomain>
In-Reply-To: <20191204204020.GB7012@localhost.localdomain>
Message-ID: <CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 5 Dec 2019 12:44:56 +0200
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Authentication vulnerabilities in OpenBSD
To: oss-security@lists.openwall.com

On Wed, Dec 4, 2019 at 10:51 PM Qualys Security Advisory <qsa@qualys.com> wrote:
>
>
> Qualys Security Advisory
>
> Authentication vulnerabilities in OpenBSD
>

openbsd doesn't count these as remote holes in default install, right?

Their front page still says:
Only two remote holes in the default install, in a heck of a long time!
