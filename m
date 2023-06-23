Received: (qmail 28177 invoked by uid 550); 23 Jun 2023 11:40:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13414 invoked from network); 23 Jun 2023 11:30:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687519791; x=1690111791;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MOcJMeZKuBaQL9MH/DoqHbUHsKLynd4wz3GbnYdfRU=;
        b=ps3LPjh514FSiIkVJEM15v+vrtqSroLCSOHb5Os9KVSRCG0QYAEO11Zu/iWy+wQU5N
         9kmscVLUUDdy2lfbBH53J7BhNwannAg75EQPgb1ZZCCFasakOJegs1VbHjEeeLiwngiB
         QVtW+rpMiyjdvA7fNWYCzYYRGLIAj5S0jr7Px556mL9gktW9nTUtHHUylslpSlHYsHMo
         SUdmEoB1tSzrsWuBwKIGaHXz2usmiL8kUJawm6cllL/+dImvdIDIflGPKanRqDdb1lAj
         UYHZtpxGonKdmMsokBfDA5k/xqt89z2TUtcdzTY/sIefaU45aObkN6rxQy0Flzx4Thy0
         CYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687519791; x=1690111791;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1MOcJMeZKuBaQL9MH/DoqHbUHsKLynd4wz3GbnYdfRU=;
        b=My22mMlBty/E5teHU6spFob0t23WScx+ydgAGrFna34X27QPsflTkNpIbhJEn3nRGH
         J/gLKhsqGh4CD+9UgCLFY3JZiSE0ihbatnlVQhEUxqbkvnctG2chWUQnxngNaSy0XMtT
         nJQPEdKUaGcTe+dIDRUrG4C3Z8tPdS9zj7shWeFQX2TfBw5gziaV1mjBZZSn4XaO0y4a
         +o4sp/mWS2gCFWZ8C1nVNFjL0QbhImA4ZqwHan2CsIu+O90pJo9Tjn1siZ/gE7ZJp+Sl
         6hCxhZFhkwgA42+9oPmU9pNFybgYSGzrQwzElklQhJOLsOeuqM6rSfFlSpdGhvDgzZ+m
         PLEQ==
X-Gm-Message-State: AC+VfDzaviCtdse4AUTNt6e2t//3pGzu1YiDHvAjl8ERrPO/bcjBf2gR
	nmmqzDMY1JuQFpZhwA3CqjV6R7mnhnva7a00PIFI5KVl
X-Google-Smtp-Source: ACHHUZ6eB8gfBcQ8Tz4bC9rx+pJlOuVQyP7kikQwQoeUoZ18Wl2RqHMXJxYnUiosagokCf0ob5bSuXyyL6yXU1/hcIE=
X-Received: by 2002:a5b:cb:0:b0:bcd:6b29:1391 with SMTP id d11-20020a5b00cb000000b00bcd6b291391mr13357797ybp.20.1687519791590;
 Fri, 23 Jun 2023 04:29:51 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com> <72BCBA86-4192-47C9-ACA7-5F1A39994104@amazon.com>
In-Reply-To: <72BCBA86-4192-47C9-ACA7-5F1A39994104@amazon.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Fri, 23 Jun 2023 07:29:40 -0400
Message-ID: <CAAHN_R2F99BmuwkLMiL8MFeuoB0UxdvVxLaRxXP3z2nebY_B=g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Fri, Jun 23, 2023 at 2:40=E2=80=AFAM Smith, Stewart <trawets@amazon.com>=
 wrote:
> I don=E2=80=99t think you are, I can=E2=80=99t see anything here either.
>
> Even if you were doing all the wrong things and running a yasm-as-a-servi=
ce continually building untrusted source right alongside other processes as=
 the same user, that contain all sorts of things you don=E2=80=99t want exp=
osed, I still don=E2=80=99t see how this would be anything but a 0.0.

I know you probably only said that for effect but if someone is
running a compiler-as-a-service building untrusted source but hasn't
sandboxed it, the security issue is in the setup, not the compiler.
Compilers for the most part have to assume trusted input because not
doing so is a practical nightmare.  The golang project is the only one
I know that accepts CVEs for untrusted input to the compiler (more
power to them, and commiserations to the ecosystem that has to
continuously respin everything to appease the CVE bots) while all
other projects, implicitly or otherwise, reject the notion that you
can just throw them on the internet and assume everything will be OK.

Sid
--=20
https://gotplt.org
