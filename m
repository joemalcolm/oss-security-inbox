X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1530" "Wednesday" "2" "March" "2016" "21:55:19" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1YVJf505LzrJ7UtG5YpBys1gabo4Bd0e5h95PUP62Wxg@mail.gmail.com>" "58" "Re: [oss-security] Mitre, reserved CVEs and oss-security?" "^Cc:" nil nil "3" "2016030304:55:19" "[oss-security] Mitre, reserved CVEs and oss-security?" (number mark "        kseifried@re Mar  2   58/1530  " thread-indent "\"Re: [oss-security] Mitre, reserved CVEs and oss-security?\"\n") "<1456968329.26654.16.camel@bonedaddy.net>" ("<1456968329.26654.16.camel@bonedaddy.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5793 invoked by uid 550); 3 Mar 2016 04:55:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5775 invoked from network); 3 Mar 2016 04:55:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=8FA8SYOQQhDeRAXaLZ80QkSo4X3THJIaPSOjdEjxUwY=;
        b=KOOM5oGzbDtmewZ2oIfzxMbOpxxHm9nfR3MlakE5ab7R6c2GxL5zZ61Lrokv89VEIK
         ZzPFZSlc3/nnrl8NZhEO3605JpItFUB8ESBYEI7WpbH31jy17r1iTYy9UdpletAkaytt
         wxUnDWJ1TolllaJvpyNkMBKyk3J65kbbL1IZtY70pvAhAebP5MdmucmhZx5NWUO55bp7
         CB6AyjWD4+q+5L/u0fpqy1YmKowHQ8riTCcdFtAcmO+Dj3lgZYyTTtFrL3QtFp45TuXa
         f90lD7NQYiH1fcEik07Ll8MNSAZ4azAIlVJ+1VdS7Q0gYk8jgx3cLcJtNrf7xzMxSMtN
         1iwg==
X-Gm-Message-State: AD7BkJJf/eKwYk03telbvxwXsaMGprPOEYlC+/p2YLu/U2JIc35KJD6l6R7oRiObGlka9zAgJuse/gMP5kxTgKHs
MIME-Version: 1.0
X-Received: by 10.13.235.7 with SMTP id u7mr306840ywe.97.1456980920082; Wed,
 02 Mar 2016 20:55:20 -0800 (PST)
In-Reply-To: <1456968329.26654.16.camel@bonedaddy.net>
References: <1456968329.26654.16.camel@bonedaddy.net>
Message-ID: <CANO=Ty1YVJf505LzrJ7UtG5YpBys1gabo4Bd0e5h95PUP62Wxg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0873062fdcd6052d1dce74
Cc: cve@mitre.org
Date: Wed, 2 Mar 2016 21:55:19 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitre, reserved CVEs and oss-security?
To: oss-security <oss-security@lists.openwall.com>, 
	cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>

--94eb2c0873062fdcd6052d1dce74
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 2, 2016 at 6:25 PM, Paul Wise <pabs3@bonedaddy.net> wrote:

> Hi all,
>
> I think it would be a good idea for Mitre to remove the RESERVED mark
> from CVEs that have been released for use by people mailing issues to
> the oss-security to get CVE numbers. The CVE database could then point
> at the oss-security mailing list archives as a reference for the issue.
>
> Any thoughts?
>
> For example CVE-2016-2515 could refer to one of these posts:
>
> http://www.openwall.com/lists/oss-security/2016/02/20/1
> http://www.openwall.com/lists/oss-security/2016/02/20/2


I had suggested this in past (several years ago to the original Steven),
and again in this email last November:

https://cve.mitre.org/data/board/archives/2015-11/msg00018.html

my understanding is it's a no go due to two main factors:

1) CVE database lacks a good update mechanism to inform people of updated
entries
2) CVE entries must be "complete" before being added (e.g. researched/full
write up/etc.).

I could of course be wrong, we never actually got a response from Mitre on
my November email about this.

I'd be happy to bring it up on the board list again (CC'ed). Mitre can you
enlighten us please?


>
>
> --
> bye,
> pabs
>
> http://bonedaddy.net/pabs3/
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0873062fdcd6052d1dce74--
