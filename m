X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Friday" "27" "March" "2015" "08:35:16" "-0500" "Jodie Cunningham" "jodie.cunningham@gmail.com" "<CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>" "36" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "3" "2015032713:35:16" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        jodie.cunnin Mar 27   36/1330  " thread-indent "\"[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>" ("<CABfY0L0rR1xe+C7CjcoUEMfO8x7VajEFUE4RaEP6WBSi+WdEPA@mail.gmail.com>" "<20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26073 invoked by uid 550); 27 Mar 2015 13:35:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26053 invoked from network); 27 Mar 2015 13:35:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0FeJOxMO7rBVs7uEk5JM1OZ/ODZ74dN5Zi+pIymVQLU=;
        b=e7lp5haT2q8QHFCGXVAn8rb/b6AvojJciCBmh12BynAJXmskHVaKkUbdjFzYqiK5Yd
         Vfoq6us6Tp95X6mEA34hzdxT/Wg5656kpH9wXSga+uaG19psfFQAEfv1V6eFSpHDfOD/
         +d5I0HVjY+J5IiQD8XNtnTQWf2sd/pxlzbLOOPaV/276U1IIO0Oz3uNvjBMTQWO2AwFE
         abD6JqPrWb/FvkN7yPpTfLl8xIL03rwcBMP2ceptPJsfbRvZSNrGYR4RMuoV1CfjajYh
         dcJMYNAMJZHYvfE1l56WATvAG4bDF7NYx32G2hWSchjiqjkba45vDlRo6mwIdRM6TyAT
         8rAA==
MIME-Version: 1.0
X-Received: by 10.112.146.129 with SMTP id tc1mr17518027lbb.27.1427463316138;
 Fri, 27 Mar 2015 06:35:16 -0700 (PDT)
In-Reply-To: <20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>
References: <CABfY0L0rR1xe+C7CjcoUEMfO8x7VajEFUE4RaEP6WBSi+WdEPA@mail.gmail.com>
	<20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>
Message-ID: <CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 08:35:16 -0500
From: Jodie Cunningham <jodie.cunningham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g
To: cve-assign@mitre.org

Firstly, a correction to my earlier statement about the fixed release:
1.0.0i is the first release to include the patch.


On Fri, Mar 27, 2015 at 1:54 AM,  <cve-assign@mitre.org> wrote:
>> #2:
> Does this refer to the missing "== NULL" tests within the
> allocate_cells function?

Yes

> Is a NULL pointer dereference going to occur
> before the code reaches a point where there can be stack corruption?

I don't believe so. It looks like these are initialized as NULL, and
if they are still NULL at this point in execution then we assume the
input file was malformed and exit with the appropriate return code.

> Or does it refer to the missing "> 1024 * 1024" test in the parse_SST
> function?
>> #4:
> Does this refer to the change from the "return ret;" code to the
> "errcode = ret; goto stop;" code?
> Or does it refer to one of the two possibilities listed above for #2?

This vulnerability is related to the missing "> 1024 * 1024" test in
the parse_SST function.  The workbook could be crafted with a bad
shared strings table that could use up an excessive amount of memory
resources on the target system. gdb/exploitable.py also indicated
DestAvNearNull at the time of the crash.

The retcode change should benefit #3 and #4, but I don't know that it
has any role at all in preventing the vulnerabilities.

V/R,
-Jodie
