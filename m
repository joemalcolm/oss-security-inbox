Received: (qmail 10057 invoked by uid 550); 3 Apr 2024 15:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14322 invoked from network); 3 Apr 2024 15:12:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712157148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HjtTGsCH6y/8RcjIm64Vwcsv6AjCIRdmoaJ62xvuACo=;
	b=PN181tFSGjwMLImlXTiYj9vQZA5JuAIsRyVAbpwE3WdTnQYqR4keKGIPeZXHFkr2q3ybeJ
	5+Kgnf83T3rP451GQZt3gHz+ooHHPmrzyg5kEIidihBi2B14b/bhpN4oC41JL45MPOxJ0t
	v5bnG4wOiQuK2WQf0tJbGQsLk7yv2Iw=
X-MC-Unique: Qvxu-baoO4me7KOAlGftEg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712157145; x=1712761945;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K7Rn3GOmYSx1v3PjHaNh92bHnH6PNJCRlqxBpLiJY+U=;
        b=LF0qGs3qu6REn3Nn+pqtoBRACYA3VY/JGRxrBvhvYfiD7IoU2cFQxCTJ1TvV9AQWGZ
         E0YdbOy30RG2PoM2ZHCrKqNM0sIjrqlty2P89DsxS4vmcV0dVsdLDS3ezFHgplF9T++i
         vjVN8lK6KWrjlgpYB1VBf3fQOvauHz9n8S72YeKKiuhzKhrtUHVmH3r6+JqIzsU9lEpR
         RTmTEWSsiD9RWIYRa+WRETOJk+P5Pcbop1YOjhMBveQmeA8o7PDCfnG6MZjWglP2eO5Q
         ESFsR7CRUY+Lc7iBQi3G5f7oevcE5za3eC0qI9BK9+2Hk2dSOcCnl0bOp1+I1CPFUKFa
         kqIA==
X-Gm-Message-State: AOJu0YwVV9d394XapBJmGWOeG/+ydZNIVhvNcQHF0zZcOF92NR+zjBqN
	6yU69yefYwlQ7TLAlOqzPdgN9j68l5wJAhYrAUhzbazKTc6Y6I7ChIJrGvnaS1JRySB7j86K6aj
	jQ7dnXwQaU14iH0V5+z4Cjy1NityWlS4kyB+ci9KmP00JuXFYHsbHxR1cbTwXYajHhP1QynGrnM
	tvLG/s2uYg5BPuFulvJ13a1yMiphAxupzOgUeQZZEDhjo2Hm1J4ryRmaiiBFiG6Muq+W9FST2p
X-Received: by 2002:a4a:620e:0:b0:5a5:6058:583e with SMTP id x14-20020a4a620e000000b005a56058583emr62555ooc.1.1712157145317;
        Wed, 03 Apr 2024 08:12:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHO3U+O4vGGaTMhAPABfrttFRxcwOGl2qke4y/QUUUyiRYKAtDtcgWVeEuQTeEx3z2QA5FmPaqMcw==
X-Received: by 2002:a4a:620e:0:b0:5a5:6058:583e with SMTP id x14-20020a4a620e000000b005a56058583emr62551ooc.1.1712157144903;
        Wed, 03 Apr 2024 08:12:24 -0700 (PDT)
Date: Wed, 3 Apr 2024 08:12:24 -0700 (PDT)
From: midawson <midawson@redhat.com>
To: <oss-security@lists.openwall.com>
Message-Id: <9f41b1da-6faa-4364-aed8-60ff5eaf7c06n@googlegroups.com>
In-Reply-To: <7e6a9e00-1caf-4523-b969-fdb410b240f7n@googlegroups.com>
References: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com>
 <7e6a9e00-1caf-4523-b969-fdb410b240f7n@googlegroups.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_55038_290294610.1712157144653"
Subject: [oss-security] Fwd: Node.js security update for all active release lines

------=_Part_55038_290294610.1712157144653
Content-Type: multipart/alternative; 
	boundary="----=_Part_55039_2101566674.1712157144653"

------=_Part_55039_2101566674.1712157144653
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Forwarded message ---------
From: midawson <midawson@redhat.com>
Date: Wednesday, April 3, 2024 at 11:07:48=E2=80=AFAM UTC-4
Subject: Re: Node.js security update for all active release lines
To: nodejs-sec <nodejs-sec@googlegroups.com>


The planned security releases are now available. You can read more about=20
the details in -=20
https://nodejs.org/en/blog/vulnerability/april-2024-security-releases/

On Tuesday, April 2, 2024 at 9:46:29=E2=80=AFAM UTC-4 Rafael Gonzaga wrote:

The Node.js project will release new versions of all supported release=20
lines on or shortly after Wednesday April 3rd 2024. For more information=20
see:  https://nodejs.org/en/blog/vulnerability/april-2024-security-releases


------=_Part_55039_2101566674.1712157144653
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Forwarded message ---------<b=
r />From: <span dir=3D"auto">midawson &lt;midawson@redhat.com&gt;</span><br=
 />Date: Wednesday, April 3, 2024 at 11:07:48=E2=80=AFAM UTC-4<br />Subject=
: Re: Node.js security update for all active release lines<br />To: <span d=
ir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;</span><br /></di=
v><br /><br />The planned security releases are now available. You can read=
 more about the details in -=C2=A0<a href=3D"https://nodejs.org/en/blog/vul=
nerability/april-2024-security-releases/" target=3D"_blank" rel=3D"nofollow=
">https://nodejs.org/en/blog/vulnerability/april-2024-security-releases/</a=
><br /><br /><div><div dir=3D"auto">On Tuesday, April 2, 2024 at 9:46:29=E2=
=80=AFAM UTC-4 Rafael Gonzaga wrote:<br /></div><blockquote style=3D"margin=
: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-lef=
t: 1ex;"><div role=3D"region" aria-labelledby=3D"c62" style=3D"margin: 12px=
 0px; overflow: auto; padding-right: 20px;"><span role=3D"listitem" aria-ex=
panded=3D"true" style=3D"border-bottom: none; padding-top: 8px; padding-lef=
t: 2px;"><div style=3D"outline: none;"><div style=3D"display: flex;"><div a=
ria-hidden=3D"true" style=3D"padding: 16px;"><div><span role=3D"listitem" a=
ria-expanded=3D"true" style=3D"border-bottom: none; padding-top: 8px; paddi=
ng-left: 2px;"><div style=3D"outline: none;"><div style=3D"display: flex;">=
<div aria-hidden=3D"true" style=3D"padding: 16px;"><div>The Node.js project=
 will release new versions of all supported release lines on or shortly aft=
er Wednesday April 3rd 2024. For more information see:=C2=A0=C2=A0<a href=
=3D"https://nodejs.org/en/blog/vulnerability/april-2024-security-releases" =
rel=3D"nofollow" target=3D"_blank">https://nodejs.org/en/blog/vulnerability=
/april-2024-security-releases</a></div></div></div></div></span></div></div=
></div></div></span></div></blockquote></div></div>

------=_Part_55039_2101566674.1712157144653--

------=_Part_55038_290294610.1712157144653--

