X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1286" "Thursday" "17" "November" "2016" "19:15:16" "+0000" "John Haxby" "john.haxby@oracle.com" "<8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>" "27" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111719:15:16" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        john.haxby@o Nov 17   27/1286  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<20161117175017.GM5329@io.lakedaemon.net>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "<20161117163922.GL5329@io.lakedaemon.net>" "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>" "<20161117175017.GM5329@io.lakedaemon.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11272 invoked by uid 550); 17 Nov 2016 19:15:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10230 invoked from network); 17 Nov 2016 19:15:32 -0000
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
 <20161117163922.GL5329@io.lakedaemon.net>
 <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
 <20161117175017.GM5329@io.lakedaemon.net>
Message-ID: <8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161117175017.GM5329@io.lakedaemon.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Date: Thu, 17 Nov 2016 19:15:16 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

On 17/11/16 17:50, Jason Cooper wrote:
> Hi John,
> 
> On Thu, Nov 17, 2016 at 04:56:06PM +0000, John Haxby wrote:
>> > On 17/11/16 16:39, Jason Cooper wrote:
>>> > > However, the golden rule still applies.  Physical access trumps all
>>> > > defensive measures.  The absolute best you can do is detect that
>>> > > physical access occurred.  From there, you're hoping there are no
>>> > > hardware implants or other devices outside the scope of software
>>> > > security.
>> > 
>> > I agree.  However, it ought be to be harder than leaning on the enter
>> > key to break into a system.  You lock your doors even though it doesn't
>> > stop a determined burglar?
> Yes, as I said before, non-deterministic failure modes are bad.  This
> CVE is a bug in the initrd script and needs to be fixed.  What I
> disagree with, and still do, is the "sky is falling!" nature of the
> alert.

Yup.  I agree there, but that's down to the publicity its received.  We
can't do much but grin and bear that.   Red Hat have given this a CVSS2
score of 7.2 which reflects the _potential_ severity but marked it as
"moderate" which reflects the actual effect.   It's most serious for
people like me who have an encrypted root but no grub password (and no
rd.shell=0) but, no, the sky is not falling.

jch
