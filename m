X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Tuesday" "31" "October" "2017" "10:54:08" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "20" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103117:54:08" "[oss-security] Fw: Security risk of vim swap files" (number mark "        tim-security Oct 31   20/715   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20407 invoked by uid 550); 31 Oct 2017 17:54:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20374 invoked from network); 31 Oct 2017 17:54:27 -0000
Message-ID: <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
References: <20171031132352.2df6d2ad@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20171031132352.2df6d2ad@pc1>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 31 Oct 2017 10:54:08 -0700
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Tue, Oct 31, 2017 at 01:23:52PM +0100, Hanno Böck wrote:
> I just sent this to the vim dev list, but I guess it's interesting for
> oss-security, too.
> ...

Good thing to point out.  Same goes for other editors that drop ~ and
#...# files and the like.  The default location shouldn't be an
exposure.

Sure, you can argue that maybe some systems should ignore these files,
block access, etc, but it is pretty absurd to expect every other piece
of software in the universe to work around very unsafe defaults of text
editors.  

Also, it almost never makes sense to put things in /tmp, for several
reasons pointed out by others.  Making ~/.vim/... the default location
clearly is the best solution.

Cheers,
tim
