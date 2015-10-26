X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1936" "Monday" "26" "October" "2015" "15:21:23" "-0500" "Austin English" "austinenglish@gmail.com" "<CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>" "46" "Re: [oss-security] Re: CVE request for wget" nil nil nil "10" "2015102620:21:23" "[oss-security] Re: CVE request for wget" (number mark "        austinenglis Oct 26   46/1936  " thread-indent "\"Re: [oss-security] Re: CVE request for wget\"\n") "<20151001231046.GB16643@hunt>" ("<CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>" "<20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>" "<20151001231046.GB16643@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5246 invoked by uid 550); 26 Oct 2015 20:22:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5225 invoked from network); 26 Oct 2015 20:22:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=lSlDV/+QP1h4GSvZhvDf9/9u+xscmrUEBHkfz8eor28=;
        b=R4UA30DLs3ZVvmIr1au5ko4ziZQSJied26RSaDkLioEC0RFdWpFqhKX7AGcfBpPsmx
         qk9LoG0LdHTpygvKyT4JcSNwRH5EaK/hql4LN7EyOT28rQAqf+K8nORd/pvMFVjCkefW
         Tf3l6NnIE8UUNhkWJfd4eyIGC2mm83ZH/fmLUhmPOr6dBZIZIvXHyM+gR4375pDhN5vJ
         YUlE/Aq7cKGxzopI3mlK+veN+QmZyckJDEWKAwd4d6FrMODOY/abUtiDfGQGHWurGVb6
         +FN8THvESXvJAvozA1rRqHAC/tsy5DrBulPpM4YeZNuKxs8NKyn+MMvxURmM24VRsV5O
         o9yw==
X-Received: by 10.107.19.106 with SMTP id b103mr34502588ioj.144.1445890923089;
 Mon, 26 Oct 2015 13:22:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151001231046.GB16643@hunt>
References: <CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>
 <20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org> <20151001231046.GB16643@hunt>
Message-ID: <CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 26 Oct 2015 15:21:23 -0500
From: Austin English <austinenglish@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for wget
To: cve-assign@mitre.org, Austin English <austinenglish@gmail.com>, 
	oss-security@lists.openwall.com

On Thu, Oct 1, 2015 at 6:10 PM, Seth Arnold <seth.arnold@canonical.com> wrote:
> On Thu, Oct 01, 2015 at 06:57:26PM -0400, cve-assign@mitre.org wrote:
>> If there is any additional Tails vulnerability related to this,
>> another CVE ID may be needed. For example,
>>
>>   https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00050.html
>>
>> says
>>
>>   to be 100% sure, you should add --passive-ftp to your command line.
>>   If you don't do that, your /etc/wgetrc or ~/.wgetrc could include
>>   --no-passive-ftp (or passiveftp = off).
>>
>> If Tails is supposed to try to ensure that, perhaps there's a
>> requirement to have something like:
>>
>>   alias wget="wget --passive-ftp"
>>
>> in a system-wide location (possibly /etc/bash.bashrc). The concept of
>> CVE IDs for "failure of a torify step" issues is new, and we aren't
>> sure of the best approach.
>
> I suspect using a bash alias in a site-wide config might then qualify for
> another CVE in the future, along the lines of "programs that spawn wget
> via system(3), popen(3), or exec family of functions can use unsafe active
> mode by accident". If Tails is in the business of fixing these things
> for safety, removing active ftp support from tools seems like better fix.
>
> Thanks

A fix has been applied to Tails git:
https://labs.riseup.net/code/projects/tails/repository/revisions/b9fd6312435d55dd0bc0b6abdb7994da4d66e2b2

In short, the wget binary is moved to /usr/lib/wget/wget, and a
wrapper script is put in place in /usr/bin/wget. The wrapper ensures
that wget is called via torsocks, and additionally, also forces
--passive-ftp.

Moving wget to /usr/lib/wget/wget gets the potentially dangerous wget
binary out of $PATH. A dedicated attacker could check if /usr/bin/wget
is a script and then parse it to find the actual binary, but that
would need to be a very dedicated attacker and at that point, there
are more feasible attacks available.

-- 
-Austin
