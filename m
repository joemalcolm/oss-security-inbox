Received: (qmail 27652 invoked by uid 550); 10 Dec 2025 15:59:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29791 invoked from network); 10 Dec 2025 11:35:27 -0000
Date: Wed, 10 Dec 2025 12:35:17 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20251210113517.GF2622@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.15+93 (58e9dca4) vl-169878 (2025-11-09)
Subject: [oss-security] LibreOffice puts searched text into the PRIMARY selection (Linux,
 X11)

Under Linux X11, LibreOffice (Writer, Calc, Draw...) silently puts
searched text into the PRIMARY selection when a search is active and
its window gets the focus. This can yield such text to be disclosed
to web sites (when one clicks with the middle button in some form)
and to other applications using the same X server (without needing
any action from the user).

A search in LibreOffice should have remained local to LibreOffice.
Text entered in the search field may be private or confidential,
thus it must not be disclosed anywhere else.

To reproduce:

1. Start LibreOffice Writer (or Calc, Draw...).
2. Type Ctrl-F to start a search.
3. Type some text to search (a single character is sufficient).
4. Optional: Select some text in another application, e.g. xterm.
5. Move the cursor over the LibreOffice window.
   With window managers that support "focus-follows-mouse"
   (e.g. FVWM and twm), this window gets the focus.
   Otherwise you need to click so that this window gets the focus.

Result: The text in the LibreOffice search field automatically
becomes the new PRIMARY selection. This can be seen by pasting
the PRIMARY selection somewhere else (with the middle button)
or with the following script (using the xclip utility):

while true
do
  new=$(xclip -o 2> /dev/null)
  if [ "x$new" != "x$old" ]; then
    printf "%s\n" "$new"
    old=$new
  fi
  sleep 1
done

which prints text from the current PRIMARY selection, as soon as
it is modified.

Note: The text in the LibreOffice search field appears as
selected, but this should have remained internal to LibreOffice.
For instance, when I click on the address bar of Firefox, its
contents get selected, but the PRIMARY selection is unchanged.

Affected LibreOffice versions (at least): 24.2.5, 24.2.6 and 25.8.3.2

In case this matters, I'm using the libreoffice Debian package
under Debian/unstable.

Bug I had reported last year (I forgot about it, until I got caught
again today, wondering what was happening):
  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1080978
  https://bugs.documentfoundation.org/show_bug.cgi?id=162821

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
