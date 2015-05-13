X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2901" "Wednesday" "13" "May" "2015" "11:43:31" "-0700" "Greg KH" "greg@kroah.com" "<20150513184331.GA1847@kroah.com>" "64" "Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015051318:43:31" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "        greg@kroah.c May 13   64/2901  " thread-indent "\"Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<1431542014-3239-1-git-send-email-Jason@zx2c4.com>" ("<1431542014-3239-1-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15638 invoked by uid 550); 13 May 2015 18:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15616 invoked from network); 13 May 2015 18:43:46 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=umKoeZngc0VLySnOEVnaAJMQws0=; b=cvQPJ
	YFAS3EbfXi5dKdjVIOKt7kLIkxlFxuy9i1mcKkyTOYQ2WdyuZBLSxsyScJC0DJjr
	HdEC41h2063HZH4DTdAsVXwDEOp07bNsFJyFJQvGpLP6Ow0rAR0RfeXHHpG7mtTc
	yeMEgqoqT6xWypgTo4OykRlWzA/iitlvnKYXiA=
X-Sasl-enc: AQOCJ2U1qOm78jPQj9Rq+3wfu4ZJBtKAkRqLJY7VZRQf 1431542613
Message-ID: <20150513184331.GA1847@kroah.com>
References: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: shigekatsu.tateno@atmel.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 13 May 2015 11:43:31 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death
 vulnerabilities
To: oss-security@lists.openwall.com

On Wed, May 13, 2015 at 08:33:30PM +0200, Jason A. Donenfeld wrote:
> The ozwpan driver accepts network packets, parses them, and converts
> them into various USB functionality. There are numerous security
> vulnerabilities in the handling of these packets. Two of them result in
> a memcpy(kernel_buffer, network_packet, -length), one of them is a
> divide-by-zero, and one of them is a loop that decrements -1 until it's
> zero.
> 
> I've written a very simple proof-of-concept for each one of these
> vulnerabilities to aid with detecting and fixing them. The general
> operation of each proof-of-concept code is:
> 
>   - Load the module with:
>     # insmod ozwpan.ko g_net_dev=eth0
>   - Compile the PoC with ozprotocol.h from the kernel tree:
>     $ cp /path/to/linux/drivers/staging/ozwpan/ozprotocol.h ./
>     $ gcc ./poc.c -o ./poc
>   - Run the PoC:
>     # ./poc eth0 [mac-address]
> 
> These PoCs should also be useful to the maintainers for testing out
> constructing and sending various other types of malformed packets against
> which this driver should be hardened.
> 
> Please assign CVEs for these vulnerabilities. I believe the first two
> patches of this set can receive one CVE for both, and the remaining two
> can receive one CVE each.
> 
> 
> On a slightly related note, there are several other vulnerabilities in
> this driver that are worth looking into. When ozwpan receives a packet,
> it casts the packet into a variety of different structs, based on the
> value of type and length parameters inside the packet. When making these
> casts, and when reading bytes based on this length parameter, the actual
> length of the packet in the socket buffer is never actually consulted. As
> such, it's very likely that a packet could be sent that results in the
> kernel reading memory in adjacent buffers, resulting in an information
> leak, or from unpaged addresses, resulting in a crash. In the former case,
> it may be possible with certain message types to actually send these
> leaked adjacent bytes back to the sender of the packet. So, I'd highly
> recommend the maintainers of this driver go branch-by-branch from the
> initial rx function, adding checks to ensure all reads and casts are
> within the bounds of the socket buffer.
> 
> Jason A. Donenfeld (4):
>   ozwpan: Use proper check to prevent heap overflow
>   ozwpan: Use unsigned ints to prevent heap overflow
>   ozwpan: divide-by-zero leading to panic
>   ozwpan: unchecked signed subtraction leads to DoS
> 
>  drivers/staging/ozwpan/ozhcd.c     |  8 ++++----
>  drivers/staging/ozwpan/ozusbif.h   |  4 ++--
>  drivers/staging/ozwpan/ozusbsvc1.c | 11 +++++++++--
>  3 files changed, 15 insertions(+), 8 deletions(-)

Any reason you didn't cc: the maintainer who could actually apply these
to the kernel tree?

Please use scripts/get_maintainer.pl to properly notify the correct
people.

thanks,

greg k-h
