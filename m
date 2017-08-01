X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1119" "Tuesday" "1" "August" "2017" "19:06:37" "+0200" "Solar Designer" "solar@openwall.com" "<20170801170637.GA15254@openwall.com>" "28" "Re: [oss-security] Syslog forwarding with IP spoofing" "^Cc:" nil nil "8" "2017080117:06:37" "[oss-security] Syslog forwarding with IP spoofing" (number mark "U       solar@openwa Aug  1   28/1119  " thread-indent "\"Re: [oss-security] Syslog forwarding with IP spoofing\"\n") "<1501597646.744346.23695.25373@mail.rambler.ru>" ("<1501597640.407871.9894.30815@mail.rambler.ru>" "<1501597646.744346.23695.25373@mail.rambler.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15597 invoked by uid 550); 1 Aug 2017 17:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15379 invoked from network); 1 Aug 2017 17:06:42 -0000
Message-ID: <20170801170637.GA15254@openwall.com>
References: <1501597640.407871.9894.30815@mail.rambler.ru> <1501597646.744346.23695.25373@mail.rambler.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1501597646.744346.23695.25373@mail.rambler.ru>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Tue, 1 Aug 2017 19:06:37 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Syslog forwarding with IP spoofing
To: =?koi8-r?B?4czFy9PBzsTSIO7P08HSxdc=?= <nosarev-ay@rambler.ru>

Hi all,

On Tue, Aug 01, 2017 at 05:27:26PM +0300, Александр Носарев wrote:
> I need to recive syslog messages, filter them and send them forward to the 
> SIEM.
> 
> Also HOST field is not represented in syslog, so i need to spoof IP of 
> forwarding
> packets to bind messages recived by SIEM to it's original source IP.
> 
> If i will try to add some marks to syslog message, I will need to override
> parsers for each syslog source type, so it seems like abad idea.
> 
> Is there any open source tool for that task?

Somehow we almost didn't have this sort of messages - someone seeking an
open source security tool - sent in here so far.  Do we want them in
here going forward?  The current list content guidelines do not address
this possibility, as it certainly wasn't the purpose of the oss-security
list so far.  Is there another mailing list where the above message
would have been more appropriate?

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

Meanwhile, please feel free to address the actual question about the
tool.  (I don't know of such a tool.)

Alexander
