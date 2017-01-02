X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1538" "Sunday" "1" "January" "2017" "19:39:38" "-0600" "Brandon Perry" "bperry.volatile@gmail.com" "<4F81C4B3-94D3-4F62-9B83-7564BDF36B6D@gmail.com>" "39" "[oss-security] Re: Multiple issues in OpenH264 1.5.1" nil nil nil "1" "2017010201:39:38" "[oss-security] Re: Multiple issues in OpenH264 1.5.1" (number mark "U       bperry.volat Jan  1   39/1538  " thread-indent "\"[oss-security] Re: Multiple issues in OpenH264 1.5.1\"\n") "<68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>" ("<68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22468 invoked by uid 550); 2 Jan 2017 01:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22438 invoked from network); 2 Jan 2017 01:39:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=zOFkK97O8jweTT1bOAw65sZ4EgGnr5SNEDZxTqc9efI=;
        b=s6hIVdBBpFGHz7VuzfWVP/+tfne/vVEqIxWDqXgSm0l3OW3QE6MygZId7aoH4PAR7m
         SIHuwYUzOE8YVt4Jh/RBWuBjLwRcWlrlt3Mz+tQYh81Jw03lXQlnz/FRBZkAZ4hPMSZC
         9kocmGyXuEZv6Vp4Q0hcZt7S6vY2EDXuQE3nrrO8fCGDsmGUHkfUHKrmhPPmVadBIghC
         t4/iH2nbjBt7L/PfBll7TpLNdlHwn42OnEJ/GivFIH+AXOelI8ZhppmFv5NyGmmrEnE7
         9rFMEHcyTgzzDEUJLIaVC5OnqiNC1L3nZgFW1ACZdl2ZmwIlp7F6DFojNzclZtRUSqh3
         uTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=zOFkK97O8jweTT1bOAw65sZ4EgGnr5SNEDZxTqc9efI=;
        b=NmKrM1s6X9C1PzzFZaU0zY7HjU2yEnegS+/aNXp7zIsPBZJOPrhp/j9mMsoZd5wzdC
         5UE4iXBZqxgvAY6kfbZONt6PaPXEgG7CuZH4pewdp5k3lbX4B8QpiIc38BHJFZFElEed
         cfvOA6owPNrcfgAD8vA6BgIVW9q2lIkHxHWZ9g8XCRssm0S0/6eCu0UvCOGTnNt1NaDH
         KBEc9jJwz5fs3dG2fxexsGHQSQMPfpyNLyqqStUV2wCPcvHXXTUSkvMBYVrDw/82wRCd
         8h37WN+Mc8huZU6BqIXG40kZkzyeDGLMrq5O1ALqLycUux/BnpQfRhC0P89UhtOhbc44
         q1MA==
X-Gm-Message-State: AIkVDXITfL6ABR0z//qlYe0RReJShGLzMOGjTYQtBkCB4sC/sfGu9z3jSdZx3L1hSpKUzw==
X-Received: by 10.157.9.208 with SMTP id 16mr23844626otz.12.1483321180637;
        Sun, 01 Jan 2017 17:39:40 -0800 (PST)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_943C1FDD-40E9-4B7A-8313-1FC8BC93611D"
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Sun, 1 Jan 2017 19:39:38 -0600
References: <68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>
Message-Id: <4F81C4B3-94D3-4F62-9B83-7564BDF36B6D@gmail.com>
X-Mailer: Apple Mail (2.3259)
Subject: [oss-security] Re: Multiple issues in OpenH264 1.5.1

--Apple-Mail=_943C1FDD-40E9-4B7A-8313-1FC8BC93611D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 1, 2017, at 7:32 PM, Brandon Perry <bperry.volatile@gmail.com> wro=
te:
>=20
> Recently, Firefox updated their OpenH264 plugin to 1.6. Earlier this year=
, I reported multiple crashes I had found while fuzzing version 1.5.1 of th=
e decoder (which was what was shipped at the time).
>=20
> While these issues have been resolved on the 1.6 branch of the openh264 c=
odebase for some time (a year?), it doesn=E2=80=99t seem like Firefox got t=
he update until recently (correct me if I=E2=80=99m wrong), which is why I =
am releasing my fuzz results. I initially reported these to Mozilla, but co=
llided with Tyler Smith, one of their security engineers who had also been =
fuzzing the decoder. I am not sure if these issues got CVEs or not, but I d=
on=E2=80=99t see any.
>=20
> https://raw.githubusercontent.com/brandonprry/openh264-fuzz/ <https://raw=
.githubusercontent.com/brandonprry/openh264-fuzz/>
Whoops, mislinked.

https://github.com/brandonprry/openh264-fuzz <https://github.com/brandonprr=
y/openh264-fuzz>
>=20
> Attached is the README for the linked GitHub repo, which shows the three =
distinct bugs and their stack traces. There might be another bug or two tha=
t I missed during triage. None of the crashes work on 1.6, which is now shi=
pped with up-to-date Firefox installs.
>=20
> Happy New Year!
>=20
> <README.md>


--Apple-Mail=_943C1FDD-40E9-4B7A-8313-1FC8BC93611D--
