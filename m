X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Friday" "20" "January" "2017" "17:04:22" "+0800" "idl3r" "idler1984@gmail.com" "<000701d272fc$329c12e0$97d438a0$@gmail.com>" "18" "RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read" nil nil nil "1" "2017012009:04:22" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" (number mark "U       idler1984@gm Jan 20   18/478   " thread-indent "\"RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read\"\n") "<20170120082438.GA28326@kroah.com>" ("<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>" "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>" "<20170119143700.GA5132@kroah.com>" "<0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>" "<20170120082438.GA28326@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1632 invoked by uid 550); 20 Jan 2017 10:15:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32434 invoked from network); 20 Jan 2017 09:04:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=fgi7Wa00vNLt0myOn7qwr7viybxxdIm3Hfu9dzni4gw=;
        b=oTwKidZfHI9qSkeiYVWyhI2OzSVHcbPkw3kqi4FZEX1HZ8tnpcHxoGWJs3HvQOxCaj
         DeHLX2y/uNRFRxzecOGimQSSVPY6JodkdmRcjclsBpeUDYLcVR8VY6gyp0at5t1OeOpk
         BDiDm7WrWLMtiyFQidCGxTxEsYtiNcS0tPVbnEzkqeZ6Yo5wua/75/r2HaOgSSUjP8eM
         tgyMyhfdBSRhulQqm3GWYjykQ3umN+4MKc3X6bHS/ddBO0slbeOtanTA7ZDt6l3WtmVk
         HKVq7rYPCj6ybXtuXu1b7SlRbhGQmhCy15jEdy36q9ZIGU26Dq0mA+hsO5JUEU65m9na
         x8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=fgi7Wa00vNLt0myOn7qwr7viybxxdIm3Hfu9dzni4gw=;
        b=uJnTYRA2oiM+ry6vcMAe14WoW8Ett8eK0+HMv3Jp1XCGQmtzfOXuApijsoS7wvXJHq
         W1mp81gQCqlBQuzabKoWW9zOBsURt9BJOiCjEypJLjkywTrfH5E6bq5xgvwpe3OM7wBZ
         JmAtysTRNtC8KCoUrI+LvEsgXwzoFnsno1AX+hoiNS6KEYo0RZmnCkl2QgNxp5UAsRGT
         CcLCauApCmMvn5Lv/eXzhFVXNpcqPI+ztRfN38ZUJYs2BHxKAAdmuoNSr8OREa/bbZVF
         +PFGECK6xDgnd1on5jy4Gp5Z+IHUiVe8C0IyiUQUYYbZpMsTT/lVB59aeBbcn3pYOkgg
         cc0g==
X-Gm-Message-State: AIkVDXLSuGtDMPEsibYnTBZuF/OiZFRPN4NMO7H/MFuNcv07R8q3TxCrCnzinJ87Y1UGrw==
X-Received: by 10.99.147.81 with SMTP id w17mr15593887pgm.111.1484903069790;
        Fri, 20 Jan 2017 01:04:29 -0800 (PST)
From: "idl3r" <idler1984@gmail.com>
To: <oss-security@lists.openwall.com>
Cc: "'Anarcheuz Fritz'" <anarcheuz@gmail.com>
References: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com> <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com> <20170119143700.GA5132@kroah.com> <0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com> <20170120082438.GA28326@kroah.com>
In-Reply-To: <20170120082438.GA28326@kroah.com>
Date: Fri, 20 Jan 2017 17:04:22 +0800
Message-ID: <000701d272fc$329c12e0$97d438a0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIp6CLm9uCR12d1apbojhB5sppgTwHmPVGhAjfDo4ECk9yuXgFIuEaCoFJSuYA=
Content-Language: en-us
Subject: RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

> Ah, so this isn't upstream in the main kernel tree, thanks for letting me
know,
> that's what I was most concerned about.
> 
> Hopefully Samsung figures a way to push this change out to all of their
> users... :)

You are welcome :) Hope they can learn faster from other vendors.

> It's "user controlled" through the drm interface?  Or something else?

The affected mali driver is not using drm interface yet, still the
traditional vendor defined interface.

Thanks,
James


