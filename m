Received: (qmail 3185 invoked by uid 550); 20 Apr 2023 22:38:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25640 invoked from network); 20 Apr 2023 22:29:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682029761; x=1684621761;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpgL7AEdLCyOyUlI4pHqkh0blyhjurb4zKvLwCzSLDI=;
        b=sYm1DeoZ9RfwwynzEeA6myqrYmnJexuKMWpEQQZGvcm8fTMRRQBsrtBgC5GIw4D5D2
         ke/VzeJ6BLa4cwSe+4BIIMeT7IXTHfzxgTOgf7ddI1dxrwf1UzZ9W55LNidlQoKnE0Xl
         MkluCeQhI8hR6BVYlBD43OBYRXfcfVv7ROAo3W9ssaq8xfm4E08n2EydnTDU7xgyRhPv
         0Ollp5tEW6IWoO4eYWsc4LiStDffhEs8ysyb2vXQ5QWnV7Hm0tU49qHA/AyVE5pz2V+s
         rXNJeuDGY1g9Vp4J8yJh9hUh2ry8NzwEAQARF/yigThWXgOcb/nFOBndbni0M/jymzfO
         McDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682029761; x=1684621761;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpgL7AEdLCyOyUlI4pHqkh0blyhjurb4zKvLwCzSLDI=;
        b=ZLcWcSEYZtaeVweHcmVg6dHx4zsxiNmXirw90YyvNPinIHFvLUg1V09qWYJTSkV/go
         DhXhrknHCgOvAaugzcp5iscMNcq8HfujZF2YAzmgKDjZ4qQ7g5BScpJPn2IwFiGGYxya
         KFPZeL/DXH8ybdf+XakuOvI8FhIXDeBaH/ZYnHp4D6MMzuANLQfv+8/iHl8L4dMUSzcO
         2maNbVZD/FWgDdpvuokxSDxR7KB5OtV52l/iWpJ+/su8adpAJumONMvCdqoM3cQs3UGY
         zFxUw9ilXf2lUlj+THAO3jM5PpuNa6yGKrYWenS9QySGpyV8dWaxt4SKPC9tZVxouaqn
         y71A==
X-Gm-Message-State: AAQBX9eCHZgzaDe/onfv2FYT0sEi6ASGor9QQ9JKTOTa6lYly7XbYyCt
	FWcDIQ1+Bd0gNJz4oF5QxgL6wC0St54PItjB5HuBoPRB
X-Google-Smtp-Source: AKy350YwdM/x4tMVvdilISs3gdGnZxFBUs3ZeEh41mx3B2WvXlSVCEt8QdHwjQUQlxb9bIidDoy9NzVzHW2MP+eADSE=
X-Received: by 2002:a9d:6012:0:b0:6a5:f20b:f6e6 with SMTP id
 h18-20020a9d6012000000b006a5f20bf6e6mr832738otj.2.1682029761353; Thu, 20 Apr
 2023 15:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAH8yC8kDjtf1NZpWjtPTTdToj8p9Sy+LHohW9=k8aJUw2G2y2Q@mail.gmail.com>
 <c621d7a710e1a8aa6d989a60a7258c3c92ff06a8.camel@bzed.de>
In-Reply-To: <c621d7a710e1a8aa6d989a60a7258c3c92ff06a8.camel@bzed.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 20 Apr 2023 18:29:10 -0400
Message-ID: <CAH8yC8=BkNf7zOWv0Og4Nji7ORyaO_MO+_JnwvbT95NDmH8aTg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] PostgreSQL and CREATEROLE permission

On Thu, Apr 20, 2023 at 3:39=E2=80=AFPM Bernd Zeimetz <bernd@bzed.de> wrote:
>
> > This information showed up on the pgsql-general mailing list at [1].
> > It appears a user with CREATEROLE can elevate to root through
> > pg_execute_server_program.[2]
>
> really root? As I understand it you gain access to the DB superuser (usua=
lly
> the postgres user) only. Although I could imagine that you could trick
> careless admins into giving you root permissions on that way...

I hope I did not misparse things when I sent the email. My apologies if I d=
id.

Jeff
