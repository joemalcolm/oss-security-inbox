X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["900" "Monday" "29" "October" "2018" "08:35:17" "+0900" "=?UTF-8?B?6Z2i5ZKM5q+F?=" "ka-omo@sios.com" "<CAEKGoSFCgf+FYfsegq2Z3TDQMT3TgG94Ma_ARL99co8Gx0O0yA@mail.gmail.com>" "40" "Re: [oss-security] Squid Proxy multiple vulnerabilities" "^Cc:" nil nil "10" "2018102823:35:17" "[oss-security] Squid Proxy multiple vulnerabilities" (number mark "        ka-omo@sios. Oct 29   40/900   " thread-indent "\"Re: [oss-security] Squid Proxy multiple vulnerabilities\"\n") "<20181028182153.156c7434@computer>" ("<ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz>" "<20181028182153.156c7434@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23773 invoked by uid 550); 29 Oct 2018 09:43:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9290 invoked from network); 28 Oct 2018 23:35:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sios-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Vr5w9WU5dLqAs6AlmAZktfbcF6+GtXa/QzYNQy5vey0=;
        b=QlOvHZ80XCywyJA1zsbGkx7FqLDaSjIuwROTyTAXGOLifcw0XpWz+O+mM4jS5vTNzZ
         8nPs5FPsWpsYjUx8XbFtodd8ZnRxhl9AT0LE/5HHdztx4JCUj6Hu5ZZZfb5RU0RUFmY/
         /q+JhBCgX1H10WoPzx/sskz7eoTsgIYgrQjlJLTlbuS8OkIfA3Y39tu6XnqyxLkL6zmg
         UWQMAzNfNLpSvvA/DhfMuUsPWsBkxSuYWDOYrtJf2PGA+83WvbeqINxFYCVEmzyMUAxZ
         Zm5wKG3i1WsEUqnz6jn1liYmNLNN3WkccFUltn78NC1twCVjLhRpshuKTk2YiF8Z/nGv
         XjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Vr5w9WU5dLqAs6AlmAZktfbcF6+GtXa/QzYNQy5vey0=;
        b=lqzr7nVIMCIyd+9q6vuycN398nxJxGODVRPT/qZTHXKauKBXJdkBK2h/0u9IpJccag
         LOJbDMTvi33DRSArI9B8qpew21nEdh+uxLi/Gm7IJdLHTQ+ELl0W0RdhPkHTEHLRpFLS
         utPkX7K+kO6fQ5AAAy3C2CqxLLqso0GyGq0t7Tw15AOR7xE7n9dOeQQBgw4GigvtcYWz
         JL199jjRRafNP7k/9q4+fIwsbg9EOQbRgYn0yrebr7BMycrAYN8j7acfHcUadds9b2An
         Unxlx5UULc659zNVaYAgEp0y0KC6t+nI51B7Z+C4SnKbZ0S1YT/SSnTcGNwUH8s9mNfG
         dauQ==
X-Gm-Message-State: AGRZ1gKuR7Ow1Tkt3evWGUiOx7WvPR50/5EZIx5n4V/aylXD99jj1d3b
	mDDfbYjMLJ4F2UqWwKEPbNzEzwQAjdaI6bZXAOq0Jd6bTzM=
X-Google-Smtp-Source: AJdET5c8oH/6IYZy1GV7TSIWngNu/Ee1JsfqGAHsFQEmGnhQO99R7/L8wS3juGTumoUcYxRDuaHfxonCPwi6h4PhUFM=
X-Received: by 2002:a24:c445:: with SMTP id v66-v6mr8651099itf.21.1540769729888;
 Sun, 28 Oct 2018 16:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz> <20181028182153.156c7434@computer>
In-Reply-To: <20181028182153.156c7434@computer>
Message-ID: <CAEKGoSFCgf+FYfsegq2Z3TDQMT3TgG94Ma_ARL99co8Gx0O0yA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: squid3@treenet.co.nz
Date: Mon, 29 Oct 2018 08:35:17 +0900
From: =?UTF-8?B?6Z2i5ZKM5q+F?= <ka-omo@sios.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid Proxy multiple vulnerabilities
To: oss-security@lists.openwall.com

Hi,

It looks like links are working fine now.

http://www.squid-cache.org/Advisories/SQUID-2018_4.txt
http://www.squid-cache.org/Advisories/SQUID-2018_5.txt

OMO
2018=E5=B9=B410=E6=9C=8829=E6=97=A5(=E6=9C=88) 2:22 Hanno B=C3=B6ck <hanno@=
hboeck.de>:
>
> On Mon, 29 Oct 2018 05:13:40 +1300
> Amos Jeffries <squid3@treenet.co.nz> wrote:
>
> > <http://www.squid-cache.org/Advisories/SQUID-2018_4.txt>
>
> That gives a 404.
>
> Also there's another yet unfixed vulnerability: The webpage and the
> downloads are not using HTTPS, which makes them vulnerable to
> man-in-the-middle attacks ;-)
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42



--=20
Kazuki Omo: ka-omo@sios.com

OSS&Security Evangelist
Senior Architect
Vice President & Deputy Group Manager
Research and Development Dept. 2
CISSP #366942
Tel: +819026581386
