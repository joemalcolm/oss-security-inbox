X-VM-v5-Data: ([nil t nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3581" "Wednesday" "25" "January" "2017" "22:14:27" "+0100" "Adrien Nader" "adrien@notk.org" "<20170125211427.GA1002@notk.org>" "77" "Re: [oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" "^Date:" nil nil "1" "2017012521:14:27" "[oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" (number mark "U z     adrien@notk. Jan 25   77/3581  " thread-indent "\"Re: [oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)\"\n") "<20170124134604.0b4e5ba1@pc1>" ("<20170124134604.0b4e5ba1@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1000
X-Mozilla-Status2: 00000000
Received: (qmail 25967 invoked by uid 550); 25 Jan 2017 21:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13726 invoked from network); 25 Jan 2017 21:14:38 -0000
Message-ID: <20170125211427.GA1002@notk.org>
References: <20170124134604.0b4e5ba1@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20170124134604.0b4e5ba1@pc1>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 25 Jan 2017 22:14:27 +0100
From: Adrien Nader <adrien@notk.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Windows ports of Linux software bundling outdated
 libraries (Gajim / PyCurl)
To: oss-security@lists.openwall.com

Hi,

This topic has already brought me in despair several times. I am
actually surprised this is news so I'll try to give an overview.
Unfortunately it will probably also sound like a psychotherapy for me.

There are so many of these issues that merely filling bug reports for
them is a full-time job. This is without taking into account the origin
of these binaries which is usually unclear.

You won't find many projects which do this correctly. At least Wireshark
and VLC fare much much better than others but they're a drop in the
ocean.

I won't blame any of the free software developers. The mindset of
Windows users isn't exactly centered around collaboration. It doesn't
help and also takes a toll on the will of any maintainer who doesn't
typically run Windows (i.e. who isn't already doing builds for himself
anyway). Obviously the difficulty to build and ship for that OS is also
a big hindrance.

My experience comes from my win-builds.org project (among others); it
tried to fix all of these. In the process I've had to deal with
developers of Windows software and that was very painful since they have
a very hit-and-run attitude.
Asking them how they handle dependencies and build-time dependency
discovery is fun. The last answer I got was that you'd copy your
dependencies' headers and .dll files somewhere, provide the paths to
your compiler and skip updates unless you really need them. You can
probably thank Microsoft's compiler for that tactic.

The other disheartening part is the syndrome of "built by Fo01337 with
-funroll-loops -O42". Some people have been making Windows builds of OSS
software for years, usually distributing them through more-or-less
random file hosting services or forum attachments. The builds are often
"optimized" or "light" or "all features" and people exchange words on
which builds are the best. It's especially depressing because these
builders are usually not very knowledgeable.
Moreover, simply because they provide binaries, many of these people
have gotten a crowd that follows them; they have apparently gotten quite
proud and territorial. They might see your efforts at making something
cleaner as... competition.

Overall, good luck staying in such an environment.

So what can be done?

Win-builds is slightly stalled by lack of time and the need to rework
part of the infrastructure.
I hope to get back to it fairly soon but unlike for the last version, I
won't spend more time helping the typical Windows developer.

Redhat (you'll probably want Fedora rather than RHEL) and Opensuse have
teams that tackle this too, purely from the Linux side through
distribution packages and cross-compilation. Their package collection is
really large and well-maintained with good teams (around 300 packages;
keep in mind that on Windows you need less than a dozen libs to get GTK+
2).

Debian/Ubuntu also see some work here but it's nowhere near RH/Suse
which have commercial needs to make Windows builds.

Arch Linux is... well, AUR has hundreds of packages. Way too many for it
to be honest and up-to-date. That would be more than RH/Suse. Approach
with care.

There are some projects I'm not mentioning on purpose. Either I'm not
familiar enough with them or I consider them as outright regressions for
these issues. If you want details, meet me at FOSDEM; that's also where
I know I won't meet anyone involved in the latter category.

tl:dr; use Fedora or OpenSuse and their mingw-w64* packages to
cross-compile and package from Linux; if you use Windows or OS X or
anything else, use one of these in a VM.

-- 
Adrien Nader
