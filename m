X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2481" "Monday" "5" "February" "2018" "01:01:30" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>" "55" "[oss-security] KDE Notification URI Loading Issues" nil nil nil "2" "2018020500:01:30" "[oss-security] KDE Notification URI Loading Issues" (number mark "U       Jason@zx2c4. Feb  5   55/2481  " thread-indent "\"[oss-security] KDE Notification URI Loading Issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23941 invoked by uid 550); 5 Feb 2018 00:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23901 invoked from network); 5 Feb 2018 00:01:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=Cil4+o
	zXzRXm2rkqSe7YgGoKQek=; b=e1drHI8joexzAHzG+/7YCLYvSEt5Z5r8DWkStx
	rFxcm9BSeN+zGHg3BrZi+jfPHFP5cBItP+aa/dpvnY6sD/KPlkjOerqgVweErbpx
	32LfmE7yujRy1a0xbRWzK+kbq4rUX2sGdTIvYgBq9BKR6GkPdTIV4kHP/DmAr2s2
	lc1K9AaAW0uu6OaIaeWr2iit5enYD8d6CRb7AN5CV8uvw1LLc3Ic/aI+3c+e4paY
	jdfRoC0UlEFNNbaVAZnjMnPsUD5AtL8Q8NRuV/bmXOnzZtANij6wsZqPDevLJbMd
	jPVmxOalYZHSBcnmcotCTmPAh1joL88cJjrEyb/UqshbLYxg==
X-Gm-Message-State: AKwxyte/TnZIQrEWg9AbMFtZcs/xzEeqGYRGPU4HRiEMp7SxWgCaSjA+
	nMVmz2EKkRQPMw2vjCWjqA0sEfPo0hsWGDiVNyI=
X-Google-Smtp-Source: AH8x224LTFNnOpbw3cpX8gc+PRyxJAEwFJk3mjVdnRseZuNlccIZMw3YOiNnQQJwgZR5Ls33ruzdvkiM5E2bY7NFyGY=
X-Received: by 10.202.80.148 with SMTP id e142mr18329940oib.157.1517788890925;
 Sun, 04 Feb 2018 16:01:30 -0800 (PST)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 5 Feb 2018 01:01:30 +0100
X-Gmail-Original-Message-ID: <CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>
Message-ID: <CAHmME9qztqkfFWeHJuaDviei2eqGW-AF+tSh7Su3ZBu6za5+kw@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] KDE Notification URI Loading Issues

Hi folks,

There's an interesting issue in the progress of being addressed over
in KDE-land. Since it's already public, I'm told it's okay to discuss
it wherever. Here's the discussion: https://phabricator.kde.org/D10188

Essentially, chat programs or the like that render remote data into
notifications allow remote users to inject some limited subset of
HTML, which is then rendered by the KDE notification UI. One
implication of this is that an attacker can cause a victim to load an
arbitrary URI in an <img> tag. There are probably other implications
too.

The solution in that thread was to make an HTML whitelist by way of
the XML parser, allowing some innocuous looking tags but blocking
others. There's a patch for 5.8 LTS which will also be coming out in
5.12, and probably the various distros should update. The KDE folks
are preparing some official text on the matter to this end.

One interesting aspect of KDE's current fix is that in the case of an
<img> tag, the following code then examines the "src" attribute:

+ const QUrl url(src);
+ if (url.isLocalFile()) {
+ out.writeAttribute(QStringLiteral("src"), src);
+ } else {
+ //image denied for security reasons! Do not copy the image src here!
+ }

Aside from the fact that this places a great deal of faith in QUrl and
also does not re-serialize the value from the url object since it
simply reuses src after validation, it also very explicitly allows for
local files to be specified. I'm told that this is intended by the
spec, and changing the behavior would be a violation of the spec. Is
the spec then broken? The developers think not, and believe that
programs using the global notification mechanism should be responsible
for supplying their own whitelist sanitization. I suppose the approach
of offloading the security issues onto the other people is not really
a shocking one. But it does raise the question of how we should be
approaching this API in general:

- Should we audit all consumers of it and duplicate the whitelist
parsing situation and open various bug reports?
- Should we produce an additional patch, not carried by upstream, but
shipped by various distros, that entirely disables <img> loading
(perhaps except from data: paths)?
- Should we just live with IRC clients that allow remote users to load
arbitrary files into memory (remote mem leak --> remote file
disclosure) or cause other mischief?
- Something else?

I'm interested in hearing various approaches to this.

Regards,
Jason
