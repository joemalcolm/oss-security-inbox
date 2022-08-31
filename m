Received: (qmail 26123 invoked by uid 550); 31 Aug 2022 06:25:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26101 invoked from network); 31 Aug 2022 06:25:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc;
        bh=1YHeSbsZHzsFhNB/qyVCSHPluaWFA7vplyHtuBWJ7sc=;
        b=fCscLC7VL3IOhuGqc5a8X3fkKneZpAfBLYAfCgUgSuzyvWWzL6xwCu7L1caE1p9emL
         m5hC2uYgVMLeHhAtrmZZ0h/RfRA/U1U+y+c1JTL9USsIDKjjgiZSosXwEEaTDmPVhsT0
         YDCfEuaESPLXrHXxoUsUl/dwjmR4bm9SCf6W6aQOEgUO3qwdwzAZ7bv7Zcf/Rn9keZ/t
         vOVkIZ/C8M4WMfaKOeB9gPBOtk1Iq668Da3z70W2cw9nzA/AjyW4fEu6wIDoJY+dtCHa
         KQ77l1R82a6v5SHE0oAp4C6/Aj3845XW9FYW0TPPJ6fgsl0jd0hUKdFIK7j6bQPrwAXm
         zN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc;
        bh=1YHeSbsZHzsFhNB/qyVCSHPluaWFA7vplyHtuBWJ7sc=;
        b=mb2I3P6OoUTbsbKe38xTAIyJAaRI0OVMWOf8zRmhOconHow4SPv0M/h93/fUmaiW74
         k74ty2iZo18t19tHpKMO+CBdpc3J/6fUqyX27f284GvoipNgLJyu50mwjxDeFS8P5vB1
         lCAp+34UoBnTDFfzW4uA0KEWgsmq52FZu6P5f8f+DICM57RUrC/M4YE2EHPeAwd15uvv
         aaVyfXsFmktsQBbcQnr5xl3NGX91NKE8TjeBFwaQMMTIaU3BdBusSTF7VAsfgekzEycV
         O/XR9jv9eWsRUSocR2VFTnKeWg3wNQAhm+3542XPK9/2eIrnaIEjV4FXkE0Qdin8Ijsh
         xfcA==
X-Gm-Message-State: ACgBeo0cSac1p2328IGTPOoq7+YPWmDvnANMhkHbbbHXqtRFyAZhbYb4
	k6b65tEc/z/jrmt9Kq2UfF1aTaDDBRw1Mg==
X-Google-Smtp-Source: AA6agR6g6X2bbtsk56yXvwnQONAJzLADitkNwf/o5QSPcX/mwN4pIvalWULJCJxMgjlJ36SIsJtK0Q==
X-Received: by 2002:a5d:4452:0:b0:226:c784:10d5 with SMTP id x18-20020a5d4452000000b00226c78410d5mr11051286wrr.382.1661927106839;
        Tue, 30 Aug 2022 23:25:06 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 31 Aug 2022 08:25:04 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Yw7+wJ9jUjJA9+Wy@lorien.valinor.li>
References: <CAF6bG8ckH-W67J95eLHRnFH71n3PgtacBNk7aQdmJuyq8VRzMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF6bG8ckH-W67J95eLHRnFH71n3PgtacBNk7aQdmJuyq8VRzMA@mail.gmail.com>
Subject: Re: [oss-security] Freeciv < 2.6.7, freeciv-3.0 < 3.0.3, Modpack
 Installer buffer overflow

Hi,

On Fri, Aug 05, 2022 at 02:17:51AM +0300, Marko Lindqvist wrote:
>  Just released freeciv-2.6.7 & freeciv-3.0.3 fix buffer overflow in
> Modpack Installer utility's handling of the modpack URL. Specially
> crafted URLs, without any '/' -characters would result in an
> underflowing length (unsigned)(-1) string copy, i.e., all of the
> NULL-terminated string given as "URL" would get written beyond the
> buffer reserved for it.
> 
>  Freeciv source tarballs are available from
> https://www.freeciv.org/download.html for current 3.0, and from
> https://www.freeciv.org/wiki/Old_downloads for 2.6.
> 
>  In case you can't make full version update at the moment, bug tracker
> ticket has also a patch for this single issue attached:
> https://osdn.net/projects/freeciv/ticket/45299

FTR, this has CVE-2022-39047 assigned:

https://www.cve.org/CVERecord?id=CVE-2022-39047

Regards,
Salvatore
