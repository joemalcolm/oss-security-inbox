X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2163" "Monday" "19" "March" "2018" "19:16:17" "-0400" "Gordo Lowrey" "gordo@zeneval.com" "<1521501377.17063.0@smtp.gmail.com>" "78" "Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter" nil nil nil "3" "2018031923:16:17" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" (number mark "U       gordo@zeneva Mar 19   78/2163  " thread-indent "\"Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter\"\n") "<CAL3XhzYp1A0UY8nDW_sQXR_B3NoOwEsakh0J=oma46HB9zFx=g@mail.gmail.com>" ("<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>" "<CAL3XhzYp1A0UY8nDW_sQXR_B3NoOwEsakh0J=oma46HB9zFx=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18205 invoked by uid 550); 20 Mar 2018 11:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7558 invoked from network); 19 Mar 2018 23:16:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=zeneval.com; s=google;
        h=date:from:subject:to:message-id:in-reply-to:references:mime-version;
        bh=BGe3XU20fCHY9fTGXEJQANJvz4/H1UgkCEGQSXFmQpA=;
        b=NPOy2oyk7OsXuYxx7FFjbHOY4QeKhh31gwWlPDM75wRh1gk1n+iyT+CpQT3MR5kuux
         /rKDYdQhmqmziPFsnvZU7fnatV/+5rubkmmlQPOCCsgsLlELDokyOA8Gyu7iFKri457O
         fuKvyG4D7h0QtKc0stAVOxz9Vvj6NJ9DXPzBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:in-reply-to
         :references:mime-version;
        bh=BGe3XU20fCHY9fTGXEJQANJvz4/H1UgkCEGQSXFmQpA=;
        b=OPbWnGONxPsmFj0VypwbwlXzVGlBjnRtcd9ehyx377PIYSwz9WdwL0+md3wSUjYchZ
         xMUfauwXnndv0WrlQ9aLx8dVw9rSInOjCzQurbkgs0Rew5Ul7Mgby3aFuS6Gn8RZXPoy
         o3eq1zs1ydfeV7ZFjGSlCLFQ3+1oX0oUF/TZXFh0DT0H9xAoxmFoJ1dl4CGpuH/PIoD3
         aePAxriAGwbuJtlBfFBey9PWl2t7N4k9fDzmUanYJrhQuC1tBu7UraLDDR/sENtfDaVl
         /bHwjCSgIu2MySITuE1pyobX3w0GddKToZaaNmkugwK6Gi2vyoZig728kVXpEz6ZHxS1
         IDhQ==
X-Gm-Message-State: AElRT7HK0eRf1kdrBkWp1eOmaV2mMA5nwMH00+1vZV3QoIM5nHTR6jr/
	TBFcLhroWj7569rHgZ0UQPfQv93V8b8=
X-Google-Smtp-Source: AG47ELvbVZ8wixg9ECTPHoYlOnbzDn2V0ibI9MOz0gJotbA7zIPLcUiAsFSeFDg9mXAHsmgHarztow==
X-Received: by 10.55.2.140 with SMTP id v12mr19922704qkg.251.1521501379825;
        Mon, 19 Mar 2018 16:16:19 -0700 (PDT)
Date: Mon, 19 Mar 2018 19:16:17 -0400
From: Gordo Lowrey <gordo@zeneval.com>
To: oss-security@lists.openwall.com
Message-Id: <1521501377.17063.0@smtp.gmail.com>
In-Reply-To: 
 <CAL3XhzYp1A0UY8nDW_sQXR_B3NoOwEsakh0J=oma46HB9zFx=g@mail.gmail.com>
References:
	<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
	<CAL3XhzYp1A0UY8nDW_sQXR_B3NoOwEsakh0J=oma46HB9zFx=g@mail.gmail.com>
X-Mailer: geary/0.12-dev
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-V2iT52BES9Ci/obhSLIk"
Subject: Re: [oss-security] CVE request: maliciously crafted notebook files in
 Jupyter

--=-V2iT52BES9Ci/obhSLIk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Obviously, running a python notebook from an untrusted party is a bad=20
idea, since notebooks are litearlly code executors...

Sure, there is something to be said about *javascript* execution... but=20
there are a plethora of addons for Python notebooks that generate=20
Javascript on-demand. Especially for visualizations, etc...

Why is this a "vulnerability" necessarily?

Just curious...


On Mon, Mar 19, 2018 at 7:53 AM, Ricter Zheng <ricterzheng@gmail.com>=20
wrote:
> Hi Thomas Klutver,
>=20
> I am a student from china major in information security, I'm very=20
> interest
> about the vulnerability. I tried to reproduction the vulnerability but
> failed, so can you provide some technology detail about it?
>=20
> Thank you.
> --
> Ricter Zheng
>=20
> Thomas Kluyver <thomas@kluyver.me.uk>=E4=BA=8E2018=E5=B9=B43=E6=9C=8815=
=E6=97=A5=E5=91=A8=E5=9B=9B=20
> =E4=B8=8B=E5=8D=8810:27=E5=86=99=E9=81=93=EF=BC=9A
>=20
>>  Email address of requester: security@ipython.org,=20
>> thomas@kluyver.me.uk,
>>  benjaminrk@gmail.com, jkamens@quantopian.com,=20
>> ssanderson@quantopian.com
>>=20
>>  Software name: Jupyter Notebook (formerly IPython Notebook)
>>  Type of vulnerability: Maliciously forged file
>>  Attack outcome: Possible remote execution
>>=20
>>  Vulnerability: A maliciously forged notebook file can bypass=20
>> sanitization
>>  to execute Javascript in the notebook context. Specifically,=20
>> invalid HTML
>>  is 'fixed' by jQuery after sanitization, making it dangerous.
>>=20
>>  Affected versions:
>>=20
>>  - notebook =E2=89=A4 5.4.0
>>=20
>>  URI with issues:
>>=20
>>  - GET /notebook/**
>>=20
>>  Patches:  not yet finalised
>>=20
>>  Mitigations:
>>=20
>>  Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
>>  If using pip,
>>=20
>>      pip install --upgrade notebook
>>=20
>>  For conda:
>>=20
>>      conda update conda
>>      conda update notebook
>>=20
>>  Vulnerability reported by vkgonka@mail.ru , via Jonathan Kamens at
>>  Quantopian
>>=20
>>  --
> Ricter Z

--=-V2iT52BES9Ci/obhSLIk--

