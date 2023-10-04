Received: (qmail 26188 invoked by uid 550); 4 Oct 2023 19:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26137 invoked from network); 4 Oct 2023 19:23:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696447374; x=1697052174; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8wbJEgAPFDIZMh81Ki1dy23UV4F9a/BdujltpKgrP1U=;
        b=RX2TmS/qoMCWOUOA7GOql/h8EqDertbNpVO0GRXgTUrd1ad/ydyRbuJN+4DUfwTGzE
         PCBBiWqR8uek/tHTO4FfC3HfzPsrDeWKNEKx9TiljUcdrQb5LRF3s5BZ1tUpvrk29XVr
         O+x1ZLjMe/Znk1j8+qCTGUaseoO8uEnJQevEzFsZCcK+VEzTVm2oL3DzAPraB0cRprUf
         fa8W44W/OYb6tCKyUWHfk/pLPgEzzMmk0oazbVUWtycgNadd1p6gogW64NEl87udCvkC
         H/VPAIV87p9DIuNToVjE7d/wkXyUhmeMNFmaBBNY84EVk9kHiA8j2qZaR9iixtX5MtP4
         zUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696447374; x=1697052174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8wbJEgAPFDIZMh81Ki1dy23UV4F9a/BdujltpKgrP1U=;
        b=RoFWdajLSoCJ0Q8R+cLE7Ndf0tpgIMvykLh7ANFDKu9NdDIKpbxUHR76jw6nG8sYel
         aIzLIyWg8BOSinJHbKA+EsBK2goEJbHIPxziRFuP/9VRKUUoTxh7sVmF9ks6CMkS2BC1
         QV+BFiosiNCq5uO2AME1YHt1KiStDqWm/Ce9PfXcww95JJ7Ra8Mf4qgaG2Wb3PQwchYl
         Mrle731IasfCkZH6NPa6HPhx1bh1L69I5gsHUHce1Az+Xr9zW7lddMzkrJLIauHzl5u+
         OO69cFryLNhq/fDphaWxZQzg5R2EDUaoWt+DJNM0NE7ITVO+eUzlBGy4DMZCvvim2keQ
         HlRg==
X-Gm-Message-State: AOJu0YwcvDCK3IirFFVZEoCIsZY27W9vJ86zGp+34BVMPtkd+YcWfiUU
	m8r10jq3rwn2SAViNXWTavY3Rfj/Ec9Yyg==
X-Google-Smtp-Source: AGHT+IF7oc9KfEpTxOq+m+UlgNen8YtDbfrvwVMY2O5F0Vz09vzFLleGlXm7w9ePUzNOqzRpHioOlg==
X-Received: by 2002:a17:906:23e2:b0:9ad:7d5c:3d4b with SMTP id j2-20020a17090623e200b009ad7d5c3d4bmr2608964ejg.35.1696447373793;
        Wed, 04 Oct 2023 12:22:53 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 4 Oct 2023 21:22:52 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>, zdi@trendmicro.com
Message-ID: <ZR27jCirFcyI7smg@eldamar.lan>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hi ZDI team,

On Fri, Sep 29, 2023 at 07:26:45PM +0000, zdi@trendmicro.com wrote:
> Hi,
> 
> The ZDI reached out multiple times to the developers regarding
> multiple bug reports with little progress to show for it. After our
> disclosure timeline was exceeded by many months, we notified the
> maintainer of our intent to publicly disclose these bugs, at which
> time we were told, "you do what you do." If these bugs have been
> appropriately addressed, we will update our advisories with a link
> to the security advisory, code check-in, or other public
> documentation closing the issue.

As there is still some confusion around the libspf2 related issue: can
you confirm or deny if the issue CVE-2023-42118 / ZDI-23-1472 is
covered by https://github.com/shevek/libspf2/pull/44 ?

Regards,
Salvatore
