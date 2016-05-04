X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2009" "Tuesday" "3" "May" "2016" "20:42:30" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>" "49" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050401:42:30" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        bfriesen@sim May  3   49/2009  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160504010039.GB2319@hunt>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<20160503232637.GA2319@hunt>" "<20160503235110.GD1250@sentinelchicken.org>" "<CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>" "<20160504010039.GB2319@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9595 invoked by uid 550); 4 May 2016 01:42:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9574 invoked from network); 4 May 2016 01:42:42 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160504010039.GB2319@hunt>
Message-ID: <alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com> <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com> <20160503232637.GA2319@hunt> <20160503235110.GD1250@sentinelchicken.org> <CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>
 <20160504010039.GB2319@hunt>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 03 May 2016 20:42:30 -0500 (CDT)
Date: Tue, 3 May 2016 20:42:30 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

On Tue, 3 May 2016, Seth Arnold wrote:

> On Wed, May 04, 2016 at 12:05:16AM +0000, Brandon Dees wrote:
>> is it appropriate to ask if the same issues are present in GraphicsMagick
>> as well?
>
> I haven't investigated deeply but it seems very plausible to me:
> Here's the delegates.xml work-alike:
> https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/config/delegates.mgk.in
>
> This appears to be executed via:
> https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/magick/delegate.c
> which tries to escape arguments using UnixShellTextEscape(). This function
> appears to replace \`"$ chars with backslash-escaped versions. I'm not
> sure this is a safe mechanism either.

Please provide me with a working exploit.

Be aware that this quoting method is only used for the few 
delegates.mgk rules which require shell-like syntax to work. 
Otherwise the external program is run using execvp() without a shell.

I am aware that the handling for Microsoft Windows is not quite secure 
and in fact Windows concatentates all the spawnvp() vector arguments 
into one long string and each program parses command line arguments 
using its own algorithm without a secure quoting mechanism so 
command-line programs can never possibly be secured.

In order to achieve the best security with GraphicsMagick (with some 
possible loss of function due to missing file formats), please define 
this environment variable:

   MAGICK_CODER_STABILITY=PRIMARY

Use 'gm convert -list formats' and check the second column of output 
to see what formats are classified as Primary, Stable, and Unstable. 
Primary formats are considered common and trustworthy.

There is also a way that C/C++ programs using the libraries can bless 
the files which will be accessed before the access occurs (not yet 
controlled by a configuration file).

Thanks,

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
