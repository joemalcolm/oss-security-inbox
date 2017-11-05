X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["897" "Saturday" "4" "November" "2017" "23:13:29" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171105051329.GB22636@takahe.colorado.edu>" "19" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110505:13:29" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "        leonid.isaev Nov  4   19/897   " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") "<20171103143900.GA2541@openwall.com>" ("<2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local>" "<20171103141849.GA2264@openwall.com>" "<20171103143900.GA2541@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19870 invoked by uid 550); 5 Nov 2017 10:59:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1689 invoked from network); 5 Nov 2017 05:13:44 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171105051329.GB22636@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local>
 <20171103141849.GA2264@openwall.com>
 <20171103143900.GA2541@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171103143900.GA2541@openwall.com>
User-Agent: Mutt/1.9.0 (2017-09-02)
Date: Sat, 4 Nov 2017 23:13:29 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
To: oss-security@lists.openwall.com

On Fri, Nov 03, 2017 at 03:39:00PM +0100, Solar Designer wrote:
> ... reuse sshd(8).
> 
> And this last possibility brings us to what we can (and I sometimes do)
> use already - setting up temporary SSH keys with forced "cat < ..." or
> "cat > ..." commands, and using SSH for safely exchanging files by users
> of the same host, or of different hosts for this matter.  It's just
> manual setup each time, and we could want to provide convenient tools to
> automate that.

Ah, great :) I've been using sshd and ssh as a sudo replacement on all
machines, inspired by your old article about insecurities of the latter (with
locked root password, so su also doesn't work). Of course, sshd is in general
listens on localhost:22. As for the keys, the keypair to access root, as well
as root's authorized_keys file, are generated at each boot and stored in tmpfs.

Thanks for the idea,
-- 
Leonid Isaev
