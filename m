X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Tuesday" "3" "May" "2016" "16:51:10" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20160503235110.GD1250@sentinelchicken.org>" "17" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050323:51:10" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        tim-security May  3   17/537   " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160503232637.GA2319@hunt>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<20160503232637.GA2319@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15438 invoked by uid 550); 3 May 2016 23:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15417 invoked from network); 3 May 2016 23:52:40 -0000
Message-ID: <20160503235110.GD1250@sentinelchicken.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
 <57292879.7050303@gmail.com>
 <20160503232637.GA2319@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160503232637.GA2319@hunt>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 3 May 2016 16:51:10 -0700
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: Seth Arnold <seth.arnold@canonical.com>, oss-security@lists.openwall.com


> Or, replace the strings with arrays and use execve() instead of system().
 
^^^

That.

system() should be taken out into the street and shot.  There's just
no good reason for a respectable programmer to use it.

Not saying that's the *only* thing they would need to do, but we need
to encourage development platforms, in general, to stop offering up
awful interfaces like this.  Heck, Node.js offers a child_process.exec()
call that isn't exec at all.  It is (approximately) system().  Surely
that won't lead to any problems...

tim
