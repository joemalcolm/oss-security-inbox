X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1827" "Tuesday" "10" "January" "2017" "19:29:40" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>" "53" "Re: [oss-security] Docker 1.12.6 - Security Advisory" "^Cc:" nil nil "1" "2017011102:29:40" "[oss-security] Docker 1.12.6 - Security Advisory" (number mark "        kseifried@re Jan 10   53/1827  " thread-indent "\"Re: [oss-security] Docker 1.12.6 - Security Advisory\"\n") "<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>" ("<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22097 invoked by uid 550); 11 Jan 2017 02:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22076 invoked from network); 11 Jan 2017 02:29:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jI/jiR7x2t0R4wbkqw9Ueen+wnG5OItLX67kUKeUaDU=;
        b=iIYYdd0KOxPByc6V+VltOlKmnx8yUo+VvXNfv5zq5vP25CLPYEyfb+f3H1Epq4Ttmn
         nlfRWQPI0I42L5rGg5op8xfgbldjDIpSJOIwI8ADxEHvkLc0AKg3lOhrogM5rHireOkU
         3w3r+ZJxT2PhczYIGQmi4uoB2Sohyc3bl8GP21yN2OCny+EiMYuaLzDpoC2zWrEH9wMW
         wyssBRHSJXWrvgdTuXtD6yd/rsUonNzaxiDWqe/dnJHEk1p5t5wUodAUFGCRxCbizVfF
         2or4yBz1/RynXWAQEiPJ1ccejGJKw1MRZyfbXl8M3INFWLesbqGS+Fec8ss/qvQ/c0GS
         RjLA==
X-Gm-Message-State: AIkVDXIzX3V1ubn/wIyXZkDe4cTX8Qy3PcGIl3Os3vSEa7C/ZIAl7rO9K2ZoQb1BmgejLSygpvTbs7z7rKtaNloV
X-Received: by 10.202.75.76 with SMTP id y73mr2967073oia.16.1484101781159;
 Tue, 10 Jan 2017 18:29:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
References: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
Message-ID: <CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c183b27a1cc80545c85fc7
Cc: docker-user@googlegroups.com, docker-dev@googlegroups.com, 
	fulldisclosure@seclists.org, vuln@secunia.com, bugtraq@securityfocus.com
Date: Tue, 10 Jan 2017 19:29:40 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Docker 1.12.6 - Security Advisory
To: oss-security <oss-security@lists.openwall.com>

--001a11c183b27a1cc80545c85fc7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Can you post a link to a patch for this issue, or to a bug entry with
additional details, or the download site at a minimum? Thanks!

On Tue, Jan 10, 2017 at 6:58 PM, Nathan McCauley <nathan.mccauley@docker.com
> wrote:

> Docker Engine version 1.12.6 has been released to address a vulnerability
> and is immediately available for all supported platforms. Users are advis=
ed
> to upgrade existing installations of the Docker Engine and use 1.12.6 for
> new installations.
>
> Please send any questions to security@docker.com.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [CVE-2016-9962] Insecure opening of file-descriptor allows privilege
> escalation
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> RunC allowed additional container processes via `runc exec` to be ptraced
> by the pid 1 of the container.  This allows the main processes of the
> container, if running as root, to gain access to file-descriptors of these
> new processes during the initialization and can lead to container escapes
> or modification of runC state before the process is fully placed inside t=
he
> container
>
>
> Credit for this discovery goes to Aleksa Sarai from SUSE and T=C3=B5nis T=
iigi
> from Docker.
>



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11c183b27a1cc80545c85fc7--
