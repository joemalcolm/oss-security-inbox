X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1849" "Wednesday" "11" "November" "2020" "10:13:16" "+0100" "Imre Rad" "radimre83@gmail.com" "<CAPWzz4yY2xMF4ciWRwwEBFd=_EXb12WSXyj290JqJPZGpdHSzg@mail.gmail.com>" "63" "Re: [oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" nil nil nil "11" "2020111109:13:16" "[oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" (number mark "U       radimre83@gm Nov 11   63/1849  " thread-indent "\"Re: [oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents\"\n") "<A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>" ("<A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org>" "<A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>") nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18395 invoked by uid 550); 11 Nov 2020 09:39:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4048 invoked from network); 11 Nov 2020 09:13:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=nxWtLiw9fC1DRZ87MvGax1E6hnBuzvKwQ+Qm1kmcKSE=;
        b=jmPYsZ9YtDJfEZ24sdprKY58JhqeC73+PUCMGtqolPP8QropeezxqOKKjP4ZL1r4Bw
         hmsXJhIdkETY2vAGLf5UViJWjTvw4x1D4VoGhAYenOf/gAVGDcCEjDBw8pW40+9d3vB0
         bJlbDNNWTEWKLHXIadQG788CeriTkvvK1t2lsAKt4usnHq8j1YTH0WHw/P2v7whRz7Bs
         G07YUmnTK6H5WwNu1gPY/CX7IYt8K7Vcv3AH7zwlbQKL487XsUi2F8A9nT3KISPLTV3s
         gEWW9kPCjh/S/3QMiki5JFJ7rQT9S6X4YkpK4DnDFKP6uusDBACIftSDmN2j1jQqL+3p
         EDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=nxWtLiw9fC1DRZ87MvGax1E6hnBuzvKwQ+Qm1kmcKSE=;
        b=WmGyCVK4+IbsNdlmHlPB3aLeg0QGGnoZGO+jM4SDthNgfeScYzFmenuXim+LCXwiqM
         4l0aJUa4AI8xJ2h7dNVPCEaEiI86kyR30N3uWPm0WOCncn9ORS9kckkX5LnGRoHbPDak
         GQa6fb5Qu7MKgiVc3frJca0iqypVc8S2Uh7ecv2kxCyNNjUXkmP+7Ol2VIDuRRg6uz9J
         4ei6G1MRlutLxshLuUijhmzMNwcfW2xLtp7NnYUon+WkwV1iKz3DnFmTo+m6FGhKqf+8
         wOnueD2aTrvycKraBeiX8v6klGwSJp6k2oKx+/DAgoeamopiev/o4cSP7iv755Apv/cj
         u09Q==
X-Gm-Message-State: AOAM53298wJSv3KEI/XDF1EpwoyNRw2npV2y6c5gxlhGpnmHsnXD2AMS
	WkoivhmMxkut3vsmLX8YERpcwuotH0pAR75/i22ynBUOX+srTQ==
X-Google-Smtp-Source: ABdhPJwbOF5mI3hJ2WyFFJrXXU3bLftcRz9VJN06Q6vSeErivKTZvic/KOY3VNLsjT3P4CqMK/u41GhLANaTdlbTpm4=
X-Received: by 2002:a63:fe0c:: with SMTP id p12mr240228pgh.31.1605085993270;
 Wed, 11 Nov 2020 01:13:13 -0800 (PST)
MIME-Version: 1.0
References: <A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org> <A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>
In-Reply-To: <A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>
From: Imre Rad <radimre83@gmail.com>
Date: Wed, 11 Nov 2020 10:13:16 +0100
Message-ID: <CAPWzz4yY2xMF4ciWRwwEBFd=_EXb12WSXyj290JqJPZGpdHSzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted
 actions leads to arbitrary code execution in crafted documents

Proof of concept and more technical details can be found here:
https://github.com/irsl/apache-openoffice-rce-via-uno-links

Imre

Dave Fisher <wave@apache.org> ezt =C3=ADrta (id=C5=91pont: 2020. nov. 11., =
Sze, 7:38):
>
> CVE-2020-13958 Unrestricted actions leads to arbitrary code execution in =
crafted documents
>
> Fixed in Apache OpenOffice 4.1.8
>
> Description
>
> A vulnerability in Apache OpenOffice scripting events allows an attacker =
to construct
> documents containing hyperlinks pointing to an executable on the target u=
sers file system.
> These hyperlinks can be triggered unconditionally. In fixed versions no i=
nternal protocol
> may be called from the document event handler and other hyperlinks requir=
e a control-click.
>
> Severity: Low
>
> There are no known exploits of this vulnerability.
> A proof-of-concept demonstration exists.
>
> Vendor: The Apache Software Foundation
>
> Versions Affected
>
> Apache OpenOffice 4.0.0, 4.0.1, 4.1.0, 4.1.1, 4.1.2, 4.1.3, 4.1.4, 4.1.5,=
 4.1.6, and 4.1.7
> OpenOffice.org versions may also be affected.
>
> Mitigation
>
> Install Apache OpenOffice 4.1.8 for the latest maintenance and cumulative=
 security fixes.
> Use the Apache OpenOffice download page (https://www.openoffice.org/downl=
oad/).
>
> Acknowledgments
>
> The Apache OpenOffice Security Team would like to thank Imre Rad for disc=
overing and
> reporting this attack vector.
>
> Further Information
>
> For additional information and assistance, consult the Apache OpenOffice =
Community Forums
> (https://forum.openoffice.org) or make requests to the users@openoffice.a=
pache.org
> (mailto:users@openoffice.apache.org) public mailing list.
>
> The latest information on Apache OpenOffice security bulletins can be fou=
nd at the
> Bulletin Archive page (https://www.openoffice.org/security/bulletin.html).
> >
>
