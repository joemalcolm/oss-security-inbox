X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["549" "Monday" "15" "August" "2016" "16:37:31" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>" "23" "Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Cc:" nil nil "8" "2016081508:37:31" "[oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        marco.gra@gm Aug 15   23/549   " thread-indent "\"Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<20160815083632.GA1172@kroah.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" "<20160815075453.GE6359@kroah.com>" "<CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>" "<20160815083632.GA1172@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19943 invoked by uid 550); 15 Aug 2016 08:37:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19896 invoked from network); 15 Aug 2016 08:37:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XLEhdDJARq7ZeTss3vq2gNnyNakw+3lhYzbE7jlVzOM=;
        b=KNaUAwrWrc7CxtWlECQaAKHDBQw1t+hYBwARG3r/C5m7p0yd/56aeLwD1HMLidnbb6
         Rjo9baQwTROE+yM+YLkr1NbMAGepZR0QZPS2w7aOhvOuzAHKkZDKX7Zy42u2lf3AFWwm
         IVQcFqYq4cuYrny0bIg4Rnmua3Vk3IdBPzR9LE0oP+bjo9FrXcMCTEqNlN3QRmeYmkcD
         nmHB7GzBelqWLnS8nkg5XcTL3b58n8Dd4pSDNhnZoD9kqaXX/nCZePdt9tbp7PNGUSsU
         hL1rwtKlkZxWvdePrebt4RZ1UlVGu3kWf9fKb6DV7OW21ckyIGQTJkQI9oSkv1inuhmC
         EIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XLEhdDJARq7ZeTss3vq2gNnyNakw+3lhYzbE7jlVzOM=;
        b=g/43F9fMtnpKgh/MXKYaEmC/z/GYcMtB/6MZZUJnKAxgi0s9oMVkR6iHUoj+ViXW4c
         Ymnr2M1Y8+gxhYM25vmAxGvmqLai3sbc/DAlnoIjcjYf6yW8Wm5w6JziT+GRn5F7a2BO
         3lDp4khW6Nuv98ISl4Wv4NVW6YeXl9X83YPNCg9CA4m85UJlSoHgAeiAQaOSGEog8krc
         JAzvxSlQTPRubJcZkaczS3inpgEtWgGYxZq6SosWjgvns2ze2wlKjb47USLH18Xo5Ggv
         zljQO0CPk38pjpXRkNKVHTGsxPhEvpH1s0/hDbjlV952042WKCH44q/gRI5hs7I1pB0T
         d0AQ==
X-Gm-Message-State: AEkoouuxBaK46SQBzI8H727dTMu5zvXDR5GKNt3ImKqsYvfdFBUgB9oX5AmsxjLRKw2zIVOfzOYYuzLwyhbwwA==
X-Received: by 10.36.118.193 with SMTP id z184mr9663604itb.9.1471250252423;
 Mon, 15 Aug 2016 01:37:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160815083632.GA1172@kroah.com>
References: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
 <20160815075453.GE6359@kroah.com> <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
 <20160815083632.GA1172@kroah.com>
Message-ID: <CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1144d828abf021053a1824ca
Cc: cve-assign@mitre.org
Date: Mon, 15 Aug 2016 16:37:31 +0800
From: Marco Grassi <marco.gra@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on
 4.8-rc1 / master
To: oss-security@lists.openwall.com

--001a1144d828abf021053a1824ca
Content-Type: text/plain; charset=UTF-8

yes please

On Mon, Aug 15, 2016 at 4:36 PM, Greg KH <greg@kroah.com> wrote:

> On Mon, Aug 15, 2016 at 04:10:57PM +0800, Marco Grassi wrote:
> > I just tried several times, but there is some filter that doesn't get
> along
> > well with the content or with my gmail.
> >
> > The message keeps not getting delivered.
>
> You can't send html email to the vger.kernel.org lists.  If you want, I
> can forward this on.
>
> thanks,
>
> greg k-h
>

--001a1144d828abf021053a1824ca--
