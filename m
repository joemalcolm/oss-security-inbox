X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1728" "Friday" "12" "February" "2016" "05:30:31" "+0300" "Solar Designer" "solar@openwall.com" "<20160212023031.GA4879@openwall.com>" "38" "Re: [oss-security] STARTTLS for this list?" "^Date:" nil nil "2" "2016021202:30:31" "[oss-security] STARTTLS for this list?" (number mark "        solar@openwa Feb 12   38/1728  " thread-indent "\"Re: [oss-security] STARTTLS for this list?\"\n") "<20160212020526.GE25680@hunt>" ("<CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>" "<20160212020526.GE25680@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22496 invoked by uid 550); 12 Feb 2016 02:30:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22478 invoked from network); 12 Feb 2016 02:30:33 -0000
Message-ID: <20160212023031.GA4879@openwall.com>
References: <CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com> <20160212020526.GE25680@hunt>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212020526.GE25680@hunt>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 12 Feb 2016 05:30:31 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS for this list?
To: oss-security@lists.openwall.com

On Thu, Feb 11, 2016 at 06:05:26PM -0800, Seth Arnold wrote:
> It doesn't seem like a top priority to me: STARTTLS solves one set of
> problems and introduces a much larger set of problems. I'm not sure any of
> the solved problems are actually pressing problems to a public mail list.

That's my current feeling, too - for this mailing list at this time.

> Hosting a mail list is already miserable enough (for example, I don't
> think mail From: google addresses actually makes to Google users;

You're right - as discussed before, it does not, because of DMARC.
(This applies to senders from google.com and some other Google domains,
but luckily not yet to senders from gmail.com.  However, recipients at
gmail.com are also affected whenever someone posts from google.com.
Also, Yahoo's free e-mail and a few others are affected.)

Working around this is actually planned (especially as Google intends to
extend this to Gmail senders).  STARTTLS currently is not.

> also, I
> don't know how the moderators manage to keep this list spam-free with zero
> mistakes, either false positives or false negatives.) --

It's a combination of scripting and manual message moderation.  There
are occasional mistakes (I posted about a badly delayed wrong-charset
message not so long ago), but they are few (at least that I'm aware of).
I think we manage pretty well, considering that most messages arrive to
the list within minutes.

> adding a half-dozen
> more reasons why mail delivery can fail is surely not fun.

Right.  And supporting TLS, even if only client-side, also adds to the
server's attack surface.  That said, we might be forced to, eventually.

I am actually in favor of opportunistic encryption in general.

Alexander
