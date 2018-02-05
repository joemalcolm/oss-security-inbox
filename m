X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4322" "Monday" "5" "February" "2018" "13:07:20" "+0100" "Simon McVittie" "smcv@debian.org" "<20180205120720.GB21315@perpetual.pseudorandom.co.uk>" "82" "Re: [oss-security] KDE Notification URI Loading Issues" nil nil nil "2" "2018020512:07:20" "[oss-security] KDE Notification URI Loading Issues" (number mark "U       smcv@debian. Feb  5   82/4322  " thread-indent "\"Re: [oss-security] KDE Notification URI Loading Issues\"\n") "<CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>" ("<CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20467 invoked by uid 550); 5 Feb 2018 12:07:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20442 invoked from network); 5 Feb 2018 12:07:35 -0000
Date: Mon, 5 Feb 2018 13:07:20 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20180205120720.GB21315@perpetual.pseudorandom.co.uk>
References: <CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
Subject: Re: [oss-security] KDE Notification URI Loading Issues

On Mon, 05 Feb 2018 at 01:01:30 +0100, Jason A. Donenfeld wrote:
> Essentially, chat programs or the like that render remote data into
> notifications allow remote users to inject some limited subset of
> HTML, which is then rendered by the KDE notification UI.

I think this is for the chat programs to fix, really: they're the
boundary between untrusted and trusted content. The Notifications
implementation can't be expected to know which applications generate
notifications internally from trusted code, and which applications
interpolate untrusted content into notifications.

Arguably the chat programs should be parsing messages into an internal
representation that is designed to be unable to represent anything
potentially malicious, then re-serializing that internal representation
to HTML for the notification.

A minimal implementation would be to strip all HTML from the version of
the chat message that goes to the notifications API, and only include
the text content. That probably doesn't work for protocols whose users
make extensive use of image-based "custom smilies" and pseudo-emoji, though.

> Aside from the fact that this places a great deal of faith in QUrl

Which other URL parser would you have used in Qt-based programs? If QUrl
isn't correctly implemented, the solution would seem to be to fix it,
not to implement a parallel URL parser with different bugs?

> it also very explicitly allows for
> local files to be specified. I'm told that this is intended by the
> spec, and changing the behavior would be a violation of the spec. Is
> the spec then broken? The developers think not, and believe that
> programs using the global notification mechanism should be responsible
> for supplying their own whitelist sanitization.

Presumably these global notifications are either an implementation of
the freedesktop.org Notifications API, or something very similar. If so,
they're intended for many uses, not just chat - for instance my GNOME
desktop uses notifications for "low disk space on /home", "you have a
meeting in 15 minutes" and "now playing: <song title>", among others.
Chat clients are interesting because they process untrusted content,
not because they are the only user of this API.

My understanding is that, if a local application that is not chat and
does not process untrusted data wants to include an icon or image in
its notifications, the intention of the spec is that it can do so;
for instance media players that show "now playing:" notifications
often include the album cover from the user's music library in the
notification. Forbidding that would remove functionality from all
notification clients, not just chat programs.

Similarly, if a chat client translates ":-)" into an <img> that
references an icon from the user's icon theme (for example it might be
file:///usr/share/icons/Adwaita/48x48/emotes/face-smile.png on GNOME) then
that's something we can trust not to be malicious (if there's malicious
content in /usr/share we have much bigger problems). I personally don't
want text smilies translated to images, but some people do.

> - Should we audit all consumers of it and duplicate the whitelist
> parsing situation and open various bug reports?

The consumers that process untrusted data (chat clients etc.) and
send HTML in their notifications, yes; all consumers of the same API,
probably not, because many of them don't process untrusted data.

If a chat client sends partially or fully attacker-supplied HTML in
its notifications then it's almost certainly passing the same HTML to
a WebKit WebView or a similar general-purpose HTML renderer to display
the message in its own window, for which it will need to take very
similar precautions anyway.

> - Should we just live with IRC clients that allow remote users to load
> arbitrary files into memory

If the text-only IRC protocol can do this then something has gone very
wrong. There's a de facto standard for mIRC-compatible colours, bold
and italic in IRC (which would be translated into very simple HTML for
clients that use HTML notifications or a WebView to render messages),
but I'm not aware of anything that would be translated into an <img>,
except for possibly translating text smilies like ":-)" or emoji into
a file:/// reference to a trusted, local icon from the icon theme.

    smcv
