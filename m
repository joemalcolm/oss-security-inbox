X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["543" "Friday" "21" "August" "2015" "12:58:11" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxiSZjcDo8h948aqDYC=A=z9CU6-NZY_=Uf-cb7NBC3nNg@mail.gmail.com>" "20" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015082102:58:11" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        mik@miknet.n Aug 21   20/543   " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<55C9A996.5090705@redhat.com>" ("<55BB6E77.1070007@redhat.com>" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" "<55C9A996.5090705@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15661 invoked by uid 550); 21 Aug 2015 02:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15640 invoked from network); 21 Aug 2015 02:58:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=z7FrnadE4iLZ/xU8vbKh/DWnzJbJ2A4lJfxYl/iu+rQ=;
        b=Z0lF6pKyCsXnf73qBSW5uxc5S3yjCJvxe395pd35LL2yGXgom1GY0rHYtYGniP/0lc
         /mA+kHvu6jL5vE9xm9wrBsly8zJGnKkZu5KAhZzF2jiMcIhyPkXARqUi73pOG13N0MWd
         ZLtCHk3iJhbHthcmYlDwAh2Bw+LVQvpsoTeU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=z7FrnadE4iLZ/xU8vbKh/DWnzJbJ2A4lJfxYl/iu+rQ=;
        b=mp+FMOHSjQj7wA9NOW03Qi94yQELrHpgV/nBU8yb9twnVUqSRbCn18D9JvcdFRCMjV
         vIXAO5dxbBF1zZVex4ggscVfvuIDq7AAJ0XJocKNcn8ucABhZXZA3RVyUSbveCHcAYW+
         CDAlXs0uo2YtLHt+Y9JzN4AGS75UIRPX0XllDS4j4k5ZXa9yMedUrr2FLUD8GtOzRgKg
         PnZSNcOs50ggOnzfxRuXpKfzqgc4h41CQofWFWyQabNQUBTuvCsr9IfXgLhWIa/B0IIs
         ohyFM+6l4n/BbvXl5LoTUn0jPLXFaWcDI/1mjHLfTr6mZTbltd4nNdwVqc7qwdoHv3u4
         cvmQ==
X-Gm-Message-State: ALoCoQl4/GMjq87B6DP6XDrzLOsIzmVpBZX93vcNT8tPBNlFTdQRnUSiOtyBrxiegIySTjDZvaIn
X-Received: by 10.50.17.103 with SMTP id n7mr985120igd.95.1440125920759; Thu,
 20 Aug 2015 19:58:40 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.129.34]
In-Reply-To: <55C9A996.5090705@redhat.com>
References: <55BB6E77.1070007@redhat.com> <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
 <55C9A996.5090705@redhat.com>
Message-ID: <CACYkhxiSZjcDo8h948aqDYC=A=z9CU6-NZY_=Uf-cb7NBC3nNg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e011616d0f06c2b051dc9716f
Date: Fri, 21 Aug 2015 12:58:11 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

--089e011616d0f06c2b051dc9716f
Content-Type: text/plain; charset=UTF-8

Hi,

On 11 August 2015 at 17:51, Adam Maris <amaris@redhat.com> wrote:

> The weakest method it provides uses no encryption at all, just HMAC-SHA1
> with 80 bit authentication tag:
>
> http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g94d0056e812802ac2920aa474bc5b59b.html
>
>
That's only for SRTP packets - the PRNG itself seems not obviously broken
(again - unless it's used by multiple threads).

Regards,
  Michael

--089e011616d0f06c2b051dc9716f--
