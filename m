X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["636" "Thursday" "17" "November" "2016" "16:56:06" "+0000" "John Haxby" "john.haxby@oracle.com" "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>" "15" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111716:56:06" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        john.haxby@o Nov 17   15/636   " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<20161117163922.GL5329@io.lakedaemon.net>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "<20161117163922.GL5329@io.lakedaemon.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3563 invoked by uid 550); 17 Nov 2016 16:56:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3535 invoked from network); 17 Nov 2016 16:56:21 -0000
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
 <20161117163922.GL5329@io.lakedaemon.net>
Message-ID: <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161117163922.GL5329@io.lakedaemon.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0021.oracle.com [156.151.31.71]
Date: Thu, 17 Nov 2016 16:56:06 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

On 17/11/16 16:39, Jason Cooper wrote:
> However, the golden rule still applies.  Physical access trumps all
> defensive measures.  The absolute best you can do is detect that
> physical access occurred.  From there, you're hoping there are no
> hardware implants or other devices outside the scope of software
> security.

I agree.  However, it ought be to be harder than leaning on the enter
key to break into a system.  You lock your doors even though it doesn't
stop a determined burglar?

(I note that if you set a grub password at installation time on Fedora
you also get rd.shell=0 which stops this particular attack dead.)

jch
