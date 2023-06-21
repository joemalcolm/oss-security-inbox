Received: (qmail 6055 invoked by uid 550); 21 Jun 2023 11:36:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32276 invoked from network); 21 Jun 2023 06:45:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687329943; x=1689921943;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RkrDAQ5d35ui0co+IDLiquaIRFiqfDqExGSDyyOM2T8=;
        b=VL6YRcavcSov1RJcRlsPOc7MSx8KTeIgLaDKNbmmM4iDYME7IPKLRgLR9WFSiu7OC2
         uXzSekX1OVaYUB447lUhZ2dgXdiluEeQxQI9DqBPE7hlrgsgetZyGNtt91Euh6pNLqT/
         CWfujuaIg8dZ6KXKvNX7knMqJvANRdngJKV+tJjstDTb08AWpkfuSEm9uMXj1PW+2UiL
         ABkBLBydfI6NDUnVvcFhMNYSzKrqFZyzMg3RnZMXzcNPuLxEZwZSHrIPcMnqaN+iyd3X
         sEC2cT06nLTu+k4YZwH8Yfwf9EFla5eGWnmW2xHruVVgUBeaHkQeYmZPPTaykEN1R9wK
         r1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687329943; x=1689921943;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RkrDAQ5d35ui0co+IDLiquaIRFiqfDqExGSDyyOM2T8=;
        b=Xr2RdujsJMAPcNvOvwSMT9UScU4AcYqi/I0xX7tEWimWTII7RjIa83oU3sk1hrDDLw
         orC3BeRxhnX+dk1lU7qu+mDsJcXLSUyOrVF266ww9U8jkCtka4HCL0Y+yPo+UdoivmQC
         us+yWO1FAO1aytPskyWmuhI/80rd1zP0TwPIiGdgUhRffnE802OzB3KvY0RUl9AoIdVO
         yGNbjULTbONmFoy0iol66VWeqiO0pzcJ5Z5iiVKMHEUhj+iro8YHM8W7DTOi/KYIldy2
         V952cCpdKvJ9I1TpnEiFIr6KkzosCihzrWUI1Jioj7W8KwLK+ec+rUzMvfsb4pXMs/P4
         jwow==
X-Gm-Message-State: AC+VfDwkcMCQLy142Wbn0qg5onJmJrsJRTI7wTsykPV7EdtENOp0jD8u
	/ev/DT3F2+LdlfDP3xXylqdhx5B92e43sdsV8oyohCDbgLY=
X-Google-Smtp-Source: ACHHUZ7mKZiZISMGvohULMcrQs7GMekkALlx/B6WYbJ14YjSGAwpq7idvw9MpPgJFmfSmaA7o2pcXqHTiY6uPltYujE=
X-Received: by 2002:a05:6870:9444:b0:1ad:4d4:34c5 with SMTP id
 e4-20020a056870944400b001ad04d434c5mr2083086oal.39.1687329943294; Tue, 20 Jun
 2023 23:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
In-Reply-To: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 21 Jun 2023 02:45:29 -0400
Message-ID: <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Tue, Jun 20, 2023 at 6:49=E2=80=AFPM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanners
> since it claims this bug has a CVSS of 9.8.
>
>  From what I see at https://github.com/yasm/yasm/issues/210 though, I can=
't
> see any CVSS higher than 0.0 being relevant here and think the CVE should
> be withdrawn.  Am I missing something here?  All I see is 2 objects of
> 16 bytes each not being freed in the fraction of a second before the
> command exits and automatically frees the memory - in a command the user
> deliberately chooses to run, which runs as themselves with no raised
> privileges, on an input file they provide, and which exits after processi=
ng
> the file and doesn't hang around keeping that memory allocated - not a bit
> of security risk at all there.  (Yes, it's a small bug and is good to fix,
> but not to raise security alarms for.)

Memory leaks on exit are par for the course in GNU software per
https://www.gnu.org/prep/standards/standards.html#Memory-Usage .

Nothing to see here, just move on.

Jeff
