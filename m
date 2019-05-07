X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3804" "Wednesday" "8" "May" "2019" "00:44:42" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "97" nil "^Date:" nil nil "5" nil nil (number mark "        sungjungk@gm May  8   97/3804  " thread-indent "\"[oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11886 invoked by uid 550); 7 May 2019 15:49:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7880 invoked from network); 7 May 2019 15:45:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=KYOf0kWMsUkdDd6RFcgVIIyj15D8j1DK75w+r0TuMOk=;
        b=K2kOdOIJJy0eLQ0CEUwdvBqSlZ/i94TKT2l1HDYFzhkjxK+06qvRjdmmIm/tvf3A8Z
         Rwe9XaGe35yZIqjQqbBwmZ5vW+Y8qTGJglWVBNOH2dXEYTqphrBW7/ZCvk4pOQeO41mn
         jjoLCogSmq9QF/m3sIrw0myUGd1Io7tjKvpu8HTmm8FJvoc52eVNCq7hRa0kZrii8pAv
         TpItk4VwZQasJDocA9no7xodlKjPw8AKTnEwea1Nl7JRqXEnes9BegBHDgGlj52mh+EA
         O1cT+OuA/uWmL2GGzz0w4ZICi20t1akBhr8mDkIAu+aOwgktsXSUUl3KuIijuabYu26R
         EjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=KYOf0kWMsUkdDd6RFcgVIIyj15D8j1DK75w+r0TuMOk=;
        b=KicIGSkQoqCQQEgII3eWKlVNepzXNSZllIGyAkrmrahhsZ6ncvp/h0EcLOnj8XDLhR
         tfuG8qeFDcF0xltDXSpdkIO/qfiHPvcRhnvbGcCmbWIG6uDVlJJ79SaERqo5wWU49ao0
         PZxw/mOgs4bg3lV1rrqzAWb9SFmxaRDSnZdee/BU8Tu+rYlskRYnVvGkHvDXo44oYDhm
         xlnOC4WGJZP/AudLw0CF/n1/6rUNI+dUBSwQvlyHFzgx3kvOZ+lyUDUxnqmL5VJP0tMI
         Wga1k2q03HZScBJ2qn3W6QuhD5LwiQmBEN3K8aKbh7qdmOU7YBxsJ1ff87JWN72QVl1L
         MK6g==
X-Gm-Message-State: APjAAAVUzDxZ8b7pzKWMEUWE1lbI5p+xPtchSdqoEiu6w1EJdEuGngp5
	9o0fzLW8JAR/U29d9yH8oIZL8S7Q7dv7ljrYb/62AyvP
X-Google-Smtp-Source: APXvYqyeRka22URomFhjjJd9MDYwUpPEn56fK/ZV41IBO4lzvG0t+R1eRc6rwokTfL+Gp9PkrigwcC7fWR6fXTuw028=
X-Received: by 2002:a50:ab1d:: with SMTP id s29mr33872498edc.56.1557243893845;
 Tue, 07 May 2019 08:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
In-Reply-To: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
Message-ID: <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001f147f05884e19a9"
Date: Wed, 8 May 2019 00:44:42 +0900
From: Seong-Joong Kim <sungjungk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: fprintd: found storing user fingerprints without encryption
To: oss-security@lists.openwall.com

--0000000000001f147f05884e19a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please check the following links.

- @Upstream: https://gitlab.freedesktop.org/libfprint/fprintd/issues/16

- @Ubuntu: https://bugs.launchpad.net/ubuntu/+source/fprintd/+bug/1822590

- @Fedora: https://bugzilla.redhat.com/show_bug.cgi?id=3D1693357

- @Debian: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D926749

- @openSUSE: https://build.opensuse.org/request/show/701312


2019=EB=85=84 4=EC=9B=94 23=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 9:41, S=
eong-Joong Kim <sungjungk@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Dear all,
>
> I would like to report a vulnerability of 'fprintd'.
>
> 'fprintd' does not encrypt sensitive information before storage.
> *CWE-311: Missing Encryption of Sensitive Data*
>
> *Description:*
> =E2=80=98fprintd=E2=80=99 saves fingerprint template and without any encr=
yption, to a file
> on the host.
> This could allow a process to access the stored fingerprint and then
> create natural-looking original fingerprint image.
> The stolen template can be replayed to the fingerprint authentication to
> gain unauthorized access.
> FYI, most commercial software products for fingerprint authentication
> provide fingerprint data (template) encryption.
>
> *Additional information:*
> It was found that 'fprintd' saves fingerprint template and without any
> encryption, to a file on the host.
> This could allow a process to access the stored fingerprint.
> In 'fprintd', MINDTCT feature extractor from the NIST Biometric Image
> Software (NBIS) extracts fingerprint minutiae that are compliant to ANSI
> INCITS 378-2004 and ISO/IEC 197942-2.
> The generated template file can be easily converted to ISO/IEC 19794-2
> format since it is a minor modification of the earlier ANSI-INCITS 378-20=
04.
> Currently, it is well known threat model that the standard fingerprint
> template can be reverted to original fingerprint image.
> [1-5] are presented to create sophisticated and natural-looking
> fingerprints only from the numerical template data format as defined in
> standard format.
> They also successfully evaluated these approaches against a number of
> undisclosed state-of-the-art algorithms and the NBIS.
>
> *Resolve the vulnerability:*
> As per upstream, the only way to safeguard the fingerprint data is to run
> with SELinux, AppArmor or another LSM enabled one.
> (link:
> https://gitlab.freedesktop.org/libfprint/fprintd/issues/16#note_141207)
> Currently, Fedora and Red Hat Enterprise Linux have a safeguard the
> fingerprint data since they uses SELinux by default while Ubuntu and Debi=
an
> did not.
>
> *Final remark:*
> Once fingerprint has been leaked, victims are leaked for the rest of life
> since it lasts for a life.
> It is necessary to prepare for the problem.
>
> [1] R. Cappelli et al., =E2=80=9CFingerprint Image Reconstruction from St=
andard
> Templates=E2=80=9D, IEEE Trans. on Pattern Analysis and Machine Intellige=
nce,
> vol.29, no.9, pp.1489-1503, 2007.
> [2] A. Ross et al., =E2=80=9CFrom template to image: Reconstructing finge=
rprints
> from minutiae points=E2=80=9D, IEEE Trans on Pattern Analysis and Machine
> Intelligence, vol.29, no.4, pp.544-560, 2007.
> [3] R. Cappelli et al., =E2=80=9CCan Fingerprints be reconstructed from I=
SO
> Templates?=E2=80=9D, IEEE ICARCV 2006.
> [4] J. Feng et al., =E2=80=9CFingerprint Reconstruction: From Minutiae to=
 Phase=E2=80=9D,
> IEEE Trans on Pattern Analysis and Machine Intelligence, vol.33, no.2,
> pp.209-223, 2011.
> [5] A. Rozsa et al., "Genetic Algorithm Attack on Minutiae-Based
> Fingerprint Authentication and Protected Template Fingerprint Systems",
> CVPR 2015.
>
> Sincerely,
> Seong-Joong Kim
>
>

--0000000000001f147f05884e19a9--
