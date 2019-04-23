X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3137" "Tuesday" "23" "April" "2019" "09:41:02" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" "<CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>" "76" "[oss-security] fprintd: found storing user fingerprints without encryption" nil nil nil "4" "2019042300:41:02" "[oss-security] fprintd: found storing user fingerprints without encryption" (number mark "U       sungjungk@gm Apr 23   76/3137  " thread-indent "\"[oss-security] fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15413 invoked by uid 550); 23 Apr 2019 09:50:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31769 invoked from network); 23 Apr 2019 00:41:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OjrNTPYfb9iQAS75Y7By6eHED0b78jy2G7ROzwz5l6A=;
        b=PoJP4myxwBmfAu6wIRpgSHxUPJ/5PRMUiGM2szeErMiV8wNSY+OzYiIDytlD4aifbU
         XvIEVo0zzK6htXQ8ZXjDGUWVKUVS98V8JkUlMvsPWl1w8F12jpCVzvGy2Qyp7cb6WFoH
         /gpS8b+hO3oL5GMdeKSG7u7mezaQwYs89nhbDqJY8V13dhzi6ytjLVUzCBMG4gyRUKUj
         cxO7EdWfs8a6tXaXgcO9sCkbkY6u8OsjRwJQuvZQpNBoevdk0TAHVF1GWw1c8j0PhL3p
         8/Xq7DgWVZEnR5dnzdl7eizwsw+TLoL6UN/m3qp5L/fWlQXX52QrPr2ghVKNOUa1pBpR
         RDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OjrNTPYfb9iQAS75Y7By6eHED0b78jy2G7ROzwz5l6A=;
        b=sYGiEwcz317dSUx9d10VMfNtI/ins3aaWgo66QXjRC+mpH/lSQ0Hbotpn2IMHJam+p
         du9l4YSJ4eUn3trEnzHPDsxEjN8yUDRz8JbdjTdoTf56eT5STUZsThLl62TrGCsl10bR
         kG6oMqESEsoQhbEQGXP0OuCPp2pL+jjXaswmJOcwIkN8SIkEKovmAhuZ406JfDf6zvq8
         US1gn7P4HmQD6XK/37l3qB2/xRl43W3JkrFtCynWYo27M/I9uOn/HiQ8F9+NrJ1M6Bl+
         b5vB9CcnWGColgNxbiQoxcYYAzD3qXbJwXGlA2Se2PTdF1Rc08fBlAbCp9xg5zxrjUHb
         GoAA==
X-Gm-Message-State: APjAAAUy7X8GVy9LjFN+B5Ddt/CcdpWqddKQ8mtE9fPcqY3PpUqyb8ma
	4sqTVJUE5NbFvipBkhAhC1Bdzfi9yfgCVcUn+ykTNsjkaOs=
X-Google-Smtp-Source: APXvYqy5wZsHHEnlqLZDwil4a2npSq02G+Q6wt0vqhK9dFMxSFfD/1yHzcLjzhOiBFg2JSVWn3Kk8zOhGYlvpVA0Ohw=
X-Received: by 2002:a05:6402:1853:: with SMTP id v19mr13455932edy.247.1555980073458;
 Mon, 22 Apr 2019 17:41:13 -0700 (PDT)
MIME-Version: 1.0
From: Seong-Joong Kim <sungjungk@gmail.com>
Date: Tue, 23 Apr 2019 09:41:02 +0900
Message-ID: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008e5fd5058727d731"
Subject: [oss-security] fprintd: found storing user fingerprints without encryption

--0000000000008e5fd5058727d731
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

I would like to report a vulnerability of 'fprintd'.

'fprintd' does not encrypt sensitive information before storage.
*CWE-311: Missing Encryption of Sensitive Data*

*Description:*
=E2=80=98fprintd=E2=80=99 saves fingerprint template and without any encryp=
tion, to a file
on the host.
This could allow a process to access the stored fingerprint and then create
natural-looking original fingerprint image.
The stolen template can be replayed to the fingerprint authentication to
gain unauthorized access.
FYI, most commercial software products for fingerprint authentication
provide fingerprint data (template) encryption.

*Additional information:*
It was found that 'fprintd' saves fingerprint template and without any
encryption, to a file on the host.
This could allow a process to access the stored fingerprint.
In 'fprintd', MINDTCT feature extractor from the NIST Biometric Image
Software (NBIS) extracts fingerprint minutiae that are compliant to ANSI
INCITS 378-2004 and ISO/IEC 197942-2.
The generated template file can be easily converted to ISO/IEC 19794-2
format since it is a minor modification of the earlier ANSI-INCITS 378-2004.
Currently, it is well known threat model that the standard fingerprint
template can be reverted to original fingerprint image.
[1-5] are presented to create sophisticated and natural-looking
fingerprints only from the numerical template data format as defined in
standard format.
They also successfully evaluated these approaches against a number of
undisclosed state-of-the-art algorithms and the NBIS.

*Resolve the vulnerability:*
As per upstream, the only way to safeguard the fingerprint data is to run
with SELinux, AppArmor or another LSM enabled one.
(link:
https://gitlab.freedesktop.org/libfprint/fprintd/issues/16#note_141207)
Currently, Fedora and Red Hat Enterprise Linux have a safeguard the
fingerprint data since they uses SELinux by default while Ubuntu and Debian
did not.

*Final remark:*
Once fingerprint has been leaked, victims are leaked for the rest of life
since it lasts for a life.
It is necessary to prepare for the problem.

[1] R. Cappelli et al., =E2=80=9CFingerprint Image Reconstruction from Stan=
dard
Templates=E2=80=9D, IEEE Trans. on Pattern Analysis and Machine Intelligenc=
e,
vol.29, no.9, pp.1489-1503, 2007.
[2] A. Ross et al., =E2=80=9CFrom template to image: Reconstructing fingerp=
rints
from minutiae points=E2=80=9D, IEEE Trans on Pattern Analysis and Machine
Intelligence, vol.29, no.4, pp.544-560, 2007.
[3] R. Cappelli et al., =E2=80=9CCan Fingerprints be reconstructed from ISO
Templates?=E2=80=9D, IEEE ICARCV 2006.
[4] J. Feng et al., =E2=80=9CFingerprint Reconstruction: From Minutiae to P=
hase=E2=80=9D,
IEEE Trans on Pattern Analysis and Machine Intelligence, vol.33, no.2,
pp.209-223, 2011.
[5] A. Rozsa et al., "Genetic Algorithm Attack on Minutiae-Based
Fingerprint Authentication and Protected Template Fingerprint Systems",
CVPR 2015.

Sincerely,
Seong-Joong Kim

--0000000000008e5fd5058727d731--
