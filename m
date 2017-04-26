X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1752" "Wednesday" "26" "April" "2017" "04:30:16" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzssP6NY1J2dz8NB0FfNx2iSXJFwnLWq_o2P0mK+BjEGcTw@mail.gmail.com>" "44" "Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" "^Date:" nil nil "4" "2017042607:30:16" "[oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" (number mark "        dawid@legalh Apr 26   44/1752  " thread-indent "\"Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)\"\n") "<d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>" ("<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>" "<d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3752 invoked by uid 550); 26 Apr 2017 07:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3723 invoked from network); 26 Apr 2017 07:30:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=eIjUMRKEoC7nFC9J4B8GHCIeM80nRvHr533RZ9Lbcpc=;
        b=CUNujE9F1I7gj089sT3gutZc74vRLDESmtbdT2td1RwE/cOv5+/KgHvORpB8sc54Qr
         Xwd0A6qU0hzQE+Jelmzc7V82aFZH7r2jDVG0YwEmSdRkNzJJNRHjNbpanEdA8gTYu6s0
         XRjGDXO3pjUS/hIDG9XKyBmMyrI8NhDNg1TXtDFYUzWu/uDle9JyAil+xmKvPUJR6ffH
         xDjWeJEzQuo0UdWozHOwhv9vEz5T+Ag3QvpXh5+aLgd+nXvAohqeGRSy1V+PHYu67Kte
         kqEZh07D7IOweGHP0GU+wHXsH5x4KEiLf4hsXzlcg79ecAMXI0wTA53Ml1JmKli1H0nX
         J29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=eIjUMRKEoC7nFC9J4B8GHCIeM80nRvHr533RZ9Lbcpc=;
        b=he4uaOCR8xiU/86v+sBMEkaUWP3S6tKYRuN0Pl8LJVxMek+hYDSZx+u0sEFrpaDk5O
         c0lLn9d+DHdEzHL77cmebtoRJ24O9Ew6J6OwxMJbUC3i4i3kUAtGRlfLsQRURyjsrieU
         m8fTsyL4lazL0JtH2Y/fLdRgCoTC7EwU0pzrhDljUj8QRsafosw8C+m7t+oo+mjvuB53
         fWuQGlji4vATwbUCHhQu73yNThtD2QBKbwntq+nXbhFLn5d60RLuGRm1Vv3raUTKgsEy
         YfeG2LQrNreDvXGgMNBlbiZI9UnNftduGmZ9+PMEh9K+zTfhq1+dBd9onS5GicsljiM0
         vcRg==
X-Gm-Message-State: AN3rC/4KheU7yhFotiqgW8N7oBfsWyca5EjXAoTW6J9sudD1xwdoatE2
	NAPIpar+TWWut+KXeM9+OHNBjo7jNfc+
X-Received: by 10.31.96.134 with SMTP id u128mr2187223vkb.124.1493191817357;
 Wed, 26 Apr 2017 00:30:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>
References: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
 <d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>
Message-ID: <CADSYzssP6NY1J2dz8NB0FfNx2iSXJFwnLWq_o2P0mK+BjEGcTw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 26 Apr 2017 04:30:16 -0300
From: Dawid Golunski <dawid@legalhackers.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
To: oss-security@lists.openwall.com

Stuart,

Your suggested mitigation is good and was in fact already mentioned in
my advisory, see
'VIII. SOLUTION' section of:
https://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-CVE-2017-7692-Vuln.html


As for the utility I just wrote my own C tool that loops through
argv[] and saves it into a file.
If you need something more advanced / already available you can try
auditd rules.


Regards,
Dawid Golunski
https://legalhackers.com  |  https://ExploitBox.io
t: @dawid_golunski



On Tue, Apr 25, 2017 at 5:56 PM, Stuart Gathman <stuart@gathman.org> wrote:
> On 04/24/2017 05:14 PM, Dawid Golunski wrote:
>> SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
>>
>> Desc.:
>> SquirrelMail is affected by a critical Remote Code Execution vulnerability
>> which stems from insufficient escaping of user-supplied data when
>> SquirrelMail has been configured with Sendmail as the main transport.
>> An authenticated attacker may be able to exploit the vulnerability
>> to execute arbitrary commands on the target and compromise the remote
>> system.
> We deploy squirrelmail NOT using sendmail for sending mail ($useSendmail
> = false).  There is no reason not to use SMTP instead of running
> sendmail directly.  It doesn't seem to be vulnerable that way - and I
> suggest that as a mitigation.  Just to be sure, after reading this
> advisory I added  $sendmail_path  = '/usr/sbin/false'; (We always avoid
> direct command execution with PHP because PHP is prone to quoting bugs.)
>
> OT: is there already a utility that *safely* logs arguments and stdin
> (as was apparently used to explain the exploit)?  I could write a C
> prog, or a carefully quoted bash script - but would rather use an
> already proven utility.
>
