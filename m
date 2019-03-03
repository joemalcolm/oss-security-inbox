X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1101" "Sunday" "3" "March" "2019" "16:58:48" "+0000" "Mark Steward" "marksteward@gmail.com" "<CAPyX2nfQGVziUEt2V-KF-zht5xoa0bPHFQ3nRFSj_-gs=07xCQ@mail.gmail.com>" "37" "Re: [oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)" "^Date:" nil nil "3" "2019030316:58:48" "[oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)" (number mark "        marksteward@ Mar  3   37/1101  " thread-indent "\"Re: [oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)\"\n") "<20190303173117.58da9e69@computer>" ("<20190303173117.58da9e69@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30242 invoked by uid 550); 3 Mar 2019 17:02:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27840 invoked from network); 3 Mar 2019 16:59:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=OcHGjpntf6jbDUX7iVyIvd4EacMijPxE4PpIPksHxk4=;
        b=Vjf7QexreE4vg7ZLdK0nzXErQIvrr474Wjp0QxPKhlGCuZxB2ehYxPIIdubXTlynz7
         GxKHU83WUtr5urDhfSrPLznw+1+/TceY3LGQD5BOAdU1o3o8UcsoqmM8udh27gQdS0jm
         KPZtHV9QCI69HCinrW0cvF9eaxLxblE+cpcoYuWuV3hd7pAvviQSjSizJYsKoSvVOeO+
         u7xa3+dXafFf0mIhtG2ZyMJIPq61HAFPM9OB4uffDSxFb0g65WYsHZL7J0k+vDirUmtA
         0WkHWjJlKC/OHX9WtzGWTUMY0Uv4aXU3bJQLQcCrZmER2pJREJ66ZYMuqs7LDE6I1/jK
         mWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=OcHGjpntf6jbDUX7iVyIvd4EacMijPxE4PpIPksHxk4=;
        b=s1+m2iQOXuchc0mB1a8vWdVNl9V3nvoDOxMvREErFm+vLBN85/LzRVgveL8PCunTYb
         eHF9cnn2bpjhLYxmIbKgMR6oDja36/rF6Yla5o/lGPisH1gVowXBoxxXpqPOuEyy+8a+
         NyfwGwc/2RBnCAxtyt34jXCgeah3AancUEE7dnjWAVHsQdcrKWBK76LS4Ic8uM249kFw
         77KMwJPJ/nZKlhA6tzp/mqv9XHxkL/JuMuvmp6Y1TeeER1Wde+hP0QeeIjsrRnhWFTWD
         xIP80U5sC8GJZT+8A8TGAm+QBFNtX9xELFQLC8p4HCULMeHYegMAMxqOxsQ5M3+tOCVW
         EBcg==
X-Gm-Message-State: APjAAAWvVRR7RzTdAZp9CJ5l/JsPf6kRl2GwSEjWfDjcoA3SRyic3Dnd
	jKZQu861Zy8cNVo7NH4AHNWzEDD7gRloKI/BH/fgChKO
X-Google-Smtp-Source: APXvYqxvaMsqt7uFAzTFWK25m55c+cwQGWxzYMwa5TaCvBwE6x5Ma9V0XM62ckobt21RCLV9hDuzBh7oYFaS0b+aii4=
X-Received: by 2002:a2e:780a:: with SMTP id t10mr7222829ljc.19.1551632339437;
 Sun, 03 Mar 2019 08:58:59 -0800 (PST)
MIME-Version: 1.0
References: <20190303173117.58da9e69@computer>
In-Reply-To: <20190303173117.58da9e69@computer>
Message-ID: <CAPyX2nfQGVziUEt2V-KF-zht5xoa0bPHFQ3nRFSj_-gs=07xCQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Mar 2019 16:58:48 +0000
From: Mark Steward <marksteward@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)
To: oss-security@lists.openwall.com

This fix isn't sufficient - there are URLs that browsers process that
don't have a host when passed through parse_url.


Mark

On Sun, Mar 3, 2019 at 4:32 PM Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>
> Hi,
>
> Via my personal Bug Bounty program on hackerone I got a report about an
> open redirect in a publicly accessible instance of Tiny Tiny RSS I have
> running on a subdomain.
>
> I'm aware that whether open redirects are vulnerabilities is debatable
> (which is also reflected in the discussion with tt-rss, but they fixed
> it nevertheless).
>
> PoC:
> https://[hostname]/public.php?return=3Dhttp%3a%2f%2fevil.com%2f&op=3Dlogi=
n&login=3Dpassword=3D&profile=3D0
>
> Report to tt-rss developers:
> https://discourse.tt-rss.org/t/open-redirect-via-public-php/2077
> Fix:
> https://git.tt-rss.org/fox/tt-rss/commit/c68ac04020d85a296c784de18f8def3f=
365f9f6a
>
> This was reported by Mariia Aleksandrova (zophi), I just forwarded the
> report to the tt-rss developers.
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
