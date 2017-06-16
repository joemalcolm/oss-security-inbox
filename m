X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2684" "Friday" "16" "June" "2017" "15:09:09" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2QDq=85miG_W0EixwAsVRfO_8bExCHPNX1D5Coe6UBaw@mail.gmail.com>" "90" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061621:09:09" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        kseifried@re Jun 16   90/2684  " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<20170616204437.GC2269@hunt>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9381 invoked by uid 550); 16 Jun 2017 21:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9363 invoked from network); 16 Jun 2017 21:09:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=jNjHePsmXZAGFkHmKx4gAoTMBQSzyCqp3VzmaJMzD94=;
        b=YK7SvsDQM++ztnttNtpTKTXGmpnAtVaAAJH7WV79kOkwuNdG0RTRhPjcylR7XGu5Z8
         QW3Hdk1USYHw9kDb1xOPgYffIjQEuX67PRkRVLeILuVcwckXaZnJ/fKFIbMsUaZSeW6Z
         Kb/ZJh3b0YPhhgOQKax29vycyQI9pFXsWgySSOvUYu72pcdCmEuRMBLriwcaFu0a+9XB
         Uf4mIKsCpM6fmKii66eHC7KhTUvk6pbXCVkLnlVDJ7GzdxSBSwmF41aFfO9CflIDQLSp
         46NEKH2cPoR/8msRg8nPP3F1DNyBhBy1vU+CaIYBsgAZ7Ujc95m7JvATY7Pvxiiuq0FU
         C3uA==
X-Gm-Message-State: AKS2vOxCwxjCJbsuBHSVQ5Slpsw2L+JycqJsa7mAhZamXFtbxJtGZ8Dv
	JdJZ9emqar0cnckq3em5uDh3tEeD9azSzJvheg==
X-Received: by 10.202.175.135 with SMTP id y129mr2422567oie.108.1497647350031;
 Fri, 16 Jun 2017 14:09:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170616204437.GC2269@hunt>
References: <tencent_18C312B86EA079DA42B11D83@qq.com> <20170616204437.GC2269@hunt>
Message-ID: <CANO=Ty2QDq=85miG_W0EixwAsVRfO_8bExCHPNX1D5Coe6UBaw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113ce9804c566805521a32a5"
Date: Fri, 16 Jun 2017 15:09:09 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security <oss-security@lists.openwall.com>

--001a113ce9804c566805521a32a5
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 16, 2017 at 2:44 PM, Seth Arnold <seth.arnold@canonical.com>
wrote:

> On Fri, Jun 16, 2017 at 11:53:09AM +0800, fefe wrote:
> > I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)
> > [...]
> > The poc code like:
> >
> >       if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE |
> REG_NOSUB )==0)
> >       {
> >               reg1match_t pmatch[1];
> >               regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
> >               regfree(&regtmp);
> >       }
> >
> > [...]
> >
> > The poc code like:
> >
> >       if(regcomp (&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\
> x3F\x3F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\xBD",
> REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
> >       {
> >               reg1match_t pmatch[1];
> >               regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
> >               regfree(&regtmp);
> >       }
>
> A question to the wider list:
>
> Does it make sense to assign CVEs to regex compilation? Very few toolkits
> handle this well, and even given how many regex toolkits use backtracking,
> even 'safe' regexes can lead to essentially unbounded execution time.
>

I would say it depends, are they actually exploitable in a realistic sense
by an attacker? (e.g. dir globbing on ftp servers should not let anonymous
ftp users eat all the CPU/RAM).


>
> Some regex engines like Rust's regex and Go's regex should handle
> untrusted inputs well: they're non-backtracking engines and type-safe
> languages.  Hypothetical crashes like this probably would qualify for
> CVEs in either of these environments. But I'm less convinced it makes
> sense with C-based engines to allow untrusted inputs.
>
> http://www.etalabs.net/compare_libcs.html suggests that uclibc's regex is
> DFA-based thus it's probably intended to allow untrusted inputs -- but is
> that explicitely stated as a goal anywhere?
>

I would also suggest we look at common usage. E.g.:

https://docs.python.org/2/library/pickle.html

Warning


The pickle <https://docs.python.org/2/library/pickle.html#module-pickle> module
is not secure against erroneous or maliciously constructed data. Never
unpickle data received from an untrusted or unauthenticated source.


However:


http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=python+pickle


and if you search github for socket and pickle... well.. yeah.


>
> Thanks
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113ce9804c566805521a32a5--
