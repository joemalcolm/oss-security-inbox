X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1591" "Tuesday" "31" "October" "2017" "13:50:36" "+0100" "=?UTF-8?B?U3RlZmFuIELDvGhsZXI=?=" "stbuehler@lighttpd.net" "<c5658eb7-b673-0543-8104-47e35f5a18a0@lighttpd.net>" "34" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103112:50:36" "[oss-security] Fw: Security risk of vim swap files" (number mark "        stbuehler@li Oct 31   34/1591  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031123745.GA10823@openwall.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031123745.GA10823@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3655 invoked by uid 550); 31 Oct 2017 13:31:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3498 invoked from network); 31 Oct 2017 12:50:49 -0000
References: <20171031132352.2df6d2ad@pc1>
 <20171031123745.GA10823@openwall.com>
Message-ID: <c5658eb7-b673-0543-8104-47e35f5a18a0@lighttpd.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171031123745.GA10823@openwall.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Tue, 31 Oct 2017 13:50:36 +0100
From: =?UTF-8?Q?Stefan_B=c3=bchler?= <stbuehler@lighttpd.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On 10/31/2017 01:37 PM, Solar Designer wrote:
> On Tue, Oct 31, 2017 at 01:23:52PM +0100, Hanno B??ck wrote:
>> I think vim should change the behavior of swap files:
>> 1. they should be stored in /tmp by default
>> 2. they should have secure permissions (tmp file security is
>> a tricky thing and needs careful consideration to avoid symlink attacks
>> and the like, but there are dedicated functions for this like mkstemp).
>> 3. Ideally they also shouldn't leak currently edited filenames (e.g.
>> they shouldn't be called /tmp/.test.txt.swp, but more something
>> like /tmp/.vim_swap.123782173)
> 
> Out of these, I think only 2 should be done: the files should be mode
> 0600 or 0400 even if the original file's permissions and/or the umask
> are more relaxed.
> 
> 1 and 3 go against intended use for these files - recovery of an edit in
> progress if the editor or the entire system crashes (and comes back up
> e.g. after a power-cycle).  /tmp contents might not survive a reboot,
> and randomized filenames would prevent vim itself from detecting the
> problem and offering recovery, which it does now.

You could keep the .test.txt.swp file, but make it a symlink and encode
information where to find the real swap file (/var/tmp/, /tmp, ...) in
the symlink.

It shouldn't link directly to the swap file, but perhaps look like
"swap:///var/tmp/.vim_swap.random_id".

Instead of a symlink you could of course just create a normal text file
with the real swap filename in it, but then it might be easier for an
attacker to find the real filename and read that file.

cheers,
Stefan
