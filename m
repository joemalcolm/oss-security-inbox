X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2034" "Thursday" "12" "September" "2019" "17:17:26" "+0100" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>" "42" "Re: [oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019091216:17:26" "[oss-security] Telegram privacy fails again." (number mark "        ben@bentaske Sep 12   42/2034  " thread-indent "\"Re: [oss-security] Telegram privacy fails again.\"\n") "<20190912153927.GA27634@openwall.com>" ("<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" "<20190912153927.GA27634@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8076 invoked by uid 550); 12 Sep 2019 17:27:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11433 invoked from network); 12 Sep 2019 16:17:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=XpEBeDejJR5DWWaKe0K7SnicdBE4gGnMrQShSYPuHUw=;
        b=aiDa1+5e5ROX6juXzjWgOeZA7X7EXKrFR4a1Niok4LHoVq+9tS0meD+NNB7nVwljGx
         z9SefC5E1C8opsm/NUB7jJ6vn2aHWTSKpnQ5ExHSeD1g5kq639koEHYaqsXWKTS0tgMX
         LKqk2Tkfa+XFMBpyayIzQOJdOza9HrkMMsD7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=XpEBeDejJR5DWWaKe0K7SnicdBE4gGnMrQShSYPuHUw=;
        b=fArt/7Hk2CLC5xABnAKrIZKE3X9TBDETXJpfsbwla+oiMEGMixAXuAl1IhPlWc8xGl
         fkIbVfXra2o6l8+sP5jeVnxLMZyfYksNz6jaHcbzhYl0IQQ6JargtmAJk8h6esMG4Mvc
         KsrWZIuGmfAqWb+vvVpaYFCgZk61O9C5rqVYskVD92xPNaQVgd3NWirUs62386aYCtfq
         nnlGQABGdYWjFMi6lKPLzmVg/Sihf3Dqy0rgQwYAg5WJR0UCW95X58iVoiqKlcS7zI3l
         +rJOd6SKb7gUlnWZ0CNX8dSp4OFen6LuB+MXj5LN94eEzbq1PzXSbD2tKTBvjLCfp6q8
         q4SA==
X-Gm-Message-State: APjAAAWrDkY/643CPBWu2K807j7asBHbxoXseekerox88ES3FlzcFDny
	e9n6++x46x33WWSpgmVhMjJy4an48Rqyq5EEPjxzPHVpEmY=
X-Google-Smtp-Source: APXvYqyQC/moszjDc/dAgskaPF6N5NHlhL6tH19kYGe3Nq6uiWAElCLamCauz2wB9L1hOIP2wGmg1k2MvqBimEfKpnY=
X-Received: by 2002:a6b:4a01:: with SMTP id w1mr4962487iob.222.1568305057298;
 Thu, 12 Sep 2019 09:17:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
 <20190912153927.GA27634@openwall.com>
In-Reply-To: <20190912153927.GA27634@openwall.com>
Message-ID: <CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d73d7005925d7945"
Date: Thu, 12 Sep 2019 17:17:26 +0100
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com

--000000000000d73d7005925d7945
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 12, 2019 at 4:43 PM Solar Designer <solar@openwall.com> wrote:

> Sender-imposed message deletion or expiry is necessarily unreliable: the
> recipient might have taken a copy of the message prior to deletion e.g.
> by taking a picture of the device's screen.  This should be clearly
> communicated to users of such features.
>
> However, it gets worse.  Sure, a reasonably informed sender knows they
> effectively trust the recipient not to bypass the message deletion
> or/and knowingly accepts the risk.  But do they also realize the deleted
> message can possibly be extracted from the device(s) by a third-party
> later?  This, too, should be clearly communicated.
>
> And, speaking of intended behavior, a question is: to what extent should
> the messenger app protect deleted messages from possible recovery?
> Another question is: to what extent such protection is even possible?
>
>
Just as a practical example - this happens automatically on my phone. I
have the nextcloud app set up to watch various directories for new images -
including the one that Whatsapp writes images into.

So if you send me an image and immediately use the delete functionality,
it's probably already too late. If it's reached my phone then Nextcloud
already has a file handle open on it and will be busily sending a copy up
to my server.

So there needn't be a deliberate per-image/file action by the receiver
either, nor need there necessarily be bad faith involved.

IMO, If Whatsapp/Telegram wanted to take this functionality more seriously,
they'd need to be writing the images to disk in an encrypted form from the
outset. It increases the overhead of display, and wouldn't necessarily stop
forensic recovery etc, but it would mean that other apps couldn't simply
watch the directory and upload anything which appears in it in a usable
form. That's a whole other can of worms though as it's another set of keys
to manage.

--000000000000d73d7005925d7945--
