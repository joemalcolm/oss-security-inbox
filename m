Received: (qmail 1824 invoked by uid 550); 2 Jun 2026 15:46:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13377 invoked from network); 2 Jun 2026 15:38:35 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780414705; cv=none;
        d=google.com; s=arc-20240605;
        b=kHL1ZDgxCIH6ymrjgjUq72Q2S9zCTI8ht6UKo95rMuUvRHehfAJWTa2dGTzm5T4S+6
         u2CyVcPQtuFBUU1Yq4CNLWJHW3S0tfmYHIMc85eMg7WJHCnjJtQGf4bFSfCFVyHhXykw
         wPjfJurrxQsJMeVJD6/MzPex5tSvpRoYr57qJ5u3L/8cMHGRUjZjbJsGZhJFC8+c0USC
         fOluFJloTOfBs+4jC8/08SSjA0tvFzj/Xp0sn/Sp8/EQH4fLxDyND7DUiwAW93bxfTNd
         z/rdL64AFYXChVpqULiVVAHflt03vXAxTf8goHckYTVlMMmkOusyTYKPyzNMMio6LCfB
         QxSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=xI23XOk68LQu09GzMSBiwk1C3tVlkBFzYVWbGyQRFlM=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=SKXJCFDKoi05Ftk0TFzO2+OqW8ccTWjENzcOvwR6/MFAPdV8pwblk6ib/dzwW3vHQP
         DXqeVWDKyEZy/Fv7CXbM6+4vppAWbsl3VdSAZyofSjbYYlDLfiRDJgNWvoOw5AXCOOqE
         tI50ikSlLz6mcca6umafNdxIsvtKymW1789DRV3j1vq/yTnmOjWtscQvDBLESGlFQNf2
         MSQbLh07kSLXE8LQnY4e9zaHLk2MQAS/ZIewoUrAtMOU+KxlGgtfiYJDpWn1yozJSa+X
         1GK2Fv+CfNlR4rqTBupISGSG7nXtoJV0G5L2ugyI2wObPMdK1FrVkfj18j2ytLmblkLL
         +tkg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780414705; x=1781019505; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xI23XOk68LQu09GzMSBiwk1C3tVlkBFzYVWbGyQRFlM=;
        b=mxWo9XicfSCwh9Yehc8YvO2O8EmOGddz5+CulsHA0Sy6ijFezz/+qIeIiDBbUrFLkB
         oImY4NG6uGh7uDrNg1JmsTsKHOoNtndgaco3DkRh6plcnWlXc1HUQnS6lE7wkmpuoMMQ
         Jq4ho7tMNxqmjH/m1ekZmf/Q4wFBIKR4mRyCaYTJThEvMe9U9hHE+C15E6rinmfQYvi5
         UXwBtY1eZJCVZYcpYFOOpBZFf0r623/c+tVOoU4txJNgAiKN6NyOJ+3tiMw7onqMYAts
         fCFk1C9ylMZ6nTUA3LF0IbEwkRBqVXJT33Zt0kUz3CF2ft6YT/mdpSEJ7kUsnhcBoysE
         kQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780414705; x=1781019505;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xI23XOk68LQu09GzMSBiwk1C3tVlkBFzYVWbGyQRFlM=;
        b=YD9bfg2AgAEfapp2EJwqZTJ2T5idM5ZmK66DzDKiehJvwJ+QeE+E8bvvwhkZ4Fw8qh
         Hct0AJo04ZO9I08DRX718eAd4rBfWT/+C5r+c2gGYYmEiWsXwob9xiNxtFO8YdSbFm6o
         LNjTkzB9lZiLq6ZWN3llOb/6q1mleeq6XfqWdKDeAV+skpZL1cIqX/R9k5zk1H2monnD
         Qe34c2IGmoVGZ0xn9IVrcV1Uv5t8P13oEBZ1ZyzReHa2SY9r5sU0cCWdqR3upKu1sBpz
         2go5y1187Re94yhaFnn2brnmbpvvtIkiK4Yx2KejzhRbLykRptCLmHeBok0VMxUGXshy
         bU7g==
X-Gm-Message-State: AOJu0YxYUSpL3Sj/w0doaGrEhFrsOTUe5edi2HorRclPgiaapWbt6ZzA
	0ROrt+2/V3MJ4PLazpXBCR7xvGhPf0sf0s1SdJE4l6SXr9YSF9E68jkAFb70B+m/uoeHJjkZk/L
	8KIGKU45GMM8FlpKmYF/Aeyb8uPau5SQEz0uQ0n1WBGEY
X-Gm-Gg: Acq92OGsxiEnHUYjaqZGx6VN6SvtIQAaS07svPyL0THvu1+tqbu2IoyTnLxYx0rnOLn
	9iBckn4wRGUQNwLgzVkwPxm+albXYQtfEE1iyDtwPZpNxUe2eyA5TksLR1TSY+f/Ng7pQhJt/LH
	jHlZue3iZMv43T6dE2deA3k41m8FBM9blRJeA+g9iYY1GFs3OeoRjXotnQt70blgD0/GA0ya5RO
	aZsffBC9s88pPtMuX0jDYwHsw/wq8KyL0KP0LWf5gunk4CosbO8bNg8fMcqVq+KT49y93VfUVYL
	KAd53m9Pe5jSHJrdVPvGQerMAp1sNE81zK9hgqvp6DL9EJxW0Vk=
X-Received: by 2002:a05:6808:23c4:b0:484:c50c:6441 with SMTP id
 5614622812f47-4865747e24emr39309b6e.11.1780414705220; Tue, 02 Jun 2026
 08:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
 <ah62-ZU9c_cEa8f0@symphytum.spacehopper.org> <C9D46D56-8664-45BF-991A-D5226C84B79C@lightwave.net.ru>
In-Reply-To: <C9D46D56-8664-45BF-991A-D5226C84B79C@lightwave.net.ru>
From: Bakabaka_9 <qilunuobakabaka9@gmail.com>
Date: Tue, 2 Jun 2026 23:38:14 +0800
X-Gm-Features: AVHnY4K0HmEOyh-rMaQzJPEXb4mHEKgZEd7erP5Ef-qj3pK2ttPme5Oid0Nc-1c
Message-ID: <CA+W5nyiXr38ho1umTR5R29Wunrzk-0b+yHrsQgL=qH2a4JoK9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000ec28c0653471aa7"
Subject: Re: [oss-security] BIRD/BIRD2: stack buffer overflow in BGP AS_PATH
 mask matching, CVE pending

--0000000000000ec28c0653471aa7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stuart,

Fair point. I should have worded that more precisely.

I personally reproduced the issue on BIRD 2.16.2. I have not independently
tested every later release.

The reason I wrote that no fixed version is currently available is that
upstream told me on 2026-05-24 that they currently do not plan to fix the
issue, and I have been watching the public BIRD Git commit history since
then.
As of the disclosure, I had not seen any commit that looked like a fix for
the
AS_PATH mask matching stack buffer issue.

So the more accurate wording is:

- tested affected: BIRD 2.16.2
- possibly affected: other BIRD 2.x versions with the same AS_PATH mask
  matching implementation
- fixed version: no public fixed version known to me

If there is a fix commit or release that I missed, please point me to it and
I will retest/update accordingly.

Best,
Bakabaka_9

Dan Yefihmov <dan@lightwave.net.ru> =E4=BA=8E 2026=E5=B9=B46=E6=9C=882=E6=
=97=A5=E5=91=A8=E4=BA=8C 23:30=E5=86=99=E9=81=93=EF=BC=9A

> On June 2, 2026 1:56:57 PM GMT+03:00, Stuart Henderson <
> stu@spacehopper.org> wrote:
> >On 2026/06/02 10:07, Bakabaka_9 wrote:
> >> Tested affected:
> >>
> >> - BIRD 2.16.2
> >>
> >> Possibly affected:
> >>
> >> - Other BIRD 2.x versions using the same AS_PATH mask matching
> >>   implementation.
> >>
> >> Not affected:
> >>
> >> - Unknown.
> >>
> >> Fixed version
> >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>
> >> No fixed version is available at the time of this disclosure.
> >
> >If you've only tried one version from April 2025, how can you can say
> >with certainty that it's not been fixed since then?
> >
> Did you really read the report carefully? It's explicitly written there
> that on May 24 the maintainers clearly written they don't currently plan =
to
> fix it!
>
>
> Sincerely Yours, Dan.
>

--0000000000000ec28c0653471aa7--
