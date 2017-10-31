X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1397" "Tuesday" "31" "October" "2017" "12:53:22" "-0400" "Gordo Lowrey" "gordo@zeneval.com" "<1509468802.3617.0@smtp.gmail.com>" "40" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103116:53:22" "[oss-security] Fw: Security risk of vim swap files" (number mark "        gordo@zeneva Oct 31   40/1397  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031135005.GA12455@openwall.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031133559.7aqu2z45atxudb7c@jwilk.net>" "<20171031135005.GA12455@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19807 invoked by uid 550); 31 Oct 2017 17:22:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30343 invoked from network); 31 Oct 2017 16:53:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=zeneval.com; s=google;
        h=date:from:subject:to:message-id:in-reply-to:references:mime-version;
        bh=7zW/oy3O86hHv2Yyc1POyKzzCbfIs1YzTLnUjJFcIOI=;
        b=BQOqwBxtNfnDSG1aKTjgQxIog9fKzP9A4KCkoTk2fRgBcieTw/47uJaj3dKdNS+pFC
         pPWCzU25ZLN3MlZ7uxoh9HkWG/CwezDJbB6xPOdUrXJuoMaL/Exj4oJrNch6dYiu1sgU
         KefqhWGzTYWKYtRCMxoO28YRuUEgNG+eHYorY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:in-reply-to
         :references:mime-version;
        bh=7zW/oy3O86hHv2Yyc1POyKzzCbfIs1YzTLnUjJFcIOI=;
        b=IAc1ZJP+j7MN0ZBv+HW8tgV0ETZDtiCtwPFmAmZxjRVoxFGKRkQVW1crSpwpeuImLX
         8UWpk9yXY9Bl+cYkqWhnmrmc0+cVySY2J+xPnvoo/6r8mU9VcXWH1WI+DSe71r5taphU
         GbQJ/L8k/v0G6Y2EwK9kd0nPUdUf/eHgvFtH5+1JY8CnGzwdukB137esN2ROXkBWatAx
         yy3y9z0tRt9mwxZENanyAqTHDIOScf/BU7X4bLBf+1LeB1EFjOcKV/3q4DAAlT5Tv0jS
         +5z0U91z14EBVUlMexgkhccy/E+7agclJIqydZrWbr9GLbOFKCyYdDqYFJSjjVdKIyRc
         Lh4A==
X-Gm-Message-State: AMCzsaXeGvf47SceSINHNvazMS2j7Ygs3apabneMwc2jCAfcmmhp4MVl
	WggHAyyUfJCdq1zsKI/EKb4GY/AFHRY=
X-Google-Smtp-Source: ABhQp+SqMR+tnCKG0UIx8em6DZvf6rFVuFG4/8fR+hsBr2Jb8HsTMBnbaD2D0cQ+c9SzNb/dzVFN1g==
X-Received: by 10.55.16.220 with SMTP id 89mr3782234qkq.286.1509468803950;
        Tue, 31 Oct 2017 09:53:23 -0700 (PDT)
Message-Id: <1509468802.3617.0@smtp.gmail.com>
In-Reply-To: <20171031135005.GA12455@openwall.com>
References: <20171031132352.2df6d2ad@pc1>
	<20171031133559.7aqu2z45atxudb7c@jwilk.net>
	<20171031135005.GA12455@openwall.com>
X-Mailer: geary/0.12-dev
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-Cwd0xI9yJA/ew8OR+eQV"
Date: Tue, 31 Oct 2017 12:53:22 -0400
From: Gordo Lowrey <gordo@zeneval.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--=-Cwd0xI9yJA/ew8OR+eQV
Content-Type: text/plain; charset=us-ascii; format=flowed

It's not the fault of the program if an end-user insists upon use of a 
stupid configuration. There's no problem with VIM here IMO.

As others have said, your version control should ignore swap files, 
first of all, so they are not deployed.

If you do edit a file on the server, directly, then you should ensure 
proper configuration, which brings to the second point: you should put 
your swap/temp files into a directory that only you can control, like 
~/.vim/{backup/tmp} or ~/.local/tmp, etc...

On Tue, Oct 31, 2017 at 9:50 AM, Solar Designer <solar@openwall.com> 
wrote:
> On Tue, Oct 31, 2017 at 02:35:59PM +0100, Jakub Wilk wrote:
>>  There's another problem with vim swapfiles.
>> 
>>  If you edit a file directly in /tmp, vim will happily read a 
>> swapfile
>>  that were planted there by somebody else. Local users could exploit 
>> this
>>  for denial of service (or maybe worse if there are any swapfile 
>> parsing
>>  bugs...).
>> 
>>  Is that a bug in vim? Or is it a user error to edit file directly in
>>  /tmp?
> 
> Almost all manual uses of /tmp are user errors, yet we could want to
> harden programs to make such misuses less risky.
> 
>>  In the latter case, we should fix at least vipe(1) and vidir(1) from
>>  moreutils; and run-mailcap(1).
> 
> Alexander

--=-Cwd0xI9yJA/ew8OR+eQV--

