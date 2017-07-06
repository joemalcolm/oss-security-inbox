X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["978" "Wednesday" "5" "July" "2017" "22:12:11" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>" "24" "Re: [oss-security] systemd fails to parse user that should run service" nil nil nil "7" "2017070602:12:11" "[oss-security] systemd fails to parse user that should run service" (number mark "U       noloader@gma Jul  5   24/978   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25660 invoked by uid 550); 6 Jul 2017 02:20:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19585 invoked from network); 6 Jul 2017 02:12:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=TIw+jfz8wjHnNaANjYJCUz1Zre3+lDhBbu1wBd0cEug=;
        b=fFKs0wS/6D7o/06Zb0eM6feWfN7xuBEAtZXHxQMr0C+8e8qDyWowN09SttR4Xbez+B
         brvX0ocnAQfsmRHsSRk6wqVYkkhu31NYAYj0CrZFRBP32oeA9a4YPPAimQoY6UX/QFdj
         Plr7yoaSSLRTJc/+ob4i8konKaPlfzxmgsFOWIMsxsRKSsEi3FmQrar5EdkZmvgE17nE
         scMvtnoysRMz0MDA4vFtY9g4PrmzgRu/0riVl2tF7kFCDne5vZBIXfIViS/5BbyHUGYk
         J58H0FMk3gygPJ7LZF96Dgyz5Ud6qeipRm++RsLy9vKhWCt9JRuvWXTuCBiGoaDKFCsI
         hzTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=TIw+jfz8wjHnNaANjYJCUz1Zre3+lDhBbu1wBd0cEug=;
        b=Bo/EbtJR2ywew8nFUlSsGYZfWVZfA46H4I3HhKTjpVlTdJCHbPL+CgsR9I7fDCm5RB
         GakDrU/h/qFwfSwqM3kzy4gfADLZA9Lt71v0KVVKxasVIf0c9NBkB7h8SQrOrpB5mMIK
         r4H69pNJ9I/PfRsdPVoGuWoZ1RWWA1EcxwU/L5P9OYk7UlKyllfA0yYcQz28gvqhSFG3
         TcVH3b5OtuRJvxQPUyfKCH6omMuVYjk7/b7DvCCksbAmi+KErGDiohO7NQzwHK9mK1UI
         9r1Cp3xBZrnzg+VUVi0ILEwxIEGcyDG1MGhjELgNqUROav/l1jGHib5ADAI5CHl48HkS
         2ABA==
X-Gm-Message-State: AIVw1107+xUJUKAkJU4Fqt9XpZBIlYSsqDavuVskRrpBmA0CD9grTGCY
	iILPeCgWDzfgG9Gbx8Ypawoe981T8ZYVIQw=
X-Received: by 10.202.193.133 with SMTP id r127mr9273348oif.117.1499307131701;
 Wed, 05 Jul 2017 19:12:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 5 Jul 2017 22:12:11 -0400
Message-ID: <CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] systemd fails to parse user that should run service

On Sun, Jul 2, 2017 at 5:08 AM, Daniel Skowro=C5=84ski <daniel@dsinf.net> w=
rote:
> Just wanted to bring attention to issue with systemd not doing what is ex=
pected when parsing User that should run service.
> When it fails to parse string starting with digit it fails back to root c=
ausing obvious threat to security.
>
> See discussion with developer on github: https://github.com/systemd/syste=
md/issues/6237

Point 1 from https://github.com/systemd/systemd/issues/6237#issuecomment-31=
2479534
seems to be a problem:

> systemd is not the one coming up with the restrictions on user names,
> and while some distributions are less restrictive, many do enforce the
> same restrictions as we do. In order to make systemd unit files
> portable between systems we'll hence enforce something that
> resembles more the universally accepted set, rather than accept the
> most liberal set possible.

systemd is effectively setting policy where it has no business doing so.

Jeff
