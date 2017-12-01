X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3076" "Friday" "1" "December" "2017" "09:57:19" "-0500" "Scott Court" "z5t1@z5t1.com" "<73d526b8-5895-0f1b-e15b-ad683f3f2574@Z5T1.com>" "70" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Cc:" nil nil "12" "2017120114:57:19" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        z5t1@z5t1.co Dec  1   70/3076  " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<201711281319.vASDJxWP010037@masaka.moolenaar.net>" ("<201711281319.vASDJxWP010037@masaka.moolenaar.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3091 invoked by uid 550); 1 Dec 2017 15:01:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32335 invoked from network); 1 Dec 2017 14:57:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=z5t1-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=+EO7drX3bldwSH5KnNIIR+SP/LBrRvCUHMiAzL93yUI=;
        b=wnAbGK+gBaKqJ326egee9cWMXb5pDnqyIr/ja8nQ7TZiXgCjgiEVzGQT9qpRaQvLTE
         yKg4i9pO6E5KfJ/RwFNQ7LhCDsoD0VVMYkEiBeI0VLj96XQ9/T+f2M3gQIjQLh2321Do
         4BzFjQ8sPl1afpwd+82+LvwkZD3G8fgaVkHvyFCA0V01thjaFaF71NYUE7lnJtbVEwim
         p+7dd9vAZddfbYBz8vm5yVczT2lLeWluDiqS5DoLyY2iW2G/6OJycdo9DcTQtgOk+xs8
         KnWAaDYN52JtagI9cNwNF/GK3RN9z9vdyITksxRygtG4Jw6S70IUArnTaA30LrHOCsWM
         MvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=+EO7drX3bldwSH5KnNIIR+SP/LBrRvCUHMiAzL93yUI=;
        b=CHfdtiHrTQ0RxviJSgVfEqUG/K6QP0QQpisUDAsRehyxYNiTp2jkM65lym4yjr6hbG
         HOrSXI6QO6r5s8fltGqyZ5JpiY8WzDsE/CvB+AWy+EKa5ewWKKcq9eHVy5Isr4q9S/mT
         SefFtZmy0wEaAv+5owvWNo1GZ75iPFQHNn6q+FscCFsZPFD2zRwg7zcQme0G33aU1XdQ
         FEhEl6r0F3Wq3ztmcnsKKJUNv6uVxY/6rhjlB+4j9kpRmOMZBlMGIKkw+UeLjNvcMKH9
         Yz/CoIPZhJnv+S2sMvJc0u7wL9TkAXZ4/gmPBRZGP5rCN7HgsK+2Ym7Iws4XhvN8nnDc
         HaCQ==
X-Gm-Message-State: AKGB3mK7WPKyRg4bCGwLGPUsNvD9pHV1fs85+wJH+sUvjrzxUSM8TVgn
	/enCsiald5OnIywVDhL9RiZBHg==
X-Google-Smtp-Source: AGs4zMa2CEISymo9iPmRWmIn8c28wG/xvkZPQvV3Nb0Pl6+XMI/76e9c2AdISjDDbN1JT8gUTSb1yQ==
X-Received: by 10.237.60.46 with SMTP id t43mr8903610qte.294.1512140223261;
        Fri, 01 Dec 2017 06:57:03 -0800 (PST)
X-Google-Original-From: Scott Court <Z5T1@Z5T1.com>
References: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
Message-ID: <73d526b8-5895-0f1b-e15b-ad683f3f2574@Z5T1.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="sT5BHr2kS8tigqT1t3tBfWn2uoWTOAahq"
Cc: Kurt Seifried <kseifrie@redhat.com>, oss-security@lists.openwall.com,
 vim_dev@googlegroups.com
Date: Fri, 1 Dec 2017 09:57:19 -0500
From: Scott Court <z5t1@z5t1.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: Bram Moolenaar <Bram@moolenaar.net>

--sT5BHr2kS8tigqT1t3tBfWn2uoWTOAahq
Content-Type: multipart/mixed; boundary="OC0BRiFEJ0ePsvHKVvsCX4o7IL2cxs33b";
 protected-headers="v1"
From: Scott Court <Z5T1@Z5T1.com>
To: Bram Moolenaar <Bram@moolenaar.net>
Cc: Kurt Seifried <kseifrie@redhat.com>, oss-security@lists.openwall.com,
 vim_dev@googlegroups.com
Message-ID: <73d526b8-5895-0f1b-e15b-ad683f3f2574@Z5T1.com>
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
References: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
In-Reply-To: <201711281319.vASDJxWP010037@masaka.moolenaar.net>

--OC0BRiFEJ0ePsvHKVvsCX4o7IL2cxs33b
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

This has been assigned CVE-2017-17087
>>     2. Vim .swp file group (Doesn't have a CVE ID)
>>
>> This vulnerability was discovered by me. When Vim creates a .swp file,
>> the .swp file is created with the owner and group set to the editor and
>> editor's primary group respectively. The .swp file is the set to the
>> same permissions as the original file (i.e. chmod 640). This creates a
>> security vulnerability when the editor's primary group is not the same
>> as the original file's group.
>>
>> For example, say the root user's primary group is "users", which every
>> user is a member of. If root goes to edit /etc/shadow, the
>> /etc/.shadow.swp file is created with permissions 640 and user:group set
>> to root:users. The original /etc/shadow file had user:group set to
>> root:shadow though; this now exposes the /etc/shadow file (which mind
>> you contains hashes of every user's password) to every user on the syste=
m.
>>
>> Originally, I thought this was an extension of CVE-2017-1000382 so I
>> didn't bother trying to get a CVE ID for it; however, upon looking at it
>> for a second time, it seems that this is indeed a different
>> vulnerability. It is possible to patch this vulnerability without
>> patching CVE-2017-1000382.
>



--OC0BRiFEJ0ePsvHKVvsCX4o7IL2cxs33b--

--sT5BHr2kS8tigqT1t3tBfWn2uoWTOAahq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJaIW3SAAoJEI1dl2DAZNZc8IIP/iUWdPfbK6i+sVrYVZFDuFsC
TZkOo60hsdIULDkoPeagbUc1WAFmb1PLveoATaxLvTA/Cm01aZKVAvHdaMKLWcRA
dmAYKdA5Z4OTNkgkdBsTObMAtHT4vZoFOxqs8xvnG1zSG6whxxjDr1f5mP1OStWG
9WLJXwykqKyXoXz/6JCLU9PTpMxAKmJ6Wm3dgs22IZmvCP5JTnmFyxI/SXl6KTkJ
oeIoNV+1CP44QBgdn5VhZSewXvmh8LDYIiltiZ7gqUpEU/3bwmrxNlPrBYrXDEIc
VV1mgDd7qnK2QrFIoMJ0RRuFC1xpmpNGrXes64A4Z5WjuTRfqOmuVOz5fm/Jx2YO
OsVz4Tvl6ajYpVyf7CS4nMZhg/VDxXxm+fDd91GEH67C5j55Xm6vDZ6KWnDeqCZ3
ZlAe2rOiUjQXY49DPvg1K//SjZbMGIgOMP3lH/gdM0x7+IlYRu5+dzIfg4pKOl5F
Na8SsDcMIjdpDPSYnghovCLpvsA6Fh8IUyIqnUPw35JeD5z18aSkxJ6kbQFl7Obd
0Ch4N2hBMLD/Eguvdy6Me06aTCnUmEiTRHEhpM1XBzgBfqA/WDErdgtQ1li+2B+H
iGAAe1Vbq1+fPWK3qKPpMYJgho9Hs55oNhEA1gRAvf/VNGBcGofgeGtIOMklIr8v
SB7ZNn94oss/zlZ/x4PT
=PEH5
-----END PGP SIGNATURE-----

--sT5BHr2kS8tigqT1t3tBfWn2uoWTOAahq--
