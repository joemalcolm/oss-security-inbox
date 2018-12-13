X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Thursday" "13" "December" "2018" "11:39:29" "+0100" "Solar Designer" "solar@openwall.com" "<20181213103929.GA16401@openwall.com>" "23" "Re: [oss-security] libvnc and tightvnc vulnerabilities" "^Cc:" nil nil "12" "2018121310:39:29" "[oss-security] libvnc and tightvnc vulnerabilities" (number mark "        solar@openwa Dec 13   23/1072  " thread-indent "\"Re: [oss-security] libvnc and tightvnc vulnerabilities\"\n") "<20181210185721.GA4259@openwall.com>" ("<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>" "<20181210154020.GA2063@openwall.com>" "<200f245d2ec342c3bc05586d3f277b42@kaspersky.com>" "<20181210185721.GA4259@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7872 invoked by uid 550); 13 Dec 2018 10:39:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7709 invoked from network); 13 Dec 2018 10:39:33 -0000
Message-ID: <20181213103929.GA16401@openwall.com>
References: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com> <20181210154020.GA2063@openwall.com> <200f245d2ec342c3bc05586d3f277b42@kaspersky.com> <20181210185721.GA4259@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181210185721.GA4259@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Dec 2018 11:39:29 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libvnc and tightvnc vulnerabilities
To: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>

On Mon, Dec 10, 2018 at 07:57:21PM +0100, Solar Designer wrote:
> https://github.com/LibVNC/libvncserver/issues/247
> 
> Upstream's fix appears to be to add casts to (uint64_t) before adding 1
> in those many malloc() calls.  On platforms with larger than 32-bit
> size_t, this should be sufficient against integer overflows since the
> sizes are read from 32-bit protocol fields, but it isn't sufficient to
> prevent maliciously large memory allocation on the client by a rogue
> server.  On a platform with 32-bit size_t, this isn't even sufficient to
> prevent the integer overflows.  If I haven't missed anything, it'd be
> great if you open a new issue suggesting introduction of safety limits
> prior to those malloc() lines.

> [...] per the commits referenced in issue #247 above, there are many more
> instances of the "malloc(... + 1)" pattern, which were patched similarly
> incompletely.

I've just created this issue:

SECURITY: malloc((uint64_t)length + 1) is unsafe, especially on 32-bit systems
https://github.com/LibVNC/libvncserver/issues/273

Alexander
