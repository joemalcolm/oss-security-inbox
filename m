X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3921" "Monday" "9" "May" "2016" "20:33:55" "+0100" "Simon McVittie" "smcv@debian.org" "<20160509193355.GA11234@perpetual.pseudorandom.co.uk>" "75" "Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"" "^Date:" nil nil "5" "2016050919:33:55" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" (number mark "        smcv@debian. May  9   75/3921  " thread-indent "\"Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"\"\n") "<alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>" "<20160509172045.GC9754@perpetual.pseudorandom.co.uk>" "<alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15861 invoked by uid 550); 9 May 2016 19:34:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15843 invoked from network); 9 May 2016 19:34:06 -0000
Message-ID: <20160509193355.GA11234@perpetual.pseudorandom.co.uk>
References: <alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>
 <20160509172045.GC9754@perpetual.pseudorandom.co.uk>
 <alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org>
User-Agent: Mutt/1.6.0 (2016-04-01)
Date: Mon, 9 May 2016 20:33:55 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GraphicsMagick Response To "ImageTragick"
To: oss-security@lists.openwall.com

For context: I co-maintain ikiwiki, a wiki engine that uses the
Image::Magick Perl bindings to resize potentially-attacker-supplied images
(although I'm considering supporting both, and potentially trying to load
Graphics::Magick first). I suspect that many ImageMagick and GraphicsMagick
users are in an analogous situation.

On Mon, 09 May 2016 at 13:53:28 -0500, Bob Friesenhahn wrote:
> The SVG and MVG formats are able to submit http and ftp URL requests. The
> allowed URLs are not restricted by policy as they would be if SVG was
> running in a web browser.  My point is that the URLs are requested from the
> perspective of the user id and host where the process is running.  If this
> is on the back-side of a firewall, then it may be possible to access URLs
> which otherwise could not be accessed.

Thanks for clarifying!

> Outside of the utilities themselves, or applications based on the libraries,
> only SVG, MVG, and MSL (Magick Scripting Language) are able to submit URL
> requests.  MSL should be viewed as a scripting format rather than being a
> file format.

Great. Is there an API that can be used to say "load this arbitrary file,
but only if it is in a format that is considered entirely safe"?
(Safe in the sense that it isn't vulnerable to SSRF, doesn't perform
arbitrary actions like MSL does, can't recurse into a separate
resource that might not be safe, and so on, in a way that won't
become insecure by the addition of another format.)

At the moment my mitigation for these vulnerabilities is refusing to
resize images that don't end with .jpg .jpeg .png or .gif, refusing
to resize images that have one of those extensions but don't have the
matching magic number, and invoking ImageMagick APIs with an argument
like "jpeg:myfile.jpg" to force the use of the expected coder. This
doesn't seem like something that every developer is going to get right
in practice.

> > >     MSL is an XML-based "script"
> > >     format which should never be allowed to be submitted and invoked
> > >     by an untrusted party.
> > 
> > Is there any situation where GraphicsMagick will interpret a file of
> > unspecified format as MSL, for instance recognizing it by extension or
> > magic number?
> 
> There is no detection of MSL by its header but the MSL reader will be
> dispatched to by a .MSL extension.  It requires adding only one line of code
> to block responding to the MSL extension.

I think it might be necessary to add that one line of code, if rendering a
SVG that contains <xi:include> directives can result in interpreting
an accompanying .msl script. On the other hand, if SVGs are open to SSRF
by design, many services will need to avoid processing an attacker-supplied
SVG anyway, so perhaps the set of services that are willing to process SVGs
from untrusted users is negligible...

> The focus of https://imagetragick.com/ on MVG has brought attention to it,
> and tarnished its reputation, but (provided it is not executed by default)
> the focus should be on assuring that formats assumed to be secure (e.g. SVG
> and WMF) are read/rendered securely.

I think the reason people are surprised and concerned to read about the
MVG and MSL scripting languages is that they enter *Magick through the
same APIs that open "safe" image files, blurring the boundary between
"open a file" and "execute a script". If the entry point into executing
MVG/MSL scripts was named more like ExecuteScript(), as opposed to
ReadImage(), then I don't think anyone would object to MVG and MSL
files having arbitrary code execution capabilities.

It's the same concern as when office suites' document formats gain support
for auto-running macros when opened, or when operating systems start
auto-running scripts and executables when removable media are inserted -
an action that was previously considered to be mostly safe to perform
on untrusted content unexpectedly becomes an act of trust.

    S
