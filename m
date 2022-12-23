Received: (qmail 28143 invoked by uid 550); 23 Dec 2022 16:08:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26430 invoked from network); 23 Dec 2022 15:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=laJorxLEiwR5fOaX/4aHm4WcOW+QUdVYG6UsMcguc5k=;
        b=bhWXc9m3iZWl2z4RyuBql8j3Pc00ddPZtqeD+sVtPpXWfufDnVN6naeY8QmW1BWCmh
         SD3yuEQMTTsS0muByItuQKhF4bGN3YrzVShQmSSIrZQcIFENuBfwUZeKWiNheQs353Sk
         3aR0bHD0zbA8SQ6/+BqZAaLEACS9VWyQNj8jd7jhH9Ad42+gj0nJ1Phf3VLKMPDbNERG
         4EVEQuxZXCQ+xawKrDnfQcM0NFw/s2nzg/apQFp9zMhLQ57ojC3F8KXHj5DZdjkD5FEM
         eBp7fqYz+xKza0qIrHc8qgheIK/NcGev5K8VoA6JJT/KVf2D1XpV1xKQwQhotNt8NUQY
         0fAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=laJorxLEiwR5fOaX/4aHm4WcOW+QUdVYG6UsMcguc5k=;
        b=3+iUppEnCE+QqMrh88+yQId1Zt3O7Ey/NPhmMHH/Seow4dfOtl17DrgNb/tqMz576S
         2sbPLwJHSkxBLM5CN/FoateEJhfeWYnTlQmIFRV1AQZTB4O3v5MOFrlkFbxBVzsO9Bpr
         IRElXlKu6EPIiTFacLED9F4N1nIl1Qw5V0COob//BMj+gJ0UlHXmRHujgKuPlsZoflrC
         wiVFKSb6Gq+yVkp3LgAFgI6sMLcrc9h7tiTmOMapXRvRImlGAriviQw9f27OO3XnDHyA
         pCyBZekTJVATNQi2Wo+CRM73ChNmI6oRZV+EfuhqpZoyHHxGKZ96+av4LTuypqqhhXKU
         WoPQ==
X-Gm-Message-State: AFqh2kra6QS9GgbClfSB7MzcmPSPa9zwf7Kf2AdhITZaC6xzlx+aEz2h
	U12L/QzOrTXf5GljCmb4moHP54o/TeHgjEmZFhQiOM6EXso=
X-Google-Smtp-Source: AMrXdXsdbP+mMhr40plzY+cwj0tBHMnxua8fnHaU6E0+iIkQdOWhfRYgBST68JoCR3y1hqhqAAw3G5vXKi7XTJdq+Kw=
X-Received: by 2002:a17:90a:6806:b0:213:1944:dde2 with SMTP id
 p6-20020a17090a680600b002131944dde2mr1047095pjj.193.1671808752131; Fri, 23
 Dec 2022 07:19:12 -0800 (PST)
MIME-Version: 1.0
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org> <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de> <Y6Vppxpq+PHTb/Qe@sol.localdomain>
In-Reply-To: <Y6Vppxpq+PHTb/Qe@sol.localdomain>
From: Jeffrey Walton <noloader@gmail.com>
Date: Fri, 23 Dec 2022 10:19:00 -0500
Message-ID: <CAH8yC8nSE6BOU_JBTiYWWKXx2LeYUazTDN1tzzvcE5mg6WJf6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 8:22 AM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> >
> > tldr: I requested 5 CVEs for the new ZDI issues Josh and Jan referenced.
> >
> > long form:
> >
> > Nice surprise 1 day before Christmas.
>
> Note that these bugs were already fixed in upstream and all affected Long Term
> Support (LTS) kernels months ago.  So this is really only a "surprise" for
> people who choose to use known buggy and insecure kernels that don't follow LTS.

Comes to mind: https://thenewstack.io/design-system-can-update-greg-kroah-hartman-linux-security/

> Anyway, these sorts of bugs are totally predictable in a complex, new network
> filesystem server (ksmbd).  Personally I recommend not using ksmbd.

Jeff
