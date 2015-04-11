X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["559" "Saturday" "11" "April" "2015" "12:04:58" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>" "16" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041102:04:58" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mik@miknet.n Apr 11   16/559   " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<20150410201902.GC16910@zoho.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>" "<20150410201902.GC16910@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26517 invoked by uid 550); 11 Apr 2015 02:05:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26499 invoked from network); 11 Apr 2015 02:05:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=6Ygo1L335ENSw6nroWlVPJTeg+uLnzfgUEsZ4r5P+qA=;
        b=G5cbAWq06gl32pq+6TuMnMEdKPAlm8ghkwTh//ZVVw5v8Q1+WsMeupvz0jN106Go2J
         AdpHxtwaAfhfeuSAAG5PzSjCZEzbQjD4y+iXMB4S5uqSWNT2bt6eGr+KDN1srZAQoMFn
         FDf6xm5b712zc/WvhkRkd0Wletc4IfKHCLn9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=6Ygo1L335ENSw6nroWlVPJTeg+uLnzfgUEsZ4r5P+qA=;
        b=MU734ZjsnYS36zO684z07SLfo7BanIvLY65v79GUotYLVGAbBi17hec6Dxysxw64gw
         TEyAU2efbVwqGryLWZumT9x8wwRiUsFwoATvtEc58HmOhwTcNZ9LftkLhCYUbfXjeYTi
         Yxa7u6PjNRkLHE74LhSwAA7X7CmXlghHAx9vIKlny4qVRvzMR1NImD88xD+dCpePmJYL
         MTkpBxwDNv9hIPzIdMXIw55Nbrnys+WM3HAJsyIx9iFUShJWShrTJqCC24jmxKyZbvLE
         p/IQYaAmgyohv37tPAoOzphxhywPKblxNwYaoMY+vsTecTx/WNeIuwIKlq12WUMMhxxr
         z6tw==
X-Gm-Message-State: ALoCoQntgT77FNNjT6vBJfHjeayAZsuHMeVn68iKABI0dzQnB87Uif+dwH+pq1Hv8ptPL0+mFXM/
X-Received: by 10.107.18.170 with SMTP id 42mr7136807ios.38.1428717918734;
 Fri, 10 Apr 2015 19:05:18 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <20150410201902.GC16910@zoho.com>
References: <540E7816.90001@redhat.com> <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
 <20150410092652.GA27909@blema.cz> <20150410201902.GC16910@zoho.com>
Message-ID: <CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Sat, 11 Apr 2015 12:04:58 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: mancha <mancha1@zoho.com>

On 11 April 2015 at 06:19, mancha <mancha1@zoho.com> wrote:
>> * Dne Thursday 18. September 2014, 04:30:22 [CEST] Michael Samuel napsal:
>> > Ok, for rsync you can download colliding blocks (and a brief description) here:
>> >
>> > https://github.com/therealmik/rsync-collision

> The last time this was discussed it was suggested to the reporter that a
> fully working PoC be posted so the impact (or lack thereof) to rsync
> might be evaluated.
>
> Unless I missed it, this hasn't happened.

I reported it upstream with full working PoC

Regards,
  Michael
