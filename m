X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1227" "Monday" "5" "October" "2015" "14:25:35" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1444047935.3188.32.camel@opteya.com>" "42" "Re: [oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100512:25:35" "[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "U       ydroneaud@op Oct  5   42/1227  " thread-indent "\"Re: [oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") "<CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>" ("<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" "<CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32364 invoked by uid 550); 5 Oct 2015 19:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6080 invoked from network); 5 Oct 2015 12:25:59 -0000
Message-ID: <1444047935.3188.32.camel@opteya.com>
In-Reply-To: <CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>
References: 
	<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
	 <CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.16.5 (3.16.5-3.fc22) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 92.90.26.18
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: Benjamin Otte <otte@redhat.com>, Matthias Clasen <mclasen@redhat.com>
Date: Mon, 05 Oct 2015 14:25:35 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: Heap overflow with a gif file
 in gdk-pixbuf < 2.32.1
To: oss-security@lists.openwall.com, Gustavo Grieco
 <gustavo.grieco@gmail.com>

Hi,


Le jeudi 01 octobre 2015 à 12:25 -0300, Gustavo Grieco a écrit :
> 2015-10-01 10:03 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:
> 
> > We found a heap overflow in the gdk-pixbuf implementation triggered 
> > by the scaling of gif file.These issues are only fixed in the 
> > recent release of gdk-pixbuf 2.32.1 but affects older versions (we 
> > tested it in a fully updated Ubuntu 14.04).
> > 
> 
> 
> If someone needs more details, it was fixed in 2.32.1 with this
> commit:
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee949
> 8f1fbf6e1b70fcce2e55aa
> 
> 

The patch fixes pixops_scale_nearest() but AFAICT I think the same
should be applied to other functions has they use the same construct:

- pixops_composite_nearest()

https://git.gnome.org/browse/gdk-pixbuf/tree/gdk-pixbuf/pixops/pixops.c?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa#n339

- pixops_composite_color_nearest()

https://git.gnome.org/browse/gdk-pixbuf/tree/gdk-pixbuf/pixops/pixops.c?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa#n504

- pixops_process()

https://git.gnome.org/browse/gdk-pixbuf/tree/gdk-pixbuf/pixops/pixops.c?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa#n1316

Regards.

-- 
Yann Droneaud
OPTEYA


