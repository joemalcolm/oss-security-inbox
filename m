X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["695" "Tuesday" "31" "October" "2017" "11:18:43" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20171031181842.m3dltnyokqvf6csd@sentinelchicken.org>" "17" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103118:18:43" "[oss-security] Fw: Security risk of vim swap files" (number mark "        tim-security Oct 31   17/695   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031181051.GA75618@wopr>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171031181051.GA75618@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17554 invoked by uid 550); 31 Oct 2017 18:19:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17527 invoked from network); 31 Oct 2017 18:19:01 -0000
Message-ID: <20171031181842.m3dltnyokqvf6csd@sentinelchicken.org>
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171031181051.GA75618@wopr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171031181051.GA75618@wopr>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 31 Oct 2017 11:18:43 -0700
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

> > Sure, you can argue that maybe some systems should ignore these files,
> > block access, etc, but it is pretty absurd to expect every other piece
> > of software in the universe to work around very unsafe defaults of text
> > editors.  
> 
> It's also fairly absurd to insist that people can run whatever program
> they want, wherever they want, on a production web server, without being
> familiar enough with the program to understand the risks.
> 
> Anyone who edits files in the deployment path with an insufficient
> education is going to have problems, and not having noswapfile set is
> the least of them.

I don't disagree.  But this isn't just about exposures via web
servers.

tim
