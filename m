X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["591" "Saturday" "16" "October" "2021" "01:31:50" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" nil "22" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       ylavic.dev@g Oct 16   22/591   " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1254 invoked by uid 550); 16 Oct 2021 06:09:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5456 invoked from network); 15 Oct 2021 23:32:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vQ6loCkZ6HAfDTlyB45V/tyVvNgTTSg+nB+rphb5Coo=;
        b=Q5LJtqf9kjezwhLTsxeJL+G3BeN/8lJMyL4SkZ3rClcr4dSQv1vZqR5vyv5c4jkOaE
         ghwLAJD8r/fedob6WKsnMUksRKb2ZG3UUT2JLq39d6Q+yk7rxFk91czWyQabbFULI1V9
         YpWv8MK2QQeCuJ8Qkny41O4ixWBOGGhJTAo/o+bcgWPwgOloEGZmOErNXt/2aQvFo4FK
         sOCopPdI3QcgzJflbE7PLzT+dcPSwLQ/uK+Ol1inP6jAUluBwmv8EdasNcaqraA/kBNA
         4mXkcY5pVEJxn4YDjXbo/2VuiQm3/JcqOXKxiRXhqu58QpYcdXIkNDb9IKZoUb03d8bF
         hSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vQ6loCkZ6HAfDTlyB45V/tyVvNgTTSg+nB+rphb5Coo=;
        b=648oVGMMglZwoUzg5i0VAfrQUjaw+ZktO7u04wLDdqf+hnJSBHOsR+KC1HnQp43N7h
         K24OaEHjxtMJ4p6B8YodbDUFVVTOrvlVWchFjVX3IaS3sjBYIct3dJOw5TGA2LJfssmD
         VvOxOd0pOXOhci+rpEWRIJNEmr7bdtR/GMY2aReTyb3HvQSw+PMBf37ebVqE6av2j3pa
         lBqzfc2tJhfwUjF00aGmj41qyrYKqcaQVPDkDcXrRp5Vt+r46E4Exhlgbd87K5tvbc/z
         3zMcFFdXJxsNjFKUm6zXfXxeJCkeB+a4+0TUuQpSyJZexRMY2lkA2e9E1iIGfg5VDC7g
         7q/g==
X-Gm-Message-State: AOAM530i41uyOr5rapGT+u9xDCGJ5Hfh4fNXT7Dr4YB2TV93fuyBhgyH
	82e5wDd2eVx7lX68OW8VmaOwSMpS2mWAoUca8Ar8ObSm3zHlgw==
X-Google-Smtp-Source: ABdhPJwiB7Lf0xjmry+d8XYYTYm+VUQlVvqLUtotmeFKbwx6n8cXmLyVE2M1LAzPJbZuCVx9ANurQS7x8PvbnkCDnNY=
X-Received: by 2002:a17:906:2c53:: with SMTP id f19mr10858775ejh.326.1634340721700;
 Fri, 15 Oct 2021 16:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
 <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com> <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
 <20211008210821.GA2660@openwall.com> <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
 <bbb8b568-9512-02e4-60ec-3df480af3430@rs-labs.com> <CAKQ1sVOd-9FS8M4gDLOKvs+44LORSJ1CUtxck3tQ+M58SRpE3Q@mail.gmail.com>
 <9b8f4c6c-1a65-321a-c7e7-601700aeb34d@rs-labs.com>
In-Reply-To: <9b8f4c6c-1a65-321a-c7e7-601700aeb34d@rs-labs.com>
From: Yann Ylavic <ylavic.dev@gmail.com>
Date: Sat, 16 Oct 2021 01:31:50 +0200
Message-ID: <CAKQ1sVPSjUzdxyb7n7xa5bPzPV4xwXg7cgniwNeuyhg46dBjwQ@mail.gmail.com>
To: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)

Hi Rom=C3=A1n,

On Fri, Oct 15, 2021 at 8:01 PM Roman Medina-Heigl Hernandez
<roman@rs-labs.com> wrote:
>
> Re [1], I think this:
>
> "critical: Path traversal and file disclosure vulnerability in Apache HTT=
P Server 2.4.49 (CVE-2021-41773)"
>
> is still misleading and should read:
>
> "critical: Path traversal and Remote Code Execution vulnerability in Apac=
he HTTP Server 2.4.49 (CVE-2021-41773)"

I (for one) would argue that admins/vendors that ship a RCE-vulnerable
custom configuration should reserve a CVE like this to notify their
users.
httpd does not, at least.

Cheers;
Yann.
