X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2590" "Wednesday" "14" "September" "2016" "17:08:31" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0JNongOXWU3NE22_fEwAVHUW=ydeKhqv2zkwTP1sv53g@mail.gmail.com>" "84" "Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016091423:08:31" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        kseifried@re Sep 14   84/2590  " thread-indent "\"Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<20160914223729.GL25324@hunt>" ("<nqpirj$fvm$1@blaine.gmane.org>" "<nraqt1$a2m$1@blaine.gmane.org>" "<8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>" "<1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>" "<20160914092135.GA16607@inutil.org>" "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>" "<20160914223729.GL25324@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20013 invoked by uid 550); 14 Sep 2016 23:08:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19989 invoked from network); 14 Sep 2016 23:08:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=C+DTHmFWZB0EftmdjekNRfMddrLiHWtPyxxtWM+tdhY=;
        b=ch7S04VZspHX1/j/+UdtWOv7Bi1LS1e3YT6fz+niqRdKMWbHQSdGTWJnAFZD+u08XT
         363cZdinOPNrW8McEDYFUIPgHTr892ST10qms/tSPiXQkvU+w/4fJZTZp6L3e4fOFqwT
         wyZLA3K+dkxLOQM/tDXEh0TPyY1uHx0qyz4zeoUt4OgHDrf6vRQKUml4wAFwGqDr4+GB
         EdXcCZL5+U78zAL0aJYSzBVoFE8gEBkCHdVaAlFjnjmHo2KNTJTDxFo4vnVNifmw+wmr
         k4srnyST+gs6RH7TsTDJWcNy70fcCE1Oco0hfKZOorEQCnyCrC7WycFvUB128DS2VTl6
         2d4A==
X-Gm-Message-State: AE9vXwMD4xlsvdKKYzWD9FRKmmjystvvzmXnLv263/MCf+6NRe7GnjQcsVwsNZ6iDQmdQw7wFnUsgC3odL9WwoL4
X-Received: by 10.202.179.214 with SMTP id c205mr4934979oif.190.1473894511965;
 Wed, 14 Sep 2016 16:08:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160914223729.GL25324@hunt>
References: <nqpirj$fvm$1@blaine.gmane.org> <nraqt1$a2m$1@blaine.gmane.org>
 <8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>
 <1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>
 <20160914092135.GA16607@inutil.org> <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
 <20160914223729.GL25324@hunt>
Message-ID: <CANO=Ty0JNongOXWU3NE22_fEwAVHUW=ydeKhqv2zkwTP1sv53g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ce0aad2c09a053c7fcec1
Date: Wed, 14 Sep 2016 17:08:31 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow
 SQL injection
To: oss-security <oss-security@lists.openwall.com>

--001a113ce0aad2c09a053c7fcec1
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 4:37 PM, Seth Arnold <seth.arnold@canonical.com>
wrote:

> On Wed, Sep 14, 2016 at 10:22:58AM -0600, Kurt Seifried wrote:
> > Ideally people should get CVEs and then post to oss-security with the
> > information and the CVE. A lot of people consume the list data and the
> > current method means that people end up searching their DBs, making sure
> > it's new, then entering it, then updating it with a CVE. If people got
> CVEs
> > first this would vastly simplify things.
>
> I don't like the idea of waiting on CVE assignment before posting
> information here:
>
> - MITRE's team does impressive work, but some assignments take
>   significantly longer than others; a request here, publicly, allows users
>   to mitigate or fix before a number is known.
>

So join the DWF and help us get the OpenSource CVEs out quicker.


> - In cases when there are no fixes yet, or incomplete fixes, it may not be
>   known how many CVEs are even needed -- making the issues widely known
>   earlier increases the chances of someone preparing patches, to clarify
>   how many issues existed.
>

Also solved in DWF land (
https://github.com/distributedweaknessfiling/DWF-Database), I explicitly
setup the DWF up to handle this, the database explicitly supports a
"REPLACED_BY" state for a CVE:

REPLACED_BY

A list of one or more CVE's that have replaced this entry and what the
relationship is (e.g. a CVE split may break a single existing CVE into
multiple CVEs). The format is RELATION:CVE, if there are multiple entries
they are comma separated (the entire field is quoted). Valid relationships
are currently:

DUPLICATE_OF
SPLIT_TO
SPLIT_FROM
MERGED_TO
MERGED_FROM
REJECT

This field is only used if the CVE is split/merged/found to be a duplicate
or rejected.

So if we need to clean things up later, we can easily.



>
> - With MITRE's reduced scope of CVE coverage, there's the risk that
>   software that's important to list members or the wider computing public
>   may not get a number at all. Not getting a number assigned may give the
>   impression that the issue isn't important.
>

This is the Open Source Security List. The DWF mandate is all Open Source.
So once the DWF is up and running the Venn diagram of oss-security and DWF
is basically a single circle =).


>
> Thanks
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113ce0aad2c09a053c7fcec1--
