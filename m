X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1198" "Wednesday" "14" "September" "2016" "10:22:58" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>" "36" "Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016091416:22:58" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        kseifried@re Sep 14   36/1198  " thread-indent "\"Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<20160914092135.GA16607@inutil.org>" ("<nqpirj$fvm$1@blaine.gmane.org>" "<nraqt1$a2m$1@blaine.gmane.org>" "<8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>" "<1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>" "<20160914092135.GA16607@inutil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19693 invoked by uid 550); 14 Sep 2016 16:23:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19673 invoked from network); 14 Sep 2016 16:23:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=mMw5VsZCMP/p9NwKlPgYeYsNNKQfz5AYdQk8mZNuk4A=;
        b=mnVY07uzIQCAbca6ljTsmZmg8UfNfR62RdMhFETQUZKB5zJLaEjd7kTLr5AySNN8jE
         cUleh2lZOgOOb1dhUM75GMrLvSMhKcBc28XM1kDUFhGfAI3WVHWdpA/McTfEqEYo07Gs
         kFDtj6kP69K4UoSr5ue+TIRgx/wCJOsZn82JVKEUObvS0tT3A02nzkjnmsuJ1Hf7phJO
         CXsKzB6aD1yl432BnZACEcsvpLOEyfpaYVo4eVZXn4tUsBb+C6fZCpoBFzN+w0Uhh8wC
         pW1oJdrF6E4kPIzdJga/3Ei9X/2Nj8fijNwt0+meeQ7fKWHIPaGR+TUmH1q0yAegHUDE
         O+9g==
X-Gm-Message-State: AE9vXwPpms8gA6d9WLf+qU0hs0lXySUI6/bHOzAFcxzQapLexisrZRXKqJK/XccQqYrpU8m1FLHgvFkVmsIGaEJv
X-Received: by 10.202.237.143 with SMTP id l137mr3343410oih.121.1473870178666;
 Wed, 14 Sep 2016 09:22:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160914092135.GA16607@inutil.org>
References: <nqpirj$fvm$1@blaine.gmane.org> <nraqt1$a2m$1@blaine.gmane.org>
 <8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>
 <1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org> <20160914092135.GA16607@inutil.org>
Message-ID: <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d2f5271dff2053c7a2422
Date: Wed, 14 Sep 2016 10:22:58 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow
 SQL injection
To: oss-security <oss-security@lists.openwall.com>

--001a113d2f5271dff2053c7a2422
Content-Type: text/plain; charset=UTF-8

Ideally people should get CVEs and then post to oss-security with the
information and the CVE. A lot of people consume the list data and the
current method means that people end up searching their DBs, making sure
it's new, then entering it, then updating it with a CVE. If people got CVEs
first this would vastly simplify things.

On Wed, Sep 14, 2016 at 3:21 AM, Moritz Muehlenhoff <jmm@debian.org> wrote:

> > > I noticed that in your original e-mail to this list, you did not cc
> > > cve-assign.
> >
> > That's true, but I never did in the past, as this mailing list is (or
> was?)
> > monitored by mitre, so posting here has been sufficient until now.
>
> That said, I really hope that MITRE will continue to use this list for CVE
> assignments. List members have often followed up with information on CVE
> requests which noone would be able to provide for the web-based approach.
>
> Cheers,
>         Moritz
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d2f5271dff2053c7a2422--
