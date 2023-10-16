Received: (qmail 21618 invoked by uid 550); 16 Oct 2023 19:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10143 invoked from network); 16 Oct 2023 18:53:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697482399; x=1698087199; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uiliysZq1Lv+dgnrITWOTyZJICvLdScBSVsnyiDlIxg=;
        b=YpYi4K6ndpANHevU+fkZWeKBj/P02cFe83oec4zP2WwrF7A6gXGUKQrZn9BOaNmOhr
         lamZZlAszSlXJjX+GZ6exf4jVM+X1GbJ79aikXA9rSWKRN+TlYA7gr1z8xnkiZvs0sW6
         0u45/xOk4leewJ0ecD3/FGxSkaJ4zx7vdtyPXTyNXqEpyEQ9kcGUK6p4rJvTKkmx76Or
         0FHI3cf6+Ok+fRgG0nqQYrvGj7sX3XsYSpWXUzyair9c0PPCcaAvT6NOL7QUpJ/rvaXo
         ioJJc8aQjcAy15z5Y0TtkuH9xcbx+KqWy9heY5O2/NS1kQXjNVoVzjFef9nN2vg5pP2d
         do6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697482399; x=1698087199;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uiliysZq1Lv+dgnrITWOTyZJICvLdScBSVsnyiDlIxg=;
        b=k/ILIc56GESXgVAc72uinzg7dKsIdSgUucy0HuvEnPSFRdeVTiYP6C9B2YgzMFTHxV
         +dizHbrpnuwR6NIS9PVuOvH5pkFmqAqp5NAmOir5S3xfgdy9xUYYFMDJhiAGWSIgu/rl
         lBmhzHinZMPUKOkM7ui2Ha4HAV72RpBzPnJXG96lx/jsepB1148BKWb5Q2R7PmcRnT3d
         EpM2FB4vG88nIM1NXWjIhY3byzwcW5hd/Zo0OopgcIJSVMtvGXxCyTu9J3kPboXd2LS+
         O5D7olKzm2ECGh65wo2ZUebaRCjOlDGh1QLlLw6VA7OSb+E0cbWNntRnQws4//6kXeny
         OwfQ==
X-Gm-Message-State: AOJu0YxLfvx3PCdQkaNIMaf8YIO+G/T7Krkv0atOPutFEu8L63f2uWeL
	6PMgkkJ8wSgGaRjvizwu8ALtdZHlxBVgucRso3si4n91jscyOjEL
X-Google-Smtp-Source: AGHT+IEReuO5wxSBzgB3eWeXQ01a9CghbN3Ajqk/uePjUAThpzHpDdnHbMQFZRMeW9QT/mhb9wynRIkFKcPIfr/ROPo=
X-Received: by 2002:ad4:5cce:0:b0:630:7d0:56f4 with SMTP id
 iu14-20020ad45cce000000b0063007d056f4mr357876qvb.49.1697482399415; Mon, 16
 Oct 2023 11:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
 <2023101605-outshoot-undying-fb27@gregkh> <ZS19nIeWpxgqfWim@itl-email>
In-Reply-To: <ZS19nIeWpxgqfWim@itl-email>
From: Tianyu Chen <billchenchina2001@gmail.com>
Date: Tue, 17 Oct 2023 02:53:07 +0800
Message-ID: <CAG-20GTRbwEtcQkG035OEQrZ-afZ-t8wCRCa3ZDu+JKbhmQ2-Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006e02950607d9ebac"
Subject: Re: [oss-security] linux-distros membership application of openEuler

--0000000000006e02950607d9ebac
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 17, 2023, 02:29 Demi Marie Obenour <demi@invisiblethingslab.com>
wrote:

> To be clear: if openEuler was granted membership, this would ensure that
> I did not post on distros@ ever again, unless a trusted entity (such as
> the Linux Foundation) made a public, broadly applicable, and easily
> interpretable (by non-lawyers) statement stating that it would be okay
> for me to make such a post.  And maybe not even then.
>
So why do you believe posting to distros@ is completely lawful? You can't
promise all subscribers are outside of DPRK, China, Russia, Iran.

>

--0000000000006e02950607d9ebac--
