Received: (qmail 13828 invoked by uid 550); 24 Jun 2025 09:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13802 invoked from network); 24 Jun 2025 09:43:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LNYo1Sjejy0yAARgS03o52okSCjYM+1B/ZKKS5/f+NM=; b=jlfgwk6eq2wn9vfyLIukLreHEJ
	4SbiGa0+isoGJRxQ7Qn22itvJ/ODrX+Rro/S0FLjMwnkvgubCXjf77uFpc+3EEU8LUvMyMrqvqpkB
	MppaeWzALtVPAqI7dE4we6fTl9TbDibY4qB2x8RNEr6sbV7YP4hjj8MVH3gL1JP4Jwcro+892yuVU
	VYnEUH+2S54rMHSi6oxtYAGDm0FpOpLkpIWCJA8YoonLGwXTvK0h8RhEYeB3u+ykVDU8UbN/9Z3tC
	A9uyaAoRi3K6fc/AOt3Jty80nyoHyCqWpU1fPAca9+vOmMAS7knTRnQ2G2AtjXFlbBomUTxdotS8x
	vOi1hpsw==;
Date: Tue, 24 Jun 2025 10:43:41 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: grape mingijung <mingijung.grape@gmail.com>
Message-ID: <aFpzTcjE2tInK2sb@remnant.pseudorandom.co.uk>
References: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] xdg-open bypassing SameSite=Strict

On Mon, 23 Jun 2025 at 20:59:46 +0900, grape mingijung wrote:
>During discussions with several Linux distro security teams, the following
>suggestions were raised:
>
>   1. Introduce an "untrusted" mode or flag in browser CLI tools for
>   opening external URLs
>   2. Extend xdg-open to support passing this "untrusted" flag or context
>   to the browser
>   3. Modify desktop environments or applications to invoke xdg-open with
>   the "untrusted" option when appropriate

Please bear in mind that there is nothing special or magic about 
xdg-open. xdg-open is just one of many possible tools that open a 
caller-specified URL, and it's considered equally valid to use it or 
not use it. If a solution to this is specific to xdg-open, then it can 
only ever be a partial solution.

In an application that opens a URL (like the email client that you 
described as your example), a simple implementation of opening a URL 
would be to delegate it to xdg-open, but many applications will do 
something simpler or more direct instead, like calling 
g_app_info_launch_default_for_uri() or gtk_uri_launcher_launch() in the 
GLib/GTK ecosystem, or the equivalent in Qt or SDL or any similar toolkit 
library. These often don't go through the xdg-open shell script: 
instead, they launch the URL handler directly.

Sometimes these functions have a place to put arbitrary "options" (for 
example g_app_info_launch_default_for_uri() takes an optional 
GAppLaunchContext object containing parameters to modify behaviour) but 
sometimes they don't (for example SDL_OpenURL() takes exactly one 
parameter, the URL to open as a string), and in any case their default 
behaviour needs to be something reasonable (for example 
g_app_info_launch_default_for_uri() is normally given a NULL 
GAppLaunchContext pointer if its caller doesn't have any specific 
requirements).

Even if the xdg-open shell script is used, it often delegates the actual 
launching to a desktop-environment-specific program. For example, in the 
GLib/GTK ecosystem (GNOME, MATE or similar), xdg-open just wraps `gio 
open`, which is a simple command-line wrapper for the 
g_app_info_launch_default_for_uri() function that does the actual work.

xdg-open and `gio open` are primarily designed to be something that a 
user can run interactively at a command-line, and are only secondarily 
something that an application would launch non-interactively to handle a 
URL; the preferred way for an application to handle a URL is whatever is 
the equivalent of g_app_info_launch_default_for_uri() in the libraries 
that it uses, which will often involve fewer layers of indirection.

The URL handler registration protocol on Linux/Unix/freedesktop.org 
platforms looks like this:

- the URL handler's .desktop file (e.g. firefox.desktop) lists
   x-scheme-handler/http (or https or ftp or any other scheme) as a
   pseudo-MIME-type in its MimeType field

- there is a mechanism for choosing one of several suitable URL handlers 
   to be the default, which is out-of-scope here; assume that we have 
   been able to choose one specific URL handler

- the URL handler's Exec field includes %u (placeholder for 0 or 1 URLs)
   or %U (0 or more URLs) as described in
   https://specifications.freedesktop.org/desktop-entry-spec/latest/exec-variables.html,
   and optionally the URL handler also implements the
   org.freedesktop.Application D-Bus interface described in
   https://specifications.freedesktop.org/desktop-entry-spec/latest/dbus.html

- the caller (for example g_app_info_launch_default_for_uri() called by
   the email client) execs the program specified by the Exec field,
   replacing %u or %U with the desired URL, or calls the Open() D-Bus
   method with a list containing the desired URL as first argument

The major desktop environments will often prefer to use the D-Bus 
interface where possible, because that results in the URL handler being 
exec'd in a predictable environment by a piece of centralized 
infrastructure like dbus-daemon or systemd, rather than inheriting 
various aspects of the execution environment such as environment 
variables and resource limits from whatever program happens to have 
launched the URL handler.

There is currently no defined place in that specification to put a 
boolean flag for whether the URL is or isn't "trusted" in some way. To 
pass an extra command-line argument to Exec, the .desktop file 
specification would need to define a way for the caller to discover 
whether the program supports it (perhaps a new % variable, or a new 
field alongside Exec). To pass extra information to the Open() D-Bus 
method (for URL handlers that support it), the .desktop file 
specification would need to define a new key in the `platform_data` 
dict alongside the desktop-startup-id and/or activation-token.

How does this work on other platforms like Windows and macOS? On 
Windows, the implementation details are different, but the general 
"shape" of the API seems like it's the same: the URL handler registers 
itself with the system by saying "I can handle http URLs" and storing a 
command-line with some placeholders (on Windows I think this is done via 
the registry), the caller (e.g. email client) passes the URL to an API 
function like ShellExecute() or a command-line tool like `start`, and OS 
libraries are responsible for figuring out which URL handler is the 
correct one and launching it with suitable options. On Windows, does the 
URL handler (e.g. browser) treat the URLs it receives from the OS as 
though they had been typed into the address bar, or as though a link had 
been followed?

I'm inclined to agree with Solar Designer that if there is a "safe" and 
an "unsafe" way to open URLs, then browsers should make the "safe" way be 
the default, with the more-powerful but less-safe way being an opt-in. 
That would make the overall system "fail safe", especially if it is not 
straightforward to add more information to the whole route from caller 
to URL handler (for example SDL_OpenURL() has nowhere that it could put 
this extra information).

     smcv
