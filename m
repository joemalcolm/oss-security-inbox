X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Wednesday" "17" "May" "2017" "09:40:57" "-0700" "Ian Zimmerman" "itz@primate.net" "<20170517162923.3855.16F61A97@matica.foolinux.mooo.com>" "59" "[oss-security] rxvt-unicode \"insecure\" setting [Was: terminal emulators' processing of escape sequences]" "^Date:" nil nil "5" "2017051716:40:57" "[oss-security] rxvt-unicode \"insecure\" setting [Was: terminal emulators' processing of escape sequences]" (number mark "        itz@primate. May 17   59/1880  " thread-indent "\"[oss-security] rxvt-unicode \"insecure\" setting [Was: terminal emulators' processing of escape sequences]\"\n") "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28417 invoked by uid 550); 17 May 2017 16:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25981 invoked from network); 17 May 2017 16:41:10 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Message-ID: <20170517162923.3855.16F61A97@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20170501164428.GA12322@openwall.com>
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com>
 <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 17 May 2017 09:40:57 -0700
From: Ian Zimmerman <itz@primate.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] rxvt-unicode "insecure" setting [Was: terminal emulators' processing
 of escape sequences]
To: oss-security@lists.openwall.com

This is a bit tangential to this particular thread, but clearly
security-related.

Quoting "man urxvt", section "RESOURCES":

 insecure: boolean

  Enables "insecure" mode. Rxvt-unicode offers some escape sequences
  that echo arbitrary strings like the icon name or the locale. This
  could be abused if somebody gets 8-bit-clean access to your display,
  whether through a mail client displaying mail bodies unfiltered or
  through write(1) or any other means. Therefore, these sequences are
  disabled by default. (Note that many other terminals, including xterm,
  have these sequences enabled by default, which doesn't make it safer,
  though).

  You can enable them by setting this boolean resource or specifying
  -insecure as an option. At the moment, this enables display-answer,
  locale, findfont, icon label and window title requests.

My ~/.Xresources file, trimmed.  I am sure it is getting read, because
of the cutchars, colors and geometry settings:

 Rxvt.background: seashell
 Rxvt.color10: green4
 Rxvt.color11: orange2
 Rxvt.color14: cyan4
 Rxvt.color2: green3
 Rxvt.color3: orange
 Rxvt.color6: cyan3
 Rxvt.cutchars: '"!' &()*,;<=>?@[]^{|} #$%+-./:
 Rxvt.foreground: Gray40
 Rxvt.geometry: 103x36
 Rxvt.saveLines: 200
 Rxvt.visualBell: on
 URxvt.font: x:-misc-fixed-medium-r-semicondensed--13-*-*-*-*-*-iso10646-1
 URxvt.perl-ext-common:
 URxvt.insecure: false

Finally, a chunk of my ~/.bashrc:

 # If this is an xterm set the title to something informative
 case "$TERM" in
         xterm*|rxvt*)
             PROMPT_COMMAND="echo -ne \"\E]0; $$ ${LOGNAME}@${HOSTNAME}:\${PWD} \a\""
             ;;
         *)
             ;;
 esac

And ... it works!

Why?

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign:
http://primate.net/~itz/blog/the-problem-with-gpg-signatures.html
