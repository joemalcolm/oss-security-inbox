Received: (qmail 19501 invoked by uid 550); 19 Oct 2023 22:21:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20259 invoked from network); 19 Oct 2023 20:36:14 -0000
Date: Thu, 19 Oct 2023 22:35:54 +0200
From: niekt0 <niekt0@kyberia.cz>
To: oss-security@lists.openwall.com
Message-ID: <20231019203554.GA11867@test>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
X-Mailer: iPhone Mail (8G4)
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

Hi,

On Thu, Oct 19, 2023 at 05:04:10PM +0100, Sam Bull wrote:
> On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
> > I think that this is more a problem with X11 security than it is a 
> > problem specific to Mozilla / Firefox.
> 
> Also a problem with shell security. If you paste something with line breaks into bash, it
> executes them. If you paste the same into fish, it doesn't (it'll display the multi-line
> input and expect you to hit the enter key to execute it as a command).

the problem with modification of "clipboard" is unfortunately much broader, than just command execution in the shell. Imagine situation like pasting a bank account number for money transfer into internetbankig web page, and some browser tab in background silently replaces the number. Or replaces the bitcoin address, to make situation more dramatic. The direct command execution is probably the most straight-forward approach, but with bit of a creativity you can come with many various attack scenarios. 

While I agree that application isolation in X11 is a security problem, this bug/feature is bit of a new pokemon, it also breaks tab isolation within a browser itself, when used under X11.

n.
