Received: (qmail 26002 invoked by uid 550); 3 Oct 2023 22:24:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7737 invoked from network); 3 Oct 2023 22:03:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696370573; x=1696975373; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A2rqEySKm/dLmZGzQ0u8CZCtPUHgJyyA00BEuxZB9Ak=;
        b=mHItw4yrVHc60oIGvyDHPzDEeWspe+aFuevFRfy/pStuQP3fqAZFD6R1hidCHu/GbF
         +P6SmylGdyd1URUat4O5TnQ5C5ujIZqPgt/ruDVvaiM3neDw1lFMTB2UFE0ClahX7SC0
         UVlh3DrQxXD5CQrUDMqh6WTykfn06QxoJAWGZeOutlY3aeNgCzDe4cRwP4PyaU3/OUBi
         PX5wSCXXlDFRbrBF3tHW7dWIxSFM2pCjgwusjJzfxU3y4FG99EBfOoXXM+F2YRKK9t14
         dsCeDDT1K67J10MhyG/aNVEFV3qMipLvTzDIeyXZvWNy4Txb9BsokY+fXqHbE7/03OUh
         LOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696370573; x=1696975373;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A2rqEySKm/dLmZGzQ0u8CZCtPUHgJyyA00BEuxZB9Ak=;
        b=PJrt1RinwVuGVBo9PYXyEWswV/Jy575jyjiKs20bED8EzArFPIQX8MwUuaUpWVPysV
         mwemAuNEa0SN4jkI8Che5FKMVup2lrINhK/LHx+A0bbYYPyQkw05/mblQ54nkSgD8J2t
         OzS4i95IWwMG3K+2iOKaQlU4ZZbPQ6wFO8gOuM1lH7wCWf5a58glr4Yxo4tLfkOjTKm6
         rBar0P0JqBS9TxaxuQszU6p77Ni8Gc9vAUmS8GWIX9d6JMKrFdmsSYrIvPoq49aYhUsd
         yiP+aC9SzRpJlLd2vczEIW39jbSwkp6vshdGkIO4v/6+CirOjJ4RnJcQe40clhIuiWVt
         Kgyw==
X-Gm-Message-State: AOJu0Yw8WlutcgYentaiMEIC0NwqQK1DK6/iUDNnI76HxTGs9EIhD4Gs
	Z60w4FM+/3AHIe202aMsIgilVJgCmt9knKdYZZlVkmip
X-Google-Smtp-Source: AGHT+IGMXDjSthbFqEvt63xmPN5DmL6hRzoTQpnKp3LK74O/EiN1MaQZTc4S65T8x7Ez5LuE1nN3tSyPX1Sln/N+wzM=
X-Received: by 2002:a81:7c46:0:b0:59f:6766:2c12 with SMTP id
 x67-20020a817c46000000b0059f67662c12mr861199ywc.39.1696370573292; Tue, 03 Oct
 2023 15:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <ZROMd1GCpD8uDtbE@itl-email>
 <20231003201212.GA24599@openwall.com> <1786f020-2af8-4adb-bb4c-5dc87c545dcd@citrix.com>
 <20231003214424.prarc3aboi3ar7zk@yuggoth.org>
In-Reply-To: <20231003214424.prarc3aboi3ar7zk@yuggoth.org>
From: Jean Luc Picard <atari2600a@gmail.com>
Date: Tue, 3 Oct 2023 15:02:41 -0700
Message-ID: <CADxcaYUe3Mj-VYn7j5T_JoF-vhDeqxJh9CZXm-r+z27zrnjwow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006dba1c0606d70deb"
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

--0000000000006dba1c0606d70deb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, just dropping in, is this the kind of thing to where the userspace &
kernel layers need mitigation until there's microcode mitigation?  There's
bound to be more of these issues cropping up now that cstates are finally
working, meaning more people will daily-drive rather than homelab.

On Tue, Oct 3, 2023 at 2:46=E2=80=AFPM Jeremy Stanley <fungi@yuggoth.org> w=
rote:

> On 2023-10-03 22:37:08 +0100 (+0100), Andrew Cooper wrote:
> [...]
> > If you have a proposal for how you'd prefer it to be done, I'll see what
> > I can do.  Perhaps BCC oss-security, or just send out a second mail?
>
> When I send advisories, I prepare two basically identical E-mail
> messages: one to the project's announcement list and one to
> oss-security (signing both of them). It seems like this is the most
> common approach to avoiding cross-posting between lists.
> --
> Jeremy Stanley
>

--0000000000006dba1c0606d70deb--
