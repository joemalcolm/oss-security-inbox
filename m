X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["342" "Tuesday" "28" "November" "2017" "07:30:30" "-0700" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171128143030.GB24000@takahe.colorado.edu>" "11" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Date:" nil nil "11" "2017112814:30:30" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        leonid.isaev Nov 28   11/342   " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<201711281319.vASDJxWP010037@masaka.moolenaar.net>" ("<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>" "<201711281319.vASDJxWP010037@masaka.moolenaar.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13505 invoked by uid 550); 28 Nov 2017 15:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8033 invoked from network); 28 Nov 2017 14:30:47 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171128143030.GB24000@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
 <201711281319.vASDJxWP010037@masaka.moolenaar.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Tue, 28 Nov 2017 07:30:30 -0700
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: oss-security@lists.openwall.com

On Tue, Nov 28, 2017 at 02:19:59PM +0100, Bram Moolenaar wrote:
> There are many other reasons why one
> should not edit files under public_html directly, but have a separate
> work space and only copy those files to public_html that belong there
> (ideally with a script to run tests).

But be aware of cp -b...

Sincerely,
-- 
Leonid Isaev
