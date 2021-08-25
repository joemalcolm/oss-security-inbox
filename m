X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["795" "Wednesday" "25" "August" "2021" "17:11:43" "-0300" "Jean D'Elboux" "j@bsd.com.br" nil "26" "Re: [oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil "8" nil nil (number mark "U       j@bsd.com.br Aug 25   26/795   " thread-indent "\"Re: [oss-security] Possible memory leak on getspnam / getspnam_r\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15484 invoked by uid 550); 26 Aug 2021 07:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1515 invoked from network); 25 Aug 2021 20:12:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bsd.com.br; s=capeta;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=y4ZxY85ZNu9+Gxcbov2EdZ48p0FvFHZuUOYLTuj27Xg=;
        b=aYwFSpmjBNC5azSNMysBNBd8OhuX/H7QPXxdgXLYFLZ5WSfPb1cKJM7hPeZNh9Xn1+
         MdRQy+ul5qzt6nGI9hocq2bXxgQpjexTCUYbLjhUx6NpRQmbssLRMk4T0BYAqfD8SaSK
         vxdltivcxT+T1+uYd0BIaXV7V8s0hhXsWtEJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=y4ZxY85ZNu9+Gxcbov2EdZ48p0FvFHZuUOYLTuj27Xg=;
        b=gf8nJ7EKT7Odrw7Hxxs3rucNvl3/pgvunsqTdVVOmS4Tx2KtdaA6sOhX2hH91S3GSW
         HQLe2YYc9yuKHN1fhRb1cAwldF7AmrPHi43Y2CacwXTnoKYfJ5CMCHnRwwp34PViGO0q
         oZSFRLHCcYVrz/REF6RejXs4M8P6jU5FAOJm5GfsgEmfjwz92gbQ9686279AVp/oXJTJ
         Z8cNJc6/H4gPyuD/RHX9Ub3y1FglfkNGDPkSX94bjBJcjzGoLVe6cTCyWjoRHWU9QqzX
         kZiooiMjCYAQXpPMSHqRyee1mkODwwTToGuDH3FA2f13C4Z7jCtZDueYQmXU0Jc7efow
         lo3Q==
X-Gm-Message-State: AOAM531VyLfmOhhP5L8vuncQF1UvZuGekB1rPnAO04yizyjbvxfptFQr
	EhgLgb2PHIzH8yyYQcMycXfT87Optfr/lerTHqMjXmECsqg=
X-Google-Smtp-Source: ABdhPJxQOsZftmmj6Fk0QWb1ChVd5NF0NqSAiIHYMSgT9uqJ0v5sf8hUjBT4bVGH4KSrCm7917eoxAuo+ieRMml0m4w=
X-Received: by 2002:a2e:bc18:: with SMTP id b24mr16374026ljf.437.1629922314701;
 Wed, 25 Aug 2021 13:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKpyPV-Z18FXae0t7vCozupvZ6+_9eeaoAQ=8_1sPM8Xfbn3ZQ@mail.gmail.com>
 <38355066-A140-44A7-8E3D-58339304E77E@juniper.net> <CA+bc5v9Jqo0e0Nw1vo8FS11Th0fRKtyW+rUkXtX52WzVsbTspA@mail.gmail.com>
In-Reply-To: <CA+bc5v9Jqo0e0Nw1vo8FS11Th0fRKtyW+rUkXtX52WzVsbTspA@mail.gmail.com>
From: "Jean D'Elboux" <j@bsd.com.br>
Date: Wed, 25 Aug 2021 17:11:43 -0300
Message-ID: <CAKpyPV-pT1d3ysnUVJ7rWufZMv8t7mFdZu1xnST0grO=GoH31Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000094600305ca67dc6a"
Subject: Re: [oss-security] Possible memory leak on getspnam / getspnam_r

--00000000000094600305ca67dc6a
Content-Type: text/plain; charset="UTF-8"

Thanks for your email Travis.


> Alternatively, a new function cleanup_and_zeroize_caches() could added. A
> user
> could call this after fork().
>

Yes, I've suggested something similar as an alternative (please check NB at
the end of my email).


> Of course, introducing a new function complicates the APIs and requires
> developers to add them. Also, to support multiple versions of libraries,
> developers would need to protect the call with an '#ifdef
> SUPPORTS_NEW_FUNCTION'.
>

In order to avoid more complexity to the API, instead of creating a new
function, endspent() could be bzero() internal buffer, since the user is
expressing he/she is done processing when calling it.

--00000000000094600305ca67dc6a--
