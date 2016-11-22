X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1933" "Tuesday" "22" "November" "2016" "07:31:29" "-0500" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2XkOnZGGXwJTcNb2t2LbGFS4-vzKZ3COzBot2G32PEZ9Q@mail.gmail.com>" "59" "Re: [oss-security] CVE Request: gstreamer plugins" nil nil nil "11" "2016112212:31:29" "[oss-security] CVE Request: gstreamer plugins" (number mark "U       alex.gaynor@ Nov 22   59/1933  " thread-indent "\"Re: [oss-security] CVE Request: gstreamer plugins\"\n") "<20161119115932.1854beff@pc1>" ("<20161118163119.GQ11402@suse.de>" "<20161119115932.1854beff@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18252 invoked by uid 550); 22 Nov 2016 12:31:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18231 invoked from network); 22 Nov 2016 12:31:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=IfKLU/tAsSxrRK4BozBQ5sjJ1NmxU7yJnEviDKZD+0k=;
        b=eSxqG/4nWLa6H8fM26aqA4av1WgwjQvCQnY8HDv6I4ZSWbXUMbtk/K4t7yGGODxT5a
         iFMqvqrQF2vG6uglgm9tUcCzVsGhnG6/e+EW63k07f/EDNLQMuoFe0hGGVTex5GOPVr5
         xEXys0SNhV8nc6CYee58jOoEGaIiOLryoWWWs/ULO39bfN8wi2ZoygCnaSgRkkzFmVnc
         9uTjUwRSgrMFxQ8LUwzw+Nl/0+5gza98o1GTf9ZzMhOLlebq1uDh8hLFR3M6SNiX0vY7
         8dqy60/mw2j345Y0+0xaWmcxYrr0/u3Ox3J0tQBlP3rbKLg5pq6avvVrvxfC2p35gEXh
         KUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=IfKLU/tAsSxrRK4BozBQ5sjJ1NmxU7yJnEviDKZD+0k=;
        b=lsrKHHRG2J67cquBRhPuorL2qkOCEprszUUwwuKxADI71QkFV2kIYTIP7Piuyo668A
         mJrva/zT25T+F8eu31gaEyCtYzdcjBX4eycXuD1xZFhbjjxYN7HsvwcTOwdcRs38FVgd
         JC1QFrIh0liYe5CU6JadOaBsbLOmmDJ6Mzyjtee86eNKiGPkVPkt89Z46w/Nd1IDX7KQ
         jLB/09pS9RMZQm4DsON542Y9zRS2fxsGxsZGlKnwqzesVW0JWE1vD7z5Xo4Hf3VyJRSU
         34kT7nqAb8xSWgnAV3GMWCa6RHPWW0zEkzkeaEIjWtWForu+X7TJKdYCnZlM212EkAqW
         P9Gw==
X-Gm-Message-State: AKaTC02qHQvhQbeMMBcOjYSo6BjUF7xWFPu1RrlwA1RmXH9s57IVARQ/kiPCPsIvO4LQFsGudAjHTZh8EU5roQ==
X-Received: by 10.194.101.97 with SMTP id ff1mr16215873wjb.67.1479817889637;
 Tue, 22 Nov 2016 04:31:29 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161119115932.1854beff@pc1>
References: <20161118163119.GQ11402@suse.de> <20161119115932.1854beff@pc1>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 22 Nov 2016 07:31:29 -0500
Message-ID: <CAFRnB2XkOnZGGXwJTcNb2t2LbGFS4-vzKZ3COzBot2G32PEZ9Q@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=e89a8f83a761a5109b0541e2f3be
Subject: Re: [oss-security] CVE Request: gstreamer plugins

--e89a8f83a761a5109b0541e2f3be
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Another exploit chain here:
https://scarybeastsecurity.blogspot.de/2016/11/0day-exploit-advancing-explo=
itation.html

Alex

On Sat, Nov 19, 2016 at 5:59 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> Hi,
>
>
> On Fri, 18 Nov 2016 17:31:19 +0100
> Marcus Meissner <meissner@suse.de> wrote:
>
> > 1. Bufferoverflow in VMNC decoder in gstreamer plugins:
> >       https://scarybeastsecurity.blogspot.de/2016/11/0day-poc-
> risky-design-decisions-in.html
>
> I wanted to point out that while it's good the buffer overflow gets
> fixed, that's by far not the major issue here.
>
> This is a very problematic design decision with the functionality of
> tracker/GNOME that exposes all files on a system to who knows how many
> decoders of probably overall very low quality.
> Almost certainly there are countless other vulnerabilities of similar
> kind in all kinds of gstreamer codecs. (and I haven't checked, but I
> assume tracker also exposes other files to other equally problematic
> decoders)
>
> I think this is kinda a symptom of two goals clashing: We have projects
> like gstreamer that attempt to parse every file format ever seen in
> their are - which of course has some value, especially in terms of
> preserving digital culture. But on the other hand exposing this code to
> untrusted inputs is a security disaster.
>
> I'm wondering if there is any statement or reaction from either gnome
> or fedora on this.
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
>



--=20
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: D1B3 ADC0 E023 8CA6

--e89a8f83a761a5109b0541e2f3be--
