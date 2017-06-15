X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2192" "Thursday" "15" "June" "2017" "08:21:29" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" "64" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Cc:" nil nil "6" "2017061514:21:29" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        kseifried@re Jun 15   64/2192  " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<1497534642.3053.3.camel@redhat.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5479 invoked by uid 550); 15 Jun 2017 14:21:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5458 invoked from network); 15 Jun 2017 14:21:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DWfQ1GTXBXpCi/L8ZOSCm7U66j54Ez9NVr1Gixwuexk=;
        b=SMIqCbvzWrRDyhYWEGFnioP7LRmJwJ36HB1MesEpmq2ZQ5/IbG1OLOGu4XsuxJihh1
         FXZ3Es6Sz+rFlE7E94m9OPpuTr9XTtiX9IkbXxnSdEJfIDtA7vFPeOnJvqI9Lh8Qq2/p
         aRlofvb4Ujjezdq+Drr4hjpsBTw7+TbWH7V/2lfCGLl1F5PokGaX95j+vrAO98Io2Lmx
         BmETBNh8BCdsHr+Bpk7AQZzmoc3wsEVwWQNJwxyCWcu0xg4/7fnL21Y+OzwK6RRYb4Qm
         qOr6iEL+9lKZmDIRGweD8JwOO13IezDSaEMnYaasR8j1PCHtbAG8VZF1yDPvEADlDi3s
         AZHw==
X-Gm-Message-State: AKS2vOxAOksuFKU43NSWGH4G6TF0xMfjMvF0YMejsm2gP2GY+QI2eK+d
	7EDAK/aNJSoQfeLVRFcVdIeasIE0A3rqldg=
X-Received: by 10.157.28.134 with SMTP id l6mr3082031ota.87.1497536490147;
 Thu, 15 Jun 2017 07:21:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1497534642.3053.3.camel@redhat.com>
References: <201706082349.03355@pali> <201706122347.54536@pali> <1497534642.3053.3.camel@redhat.com>
Message-ID: <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f4030435c9b08910e00552006297"
Cc: pali.rohar@gmail.com
Date: Thu, 15 Jun 2017 08:21:29 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()
To: oss-security <oss-security@lists.openwall.com>

--f4030435c9b08910e00552006297
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This does bring up an old question:

Should we assign CVEs for code examples/documentation? E.g. We assign CVEs
for code shipped to people in digital form. Why not assign CVEs for code in
documentation or commonly used examples? We can go with the rational that
CVEs get assigned to the affected code bases (e.g. when someone implements
that documentation/code), but it might also be good to educate the
community about bad examples/documentation/etc.

My thinking is:

1) Official documentation that says "do this [insecure thing]" should
probably get a CVE (e.g. "turn off all the encryption to make it work more
easily"). This should probably get a CVE, especially as it results in
operational changes which won't get a CVE (since it's not in code that
"ships", it's just on the end of whoever is using it).

2) Official code examples, as above, actual implementations get CVEs, it
might be useful to raise awareness that the example is bad.

3) Unofficial but commonly used documentation and code examples, I guess
the best example here is stackoverflow and friends?

Thoughts/comments (feel free to reply privately if you don't want to be
public)? I'd like to collect what people think and then present it to the
CVE board later (this has been on my long term todo list).


On Thu, Jun 15, 2017 at 7:50 AM, Adam Maris <amaris@redhat.com> wrote:

> On Mon, 2017-06-12 at 23:47 +0200, Pali Roh=C3=A1r wrote:
> > Hello!
> >
> > Any idea how to handle this particular problem?
> >
> >
>
> Hi!
>
> Given that Oracle (silently) updated the vulnerable example in their
> documentation, this likely indicates the way to handle this -
> applications that copied the vulnerable example needs to be fixed and
> CVEs will be assigned per application.
>
> Best Regards,
>
> --
> Adam Mari=C5=A1, Red Hat Product Security
> 1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2
>



--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f4030435c9b08910e00552006297--
