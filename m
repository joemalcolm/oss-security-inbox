X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["557" "Wednesday" "15" "April" "2015" "10:29:16" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>" "18" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041500:29:16" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        mik@miknet.n Apr 15   18/557   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17908 invoked by uid 550); 15 Apr 2015 00:29:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17890 invoked from network); 15 Apr 2015 00:29:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=IPImlJFY6gFBIL45iGQg8+sYJvJlOh401h7VmzqJq9c=;
        b=i+F7+1IF4GlA2SDZs1T4Xc6yZdcvW0d/NLRY44jjhe9Rgn7o8HP8o4i5HYuEvOa8BU
         e0hLUtVBMz8naqKHNaA3IfKslt6tpBZiCCo7WIT4BFKQzCVZY2wSv3gAGAOOL5Oqgtid
         vW+bAf1pRSrypJZeQUu6fnp8GRSBkUo8aW/K0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=IPImlJFY6gFBIL45iGQg8+sYJvJlOh401h7VmzqJq9c=;
        b=fFdU7PEJfcpSy4yfQCE+I4eUG+tRFZs/bGZ18H8f8hI6TQy4gOk8gtfwl7NiRZOpLM
         qLk56s02kPhV5EoTic9jj99qsBKwXIyiduGjprxkUlTwadBdckZ00U2dbOSRhpnkaSWL
         GnUHI/F6J4uIYKfGnkcsBoS56weNCCSx6RIfryGHJOIcmnVG8RPvgIJURl0Dn/Kp3uPg
         pn0iBBdMd5w6uijrpDbX2KoBfEGMdaJ77kmKUL0lhh0UKRlnNwLK0EZk3mQSsqb9TVDp
         zO0z6jLplS0TodLyB3bPY1TXekDEtZZJZCijIwx0F8HTRcEMMOAWYEsz3ftY9tpxcslm
         s+1A==
X-Gm-Message-State: ALoCoQk5XLEv+NOxc85yq+zUy2GYxVmpcK2CImZ0oN9w6j8N7zdmMc3OpPjj1fofXlgEX6E+WS3/
X-Received: by 10.107.12.93 with SMTP id w90mr33289428ioi.10.1429057776466;
 Tue, 14 Apr 2015 17:29:36 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.129.34]
In-Reply-To: <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
Message-ID: <CACYkhxipofcN=sdyjAVY1LmFcts3s9KzG4dABHX0DDBi1zCkEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 15 Apr 2015 10:29:16 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 15 April 2015 at 07:08, Tavis Ormandy <taviso@google.com> wrote:

>>>> import socket
>>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
>>>> sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>>>> sock.bind('/tmp/foo\nbar')
>>>> sock.listen(1)
>
> $ grep -A1 foo /proc/net/unix
> 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
> bar

This is a Linux kernel flaw/bug right?  It's a machine-readable
newline-delimited
/proc file, so it needs to escape newlines if they're valid data.

Regards,
  Michael
