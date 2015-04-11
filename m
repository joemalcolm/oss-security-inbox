X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["291" "Saturday" "11" "April" "2015" "12:06:57" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>" "11" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041102:06:57" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mik@miknet.n Apr 11   11/291   " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<20150410092652.GA27909@blema.cz>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3536 invoked by uid 550); 11 Apr 2015 02:07:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3515 invoked from network); 11 Apr 2015 02:07:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=yat5etESWHTN+8TLeB8NEDLi6Ny/pgM/9frH4Q3wBk4=;
        b=GfV3YaXMVNsfEshIq6uBHNpy8LE/nJhyneXDy913444fhDLzUGbbIhMtBkw0Zlupyp
         lj1yb3GYoarrKDj6uQlfWrkv9FNao+/wXaUL6YvSWAIVsMsC8oO4P8pHoq8306G47jSE
         VG8bVTrux5b3GhhiohfXCd/rIRs+e7y4r6pC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=yat5etESWHTN+8TLeB8NEDLi6Ny/pgM/9frH4Q3wBk4=;
        b=EnOfY4BOggfvFPp5EzkBbJwuOGxFbrdRRYi0/rAJ+jjUgetDp9AvmogWyrDzClgwVh
         4TXyYsZ7+YyO2tLccuw7X3f4Bp1giBKDACZfnJHhBFBe6j22QxgvY3SVNkQwla/Yg1NP
         vfjv7HBfwj8nmJWH0Hy65iTG+gdU2IlXha5pIKFIHzTxrUO0u/T8Pfap642rH/sKA5il
         s2gI2B44dKFP0+snhVmWjfmFNMbb+TEhAEbQJUcT7D+o9HO2rVs7quKz+ULRekW1rxrs
         ivg/KzpTcz6P9YaVUgHC/UYHmH80rW/5f4J9InwUtaB1SiyflMSqgKpYDDxTMXyv1S+d
         039g==
X-Gm-Message-State: ALoCoQn74+f/33HRP9FY0AbXciHK4jx5Jmjbwd6U+OHZZQdFJQbwq8pVtJHeOQqnSlyzkNs845Y/
X-Received: by 10.107.17.29 with SMTP id z29mr6954483ioi.69.1428718038173;
 Fri, 10 Apr 2015 19:07:18 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <20150410092652.GA27909@blema.cz>
References: <540E7816.90001@redhat.com> <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com> <20150410092652.GA27909@blema.cz>
Message-ID: <CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Sat, 11 Apr 2015 12:06:57 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: Vitezslav Cizek <civ@blema.cz>

Hi,

On 10 April 2015 at 19:26, Vitezslav Cizek <civ@blema.cz> wrote:

> Was there any further progress with the rsync upstream?
> Are they planning to address this issue or is there no interest?

No further progress with upstream, it's possible that rsync is abandoned.

Regards,
  Michael
