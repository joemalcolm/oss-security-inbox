X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["404" "Wednesday" "27" "January" "2021" "21:08:48" "+0530" "Siddhesh Poyarekar" "siddhesh.poyarekar@gmail.com" "<CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>" "11" "Re: [oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil "1" "2021012715:38:48" "[oss-security] glibc iconv crash with ISO-2022-JP-3" (number mark "U       siddhesh.poy Jan 27   11/404   " thread-indent "\"Re: [oss-security] glibc iconv crash with ISO-2022-JP-3\"\n") "<rus04o$q3o$1@ciao.gmane.io>" ("<rus04o$q3o$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13523 invoked by uid 550); 27 Jan 2021 15:58:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32435 invoked from network); 27 Jan 2021 15:39:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=01MXKWrVwitcjN1dwhknD4c0QN2vjVan091JRI8FAK4=;
        b=NUiJR4Zf3h5vqFoL8jWJ/brbEsu6XTXFsqIPEj2Da5D3hz1YQcsT4GyvX3sfKIQW+V
         Bktz49bz3MaTf4ecxfDE7T/mg0vVYuLElfmHxY7cIcyUVkQSp50QiOYa8ulBqOEqBkAX
         /zleRvESTa/pywkkTIcT3fFEwM5QPtRxzaQenJdHI4gbBmCDVey07f4CggHVIzJnO1BA
         xWFRKEwgPlHhbzi4Ki5dXgH+6pGqV6+Bu7xiqhfIykDaq/sreWoDBA1+U8mOw0qlQwhg
         NVprtzef8BNjIiwhTZ1UGhvE+0mJSvW2nzs6oPwIfknvmoBCjxR9qjpkh0Yh1WxgGqzx
         enXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=01MXKWrVwitcjN1dwhknD4c0QN2vjVan091JRI8FAK4=;
        b=Aif00ymWOzZtQNjqsMJ3hZjofpBJIGJaVE8dE+lt/OE/rDvFiljvbmU39hcwE3mnCX
         RIDA0z4L56yuawtJavnVE/4o/Y5bEogCGWF7BHQZx46HeFnu0BG5EaybICbQwVKWEzCw
         2iJnp3cP74qd6VILeerqv+q9m+P1NQRuMxrfu0CSzVAKQoF9K/Zj5WjP3WCVtRsRqnD/
         SHlKk1ckL9jywgy/XfWVWpCK/4EJLRX9ZnI+uJZPr/jKWC5mi1bkl0ZIH25D7RSiVFNz
         Vb/EXwsm6hkVNMogFnzVtozwler01tVGO1BtKwAXGCUhtKxs8GjKmyZPIQ7Qh4Kg1hSx
         7Miw==
X-Gm-Message-State: AOAM531gQ+fzEG1fQ5eUhqkdUmROxp8t8N7ySKX+6adtKCmMwCKAYNcA
	M593zg68oi6VcSqDUZFQSPByKiGukaOjBnRr+itjbv9q
X-Google-Smtp-Source: ABdhPJxR+WgKu1+WGS/oDjQoIpbrhPyOeQWsSh/j4tPK+HuHeovE+ZJGSKG1q+nG1F8UZOhAgsjjNMLOBQkIzSuFDhc=
X-Received: by 2002:ac2:5683:: with SMTP id 3mr5157887lfr.332.1611761941108;
 Wed, 27 Jan 2021 07:39:01 -0800 (PST)
MIME-Version: 1.0
References: <rus04o$q3o$1@ciao.gmane.io>
In-Reply-To: <rus04o$q3o$1@ciao.gmane.io>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Wed, 27 Jan 2021 21:08:48 +0530
Message-ID: <CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] glibc iconv crash with ISO-2022-JP-3

On Wed, 27 Jan 2021 at 21:03, Tavis Ormandy <taviso@gmail.com> wrote:
> The impact is just that you can't open your mail client, because it
> crashes as soon as it sees the subject.
>
> Upstream bug: https://sourceware.org/bugzilla/show_bug.cgi?id=27256
> Patch: https://sourceware.org/pipermail/libc-alpha/2021-January/122058.html

FYI, I have filed a CVE request for this with Mitre.

Thanks,
Siddhesh
