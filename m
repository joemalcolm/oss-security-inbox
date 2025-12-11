Received: (qmail 5989 invoked by uid 550); 11 Dec 2025 03:26:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28429 invoked from network); 11 Dec 2025 03:24:36 -0000
Date: Thu, 11 Dec 2025 04:24:27 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20251211032427.GB200243@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20251210113517.GF2622@qaa.vinc17.org>
 <20251210170842.1d69b326@ryz.dorfdsl.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251210170842.1d69b326@ryz.dorfdsl.de>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.15+93 (58e9dca4) vl-169878 (2025-11-09)
Subject: Re: [oss-security] LibreOffice puts searched text into the PRIMARY
 selection (Linux, X11)

On 2025-12-10 17:08:42 +0100, Marco Moock wrote:
> Am 10.12.2025 um 12:35:17 Uhr schrieb Vincent Lefevre:
> 
> > Under Linux X11, LibreOffice (Writer, Calc, Draw...) silently puts
> > searched text into the PRIMARY selection when a search is active and
> > its window gets the focus. This can yield such text to be disclosed
> > to web sites (when one clicks with the middle button in some form)
> > and to other applications using the same X server (without needing
> > any action from the user).
> 
> This behavior exists in various applications like browsers, when
> focusing the address bar (I saw that in Pale Moon). Dunno if that is
> related to the GTK toolkit.
> 
> The common behavior for applications is that text is only copied to
> primary if it is actively selected.

Here, with LibreOffice, this is worse, because this occurs whenever
the LibreOffice window gets the focus.

As a comparison, with Atril, when I choose "Save As...", the file name
(without the extension) gets selected and the PRIMARY selection is
modified (it gets this selection), which is bad. But at least, when
I modify the PRIMARY selection by selecting something in another
application and the focus is given back to the "Save As..." window,
the PRIMARY selection is *not* modified (contrary to what happens
with LibreOffice).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
