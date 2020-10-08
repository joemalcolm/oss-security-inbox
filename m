X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["233" "Thursday" "8" "October" "2020" "15:20:17" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8GSLAn2hT-0fuDzJia9S6+xtxtzx1nMfti0cka8VoH6g@mail.gmail.com>" "6" "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100812:20:17" "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       gguninski@gm Oct  8    6/233   " thread-indent "\"[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13971 invoked by uid 550); 8 Oct 2020 14:05:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16105 invoked from network); 8 Oct 2020 12:20:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=lUceyOcZkx9fAT7uopYuT+TkmXBWVoyhw5MSholXcHA=;
        b=s+5xYj9mDlGgl3mGP3TF9XVRIXLc36HLrB464pqgmmgd2wtz0CKpoWBROaGSBnwcFe
         YaO2bN/Q8pz3/kCEC5jy9ekGfz6zllxIZkEfTrCpZNh8Vgk3nLwFAu8EDE+e7OQVfqm4
         LH669Vv/IT0E77jKNXJQgXcokSedJBDOuxe9BHtjMlsADbD6I6EETlXaTo63vpycEW9e
         ogkCCVDoov9l6LWVe5NMJOe1yC+xVq6wioR+TAAe6dieUch7aoQfenm+w9NSDJPAS5ZW
         XSU4eMy3SO+3bD3NOJClv7nJL9y1D6/KtJcAoEPyFoY1XekHVNxj+HehwziAGdl8z6a2
         /6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=lUceyOcZkx9fAT7uopYuT+TkmXBWVoyhw5MSholXcHA=;
        b=KsgHKUJ5u+nC9KPsIel895+zWLeWiwz17jrYgJ8Ln5m/PmZxx2qRO9I3JuAgc02sTo
         1NFDrwK8uFaKfFX8Vj/Ivp1mRGS4a+mwhjdPFl2VQuks7YyPgw0iImQFnK5EMsl7UxU9
         nI02/HPwDy0Yku6HDS8lPh09T+k48Ba9XpykE6NowdhAkjpdPazCtMeEWoyOEGQzOrpi
         qIj8DWHDpmQX+OExXk+KG5AOlLA77yvs4FbYtqmNmv3ijbnLfm89C9A9nijWv16XWgHv
         kiAVmjq5+WrSqusnxweb5fk0MLgbSAd50Yxh4/EoPlcM3+ip2sgiOg6DS1l7vCZFrSgX
         ekdQ==
X-Gm-Message-State: AOAM531YXlLPjPG2ulFWyBsLzZMD1Lm696dRDvzWoVXibpjyOXT3Ab1p
	NBjAG98F3NEGRQ8bcahqGXUtwd5v6B523u11U8Y1NLGL/Jw=
X-Google-Smtp-Source: ABdhPJyGehcLBHKkyEKxdE3m6nlCdYo3ahxup4d52U+uO22Dr5mGfsKFYH5Ez68YrTZouvwKejiTvewbVSk9xN+frYU=
X-Received: by 2002:adf:c045:: with SMTP id c5mr1390990wrf.405.1602159629355;
 Thu, 08 Oct 2020 05:20:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
In-Reply-To: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 8 Oct 2020 15:20:17 +0300
Message-ID: <CAGUWgD8GSLAn2hT-0fuDzJia9S6+xtxtzx1nMfti0cka8VoH6g@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Debian FEATURE: /home/loser is with permissions 755, default
 umask 0022

> /home/loser is with permissions 755, default umask 0022

For people who don't understand the above:
On default debian 10, if except root you have more than one
system user, the users can list and read each others home
directories.
