X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2734" "Sunday" "17" "December" "2017" "12:02:21" "-0500" "Brian Fox" "brianf@sonatype.com" "<CAOhT-pPfT4NTz1op0aQ=2KOf071zu8DsC2ae05t-LLSH37-mWg@mail.gmail.com>" "74" "Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" nil nil nil "12" "2017121717:02:21" "[oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" (number mark "U       brianf@sonat Dec 17   74/2734  " thread-indent "\"Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption\"\n") "<20171217151745.53c23a7b@elisabeth>" ("<CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>" "<20171217151745.53c23a7b@elisabeth>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15548 invoked by uid 550); 17 Dec 2017 17:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9515 invoked from network); 17 Dec 2017 17:02:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sonatype.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=38un4wVO7znobo/sM01G4oy0pZu6uCp3CuktF6TqMuU=;
        b=F/u/HUDO8+VK0qi2qeiNqVc78OpFPK+pOzHf6WJBIBBTqgOlBWgQwkfYEzDybeMHJE
         CzrnBrNioqKKAdBDbndKrUyqGMNCZkrKN1TCOG6PSWI/uUBSC6UVtAgyv4tWZ/ZipylZ
         HclQUVF08yHrYIuInaw+koDMIa9IS5/IY49H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=38un4wVO7znobo/sM01G4oy0pZu6uCp3CuktF6TqMuU=;
        b=ox9fMqaAXss6sPYR6nZfgrClMiK8P8ctTivsgBdccNBgPF9u23NNjU6FrSvWeP2tXv
         Z6vmaEtEYQDSDTcqRJDwbVb7eHpzn2PyQl24Nt8h0cPrAqmKOE/Kt2OE2VPA+AI4Vk/k
         +qDRositXjrmF7eNGDSdtlGtCgR208Y7WGtSTMuO75tIQSQ4SfLxrlz2gPy+CVd1gTLs
         DDEssPfe2BeTk9MGyFpV3pfTHtdAAEpWv+1VSeuCRP7PVs/n7tl36VGVWy62jwRd3oKZ
         pdLpQjxX+pxlrP9qn6UUQ2ofI6Eu9wrJ1QPWOSg9vOsdp20W+bnH/ZSRcplZ+8GO7LvG
         Skyg==
X-Gm-Message-State: AKGB3mJ5uLqeCt78PJ0OcglhE4PyL5+Ownuetg8yOTjLKCBF5z/FTZ/6
	zALUAkMBBhWdkujxACMM0pHXGzNRC6mlSvORIS2SwQ==
X-Google-Smtp-Source: ACJfBot2GlDZ5NPO3PEAO+HioYpAl+i2p7PC8ARapoOtf+3D578aQIMlSLuOBUHlN992YrRMZngTQoyTRo+bUhAU5RE=
X-Received: by 10.36.240.75 with SMTP id p11mr16337742iti.104.1513530162295;
 Sun, 17 Dec 2017 09:02:42 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171217151745.53c23a7b@elisabeth>
References: <CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>
 <20171217151745.53c23a7b@elisabeth>
From: Brian Fox <brianf@sonatype.com>
Date: Sun, 17 Dec 2017 12:02:21 -0500
Message-ID: <CAOhT-pPfT4NTz1op0aQ=2KOf071zu8DsC2ae05t-LLSH37-mWg@mail.gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Raphael Geissert <atomo64@gmail.com>, oss-security@lists.openwall.com, 
	Security <security@sonatype.com>
Content-Type: multipart/alternative; boundary="f403045fb174ae50c905608c3353"
Subject: Re: [oss-security] Sonatype Nexus Repository Manager
 2.x weak password encryption

--f403045fb174ae50c905608c3353
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Stefano, Thanks for the notification. Let us do an investigation and then
we'll follow up with next steps.

On Sun, Dec 17, 2017 at 9:17 AM, Stefano Brivio <sbrivio@redhat.com> wrote:

> On Sun, 17 Dec 2017 13:53:47 +0100
> Raphael Geissert <atomo64@gmail.com> wrote:
>
> > Hi,
> >
> > The Nexus Repository Manager in at least version 2.14.5 [0] (latest of
> > the 2.x series), stores the LDAP bind password in an on-disk file
> > using PBE (bouncy castle's implementation of PBEWithSHAAnd128BitRC4).
> >
> > This is all great except for:
> > - it using only 23 iterations[1]
> > - it using a hard-coded and weak password[2]
> >
> > Therefore offering as much protection as a rot13 would.
> >
> > Given that the same PasswordHelper containing the weak password is
> > present elsewhere in the code, it is very likely that this weak crypto
> > issue affects other passwords stored by Nexus:
> >
> > - components/nexus-core/src/main/java/org/sonatype/nexus/
> configuration/PasswordHelper.java[3]
> > - components/nexus-security/src/main/java/org/sonatype/
> security/configuration/source/PasswordHelper.java[4]
> >
> > It appears that this code is no longer used by the 3.x series.
> >
> > FWIW, the on-file password is:
> >
> > base64(SALT_SIZE || SALT || PBE_OUTPUT )
> >
> > SALT_SIZE always being 8 (hard-coded).
> >
> > N.b. I'll be filing a CVE request in a moment.
> > N.b. I have not contacted sonatype. I couldn't find an email address.
>
> The page at https://www.sonatype.com/contactus says:
>
>         1. Send urgent or sensitive reports to security@sonatype.com.
>         2. Use our public key to keep your message safe.
>         3. Provide us with a secure way to respond.
>         4. We=E2=80=99ll get back to you as soon as we can. Usually withi=
n 24
> hours.
>
> > [0] https://help.sonatype.com/display/NXRM2/2017+Release+Notes
> > [1] https://github.com/sonatype/nexus-public/blob/nexus-2.x/
> components/nexus-ldap-common/src/main/java/org/sonatype/
> security/ldap/upgrade/cipher/DefaultPlexusCipher.java#L64
> > [2] https://github.com/sonatype/nexus-public/blob/nexus-2.x/
> components/nexus-ldap-common/src/main/java/org/sonatype/
> security/ldap/realms/persist/DefaultPasswordHelper.java
> > [3] https://github.com/sonatype/nexus-public/blob/nexus-2.x/
> components/nexus-core/src/main/java/org/sonatype/nexus/
> configuration/PasswordHelper.java
> > [4] https://github.com/sonatype/nexus-public/blob/nexus-2.x/
> components/nexus-security/src/main/java/org/sonatype/
> security/configuration/source/PasswordHelper.java
> >
> > Cheers,
>
> --
> Stefano
>

--f403045fb174ae50c905608c3353--
