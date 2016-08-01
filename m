X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2580" "Monday" "1" "August" "2016" "14:19:59" "-0700" "Grant Ridder" "shortdudey123@gmail.com" "<CAPiURgU=B9-scN=io0cJrS-4FfrLCnJ=MFiBSfMoKyCG-L0kQA@mail.gmail.com>" "68" "Re: [oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" nil nil nil "8" "2016080121:19:59" "[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" (number mark "U       shortdudey12 Aug  1   68/2580  " thread-indent "\"Re: [oss-security] Re: CVE request: mongodb: world-readable .dbshell history file\"\n") "<20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>" ("<20160729170700.977@usenet.piggo.com>" "<20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28023 invoked by uid 550); 1 Aug 2016 21:52:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9969 invoked from network); 1 Aug 2016 21:20:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rVNyFmrwkDRvFqCQ4hEqEmSTwTXPRgIADo2urmKKQnM=;
        b=FVKUKlqZ0LLpLgGyrXA64shWrQL96nxFz80j4lyqKsUC1Gdq/p1QqyiJ8SqWNxXLYO
         ugtZeAohWuQjmpadNxCNsxWeSW7IMGDEXpGXJ+d4ISaRFjIRRaC2DD2Ry15JjWD2dZLS
         N7y51slLx4ziopYS6OOOvw2vgyyE4Lv9jtzpHNiWIJRUqp5SV/ISL9GLhhs31/fcUSv7
         tpE73pxHQrgKmSSFGVsD6dyAfFyZ/bXBvqdIDcPzRfvq0PMxUBISOChx3AT6SxTMY7So
         l2b/lPE+YN7Xexh4h6dYWG0rnnsXIQ4vnCuD7AdSbCsGe/Nn3jUnAcGNPZYYP/i2I92M
         WOUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rVNyFmrwkDRvFqCQ4hEqEmSTwTXPRgIADo2urmKKQnM=;
        b=QJnG74jpsDoP+S9dNI1xn+YudUe4dwuX1fDfwDL9o+oSJAQEaOQXhDKpSFHoDAyhRe
         YbaLKWrHrDngNzuj067lvhSQL5RagUox1TzFgrH6b/oiaGJjQSFLpnH59JLXBIfC/EU5
         GDljZR1Dwj6Q2MvVsv5KzCLD7q1sMJ3u5vsFW3MB1tkiyHz0ZRHGyzMrhLOMUAFi8ARm
         gvJHgfn2Vt3i4SnDQrj7KtyN8VSrPiBwcmiE3Wz2TtsZaLaGaKO/VJowlKkSi2aGt5aE
         aBaJYiOEwRAD9JwuM6BYwI5TkeXU/p44C0s/rZi3o06l3l6qa9YNrS05clwLNAYD/vD2
         BzUg==
X-Gm-Message-State: AEkoouu1bMK+juHwf7mnhKmHE0R+ZBeyDFs9eDcJmCMlgh7TrSJPxnjQ1TnAgfXVI2WjR8Cydex35yirlqULDA==
X-Received: by 10.36.22.208 with SMTP id a199mr10865873ita.20.1470086400619;
 Mon, 01 Aug 2016 14:20:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>
References: <20160729170700.977@usenet.piggo.com> <20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>
From: Grant Ridder <shortdudey123@gmail.com>
Date: Mon, 1 Aug 2016 14:19:59 -0700
Message-ID: <CAPiURgU=B9-scN=io0cJrS-4FfrLCnJ=MFiBSfMoKyCG-L0kQA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: seb@debian.org, CVE ID Requests <cve-assign@mitre.org>, mongodb-user@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1145f7cab2c27405390929eb
Subject: Re: [oss-security] Re: CVE request: mongodb: world-readable .dbshell
 history file

--001a1145f7cab2c27405390929eb
Content-Type: text/plain; charset=UTF-8

FWIW, the vendor has closed https://jira.mongodb.org/browse/SERVER-25335
with "Works as Designed"

-Grant

On Fri, Jul 29, 2016 at 10:28 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832908
> >
> > | During the report on redis-tools
> > | (https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832460), lamby@
> > | linked to a codesearch and the same bug was found in mongodb-clients.
> > |
> > | mongodb-clients stores its history in ~/.dbshell, this file is created
> > | with permissions 0644. Home folders are world readable as well in
> > | debian, so any user can access other users mongodb history, even though
> > | db.auth commands don't appear to be logged like redis did.
> > |
> > | I filed a bug on upstream as well:
> > | https://jira.mongodb.org/browse/SERVER-25335
> >
> > The mongodb client doesn't store authentication commands, but there's
> > still information leakage, though, even if only about database and
> > collection names, or data structure.
> >
> > As for data itself, the history could also contain sensitive
> > information; for instance, if usernames for some other service were
> > stored in a mongo collection, the history could contain lines like:
> >
> >   db.users.find({user:"foo"})
> >
> > or even:
> >
> >   db.users.update({user:"foo"},{$set:{password:"OhComeOnNow"}})
>
> Use CVE-2016-6494.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXm5HHAAoJEHb/MwWLVhi20SgQAKIXsSDuAQzAY3DN67osMxAg
> BuEh9En380VzBzqz+O83tjJyqJ6kx+Ed9WWc6Yl4nd0rUW1YdnOSvK+RF1c0nN2s
> ndfb3cHkC2sTCfJyh5GvDdthYLr0Th0GabAzmgOoc4QhCSHykxxGFHgEhI5Wem6T
> MclVy95MpBRb3g2XNH2ue96CxRFK2buT3fZerewZe8OBh7dh6nxDEKfLKodz8zaK
> vUgINsgoP53GuhlCJYExf9O4JLY2wn3CFjWTGfoMY7wDxl9Rr5VwOuBaSgO6i+Ay
> MxjMApDumENwSBtXtUQ/54WPez4IxqWU193gq31V4kVWEfBvlb9QHUsd1qyWsQVp
> OtboCgvY2K0u5O9ZVK/H+zJDhqe/fxw2HjMxlwju3ENORuCUFpz/nErLWXSc+iaj
> C2WmJPD0O+8mzJnOCjY8WuHJtetGorivbbKTbWk2C5r3NHMI7X9DYKiiz5ISD6Us
> kXVjWxXdHqfCVG3JvpmJi78Pw/+DPgw9D3sg4BTY+bhEB+Gguvh8TMVTkjtOSsBh
> i5ORa+1EhvGhYVXVZJZUK0bvEH/Pxuh6Yc2WX8LWFG2Fauw5d+1sSovLls6oLnp7
> xDXqv7DN6NTu3iza24JWfsZBOUTVKminX42EonOu7yOVtW5oIRO6wCALd0OiL/SP
> EOsVcn9sPCF9HQog0jSZ
> =OQs9
> -----END PGP SIGNATURE-----
>

--001a1145f7cab2c27405390929eb--
