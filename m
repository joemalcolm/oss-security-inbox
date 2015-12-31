X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["812" "Thursday" "31" "December" "2015" "16:35:49" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctz7Cw884CLQ_i7_079uR_yO-74dDjSNav2hDa2P9E7oA@mail.gmail.com>" "27" "[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" nil nil nil "12" "2015123121:35:49" "[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" (number mark "U       glennrp@gmai Dec 31   27/812   " thread-indent "\"[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option\"\n") "<20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>" ("<CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>" "<20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7318 invoked by uid 550); 31 Dec 2015 21:36:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7300 invoked from network); 31 Dec 2015 21:36:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tsdeWTSfW8sISJMNHeluGloSMJD4zlCWtC17iJEfXkM=;
        b=WN5QTby0NV/FfSbsBUd4/1xXNPtljkEGWsrRX/4oitP/XO46OEXw3HcRYzOI6yuEzN
         FqF5KiRau401fNXqHrUxxjP31lgTkkq3g7h8Qa9ZuBBGa8AowMkfnSthU/2ifw583YR4
         6RBOBAmO/5lZoHuTnLxVK7GqDQXx92eJiZzgtLOcUzp/80LqXoAuJ7Qu8WtATSc7lpn/
         yIOh0tqi7FqWdXsTcvJXB2TkPvphcEwivwQ9hWm4OjGhPKD/csGTwtY3ZzAUXsk7+Fxa
         /O+bkwju1U22jUHaf48R5NGVnliPXeBBbnskkPLK90PCSP2+6iUWqgDPtaM50kLyGpUC
         vlgA==
MIME-Version: 1.0
X-Received: by 10.140.167.86 with SMTP id n83mr21115800qhn.41.1451597749711;
 Thu, 31 Dec 2015 13:35:49 -0800 (PST)
In-Reply-To: <20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>
References: <CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>
	<20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>
Date: Thu, 31 Dec 2015 16:35:49 -0500
Message-ID: <CA+PdXctz7Cw884CLQ_i7_079uR_yO-74dDjSNav2hDa2P9E7oA@mail.gmail.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, 
	Brian Carpenter <brian.carpenter@gmail.com>
Content-Type: multipart/alternative; boundary=001a113a64dc3a78a0052838701d
Subject: [oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run
 with "-loco" option

--001a113a64dc3a78a0052838701d
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 31, 2015 at 3:33 PM, <cve-assign@mitre.org> wrote:

>
> Our understanding is that pngcrush is a command-line program, and that
> the bug is largely equivalent to a scenario in which the "-loco"
> functionality had not been implemented.
>

There are web services that compress PNG files, using pngcrush
as their compression engine.  I haven't found any that allow users
to specify the "-loco" option, though.


> We probably would need a threat model in which the victim cannot
> recover from the attack by simply avoiding all subsequent use of the
> "-loco" option, e.g., a segfault that realistically could lead to code
> execution.
>

OK, I'm withdrawing the request for a CVE number.

Glenn

--001a113a64dc3a78a0052838701d--
