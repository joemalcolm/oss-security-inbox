X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2328" "Monday" "2" "November" "2015" "02:37:08" "-0600" "Austin English" "austinenglish@gmail.com" "<CACC5Q1dRGnLHyxwEznn5Hm+Pym_ijXAsQuAT=AD16zaeUWSLgw@mail.gmail.com>" "66" "Re: [oss-security] Re: CVE request for wget" nil nil nil "11" "2015110208:37:08" "[oss-security] Re: CVE request for wget" (number mark "        austinenglis Nov  2   66/2328  " thread-indent "\"Re: [oss-security] Re: CVE request for wget\"\n") "<CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>" ("<CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>" "<20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>" "<20151001231046.GB16643@hunt>" "<CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24570 invoked by uid 550); 2 Nov 2015 08:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24546 invoked from network); 2 Nov 2015 08:38:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=tlGKkPbXuuhPGLF+CS3oaT2OR2bhtvmCK1f/1MwHeLc=;
        b=Dq4Crl/x82WpD1uYfCvFdhZPdwSA/erNNWGsyy433SCAeX3n4eFl+IvOsyNoTApkmb
         vEu9/90DXGques/zM5Z9KFeq45Rotb1WEdCT8Lo2GDgyFTxisVgHZKQWahWy5Sxwv0d2
         G7qlVO/18F3MkD42nzaBB1uo2kdlH6HNQPJieGydmtej9x3EwyPHIRgD047AJT10O048
         43SW36UDO67lryTHGRYMjtNgwwXdvjJqS5kM+SJwojjX0COOmUMneDANtaZZALzE1Tqu
         2RovdC0tvTpHrWHDjYEQP8FendsQPT4ssgJAlN/K9z3SAHZr9YD5z7xQA1SdqEvWwhIY
         wtAQ==
X-Received: by 10.107.35.16 with SMTP id j16mr21446643ioj.120.1446453467454;
 Mon, 02 Nov 2015 00:37:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>
References: <CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>
 <20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org> <20151001231046.GB16643@hunt>
 <CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>
Message-ID: <CACC5Q1dRGnLHyxwEznn5Hm+Pym_ijXAsQuAT=AD16zaeUWSLgw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11405fc01ca08e05238ab1cb
Date: Mon, 2 Nov 2015 02:37:08 -0600
From: Austin English <austinenglish@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for wget
To: cve-assign@mitre.org, Austin English <austinenglish@gmail.com>, 
	oss-security@lists.openwall.com

--001a11405fc01ca08e05238ab1cb
Content-Type: text/plain; charset=UTF-8

The fix has been released in 1.7-rc1,
https://tails.boum.org/news/test_1.7-rc1/index.en.html

On Mon, Oct 26, 2015 at 3:21 PM, Austin English <austinenglish@gmail.com>
wrote:

> On Thu, Oct 1, 2015 at 6:10 PM, Seth Arnold <seth.arnold@canonical.com>
> wrote:
> > On Thu, Oct 01, 2015 at 06:57:26PM -0400, cve-assign@mitre.org wrote:
> >> If there is any additional Tails vulnerability related to this,
> >> another CVE ID may be needed. For example,
> >>
> >>   https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00050.html
> >>
> >> says
> >>
> >>   to be 100% sure, you should add --passive-ftp to your command line.
> >>   If you don't do that, your /etc/wgetrc or ~/.wgetrc could include
> >>   --no-passive-ftp (or passiveftp = off).
> >>
> >> If Tails is supposed to try to ensure that, perhaps there's a
> >> requirement to have something like:
> >>
> >>   alias wget="wget --passive-ftp"
> >>
> >> in a system-wide location (possibly /etc/bash.bashrc). The concept of
> >> CVE IDs for "failure of a torify step" issues is new, and we aren't
> >> sure of the best approach.
> >
> > I suspect using a bash alias in a site-wide config might then qualify for
> > another CVE in the future, along the lines of "programs that spawn wget
> > via system(3), popen(3), or exec family of functions can use unsafe
> active
> > mode by accident". If Tails is in the business of fixing these things
> > for safety, removing active ftp support from tools seems like better fix.
> >
> > Thanks
>
> A fix has been applied to Tails git:
>
> https://labs.riseup.net/code/projects/tails/repository/revisions/b9fd6312435d55dd0bc0b6abdb7994da4d66e2b2
>
> In short, the wget binary is moved to /usr/lib/wget/wget, and a
> wrapper script is put in place in /usr/bin/wget. The wrapper ensures
> that wget is called via torsocks, and additionally, also forces
> --passive-ftp.
>
> Moving wget to /usr/lib/wget/wget gets the potentially dangerous wget
> binary out of $PATH. A dedicated attacker could check if /usr/bin/wget
> is a script and then parse it to find the actual binary, but that
> would need to be a very dedicated attacker and at that point, there
> are more feasible attacks available.
>
> --
> -Austin
>



-- 
-Austin

--001a11405fc01ca08e05238ab1cb--
