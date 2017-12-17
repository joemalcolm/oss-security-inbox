X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2213" "Sunday" "17" "December" "2017" "16:12:55" "-0500" "Brian Fox" "brianf@sonatype.com" "<CAOhT-pNuDgsC2a7V=MLSpe_2P46c0ZjM3aDYg7QvuzPFKE55yg@mail.gmail.com>" "70" "[oss-security] Re: [security] Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" nil nil nil "12" "2017121721:12:55" "[oss-security] Re: [security] Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" (number mark "U       brianf@sonat Dec 17   70/2213  " thread-indent "\"[oss-security] Re: [security] Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption\"\n") "<CAA7hUgFm+YU3XT7xaOEohZTqn-e16N_LQUtfkggMkXdbuezi+w@mail.gmail.com>" ("<CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>" "<20171217151745.53c23a7b@elisabeth>" "<CAA7hUgFm+YU3XT7xaOEohZTqn-e16N_LQUtfkggMkXdbuezi+w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18208 invoked by uid 550); 17 Dec 2017 21:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17890 invoked from network); 17 Dec 2017 21:13:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sonatype.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PS3IbH7uuQ2sjFemFj7Rf/zG3dN88woUl0lgI0fhwds=;
        b=P1nSh3ehwzWk9904tLmugn9aQ1zm6pfgGUsQm4cA4AM8lqEypM1IUREeVdOUVt6pt+
         AHojB+6P2HHdCGLjKpjpiOnNvxdt2Y7mf2Kyfo0UNZjVnzHlJsqU1IWx1Nw/o4QaRu8K
         DeIDqueLdVJw4fHKhZAo/7B3B6e70FlNVH0L8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PS3IbH7uuQ2sjFemFj7Rf/zG3dN88woUl0lgI0fhwds=;
        b=kVO/wD16/3A1+G2n6ZptV7Thi/tHijUL0cFBOh0r4CesxCcqm2xOh+Lcmao9Os4iRk
         JH2jHsvkk3jfQMW8BFf+TIzEf9+XzKptPt3u3eY7Zjf7UyUyb/AlrjmzuXU66UR7pwY9
         cgj9oJ92/2i+rizH0Lk0e5AV72vAASSCeBAKZyQXUKEdzafLvvzvqp4SIEzXWCOaUcd9
         sft8CRJ6zNG0TRcp+a/RDSFEkVLAY0CxVVKAEhxMwDJIVaF54jzHg1ge8+5oh9JxCOvz
         EP1CERFEGSWmK2vxBlqKYjAOgPRi6n/+MeDFs8u3lole3QNwXxjZmdIE10plpT4Qx+xu
         63oA==
X-Gm-Message-State: AKGB3mKqyaXVSPjjdd2oSwsaxuGjbNv/pswA/eQTIQjCgnI9EFY+9yqB
	VL0I7RdNS7gRk9ubSzhlvqaDIveS1U3jCox8y7s4jw==
X-Google-Smtp-Source: ACJfBosq9VSzrgR2KRbH3uivTEdDW6CFtEHIvNHZNUyQYLk3HwrpSFPYsqqDb2iORAruLRwFZGSe/xMzAbbJT5AOnqw=
X-Received: by 10.36.37.2 with SMTP id g2mr16657727itg.107.1513545196313; Sun,
 17 Dec 2017 13:13:16 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAA7hUgFm+YU3XT7xaOEohZTqn-e16N_LQUtfkggMkXdbuezi+w@mail.gmail.com>
References: <CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>
 <20171217151745.53c23a7b@elisabeth> <CAA7hUgFm+YU3XT7xaOEohZTqn-e16N_LQUtfkggMkXdbuezi+w@mail.gmail.com>
From: Brian Fox <brianf@sonatype.com>
Date: Sun, 17 Dec 2017 16:12:55 -0500
Message-ID: <CAOhT-pNuDgsC2a7V=MLSpe_2P46c0ZjM3aDYg7QvuzPFKE55yg@mail.gmail.com>
To: Raphael Geissert <atomo64@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, 
	Open Source Security <oss-security@lists.openwall.com>, Security <security@sonatype.com>
Content-Type: multipart/alternative; boundary="001a1143d1fcc73a9f05608fb355"
Subject: [oss-security] Re: [security] Re: [oss-security] Sonatype Nexus Repository Manager
 2.x weak password encryption

--001a1143d1fcc73a9f05608fb355
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't think this is very kosher to go and file a public ticket before
even contacting us.

On Sun, Dec 17, 2017 at 3:03 PM, Raphael Geissert <atomo64@gmail.com> wrote:

> Hi,
>
> On Sunday, 17 December 2017 15:17:45 CET Stefano Brivio wrote:
> > On Sun, 17 Dec 2017 13:53:47 +0100
> >
> > Raphael Geissert <atomo64@gmail.com> wrote:
> > > Hi,
> > >
> > > The Nexus Repository Manager in at least version 2.14.5 [0] (latest of
> > > the 2.x series), stores the LDAP bind password in an on-disk file
> > > using PBE (bouncy castle's implementation of PBEWithSHAAnd128BitRC4).
> > >
> > > This is all great except for:
> > > - it using only 23 iterations[1]
> > > - it using a hard-coded and weak password[2]
> > >
> > > Therefore offering as much protection as a rot13 would.
> > >
> > > Given that the same PasswordHelper containing the weak password is
> > > present elsewhere in the code, it is very likely that this weak crypto
> > > issue affects other passwords stored by Nexus:
> > >
> > > -
> > > components/nexus-core/src/main/java/org/sonatype/nexus/
> configuration/Pass
> > > wordHelper.java[3] -
> > > components/nexus-security/src/main/java/org/sonatype/
> security/configurati
> > > on/source/PasswordHelper.java[4]
> > >
> > > It appears that this code is no longer used by the 3.x series.
> > >
> > > FWIW, the on-file password is:
> > >
> > > base64(SALT_SIZE || SALT || PBE_OUTPUT )
> > >
> > > SALT_SIZE always being 8 (hard-coded).
> > >
> > > N.b. I'll be filing a CVE request in a moment.
>
> This is now CVE-2017-17717.
>
> > > N.b. I have not contacted sonatype. I couldn't find an email address.
> >
> > The page at https://www.sonatype.com/contactus says:
> >
> > 1. Send urgent or sensitive reports to security@sonatype.com.
> > 2. Use our public key to keep your message safe.
> > 3. Provide us with a secure way to respond.
> > 4. We=E2=80=99ll get back to you as soon as we can. Usually within 24 h=
ours.
>
> Oh, I somehow missed it. Thanks for the pointer and for copying it to
> sonatype.
>
> Cheers,
> --
> Raphael Geissert
>

--001a1143d1fcc73a9f05608fb355--
