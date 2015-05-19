X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1051" "Tuesday" "19" "May" "2015" "11:25:02" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150519112502.211e3f39@redhat.com>" "32" "Re: [oss-security] [oCERT-2015-006] dcraw input sanitization errors" nil nil nil "5" "2015051909:25:02" "[oss-security] [oCERT-2015-006] dcraw input sanitization errors" (number mark "        scorneli@red May 19   32/1051  " thread-indent "\"Re: [oss-security] [oCERT-2015-006] dcraw input sanitization errors\"\n") "<20150511135955.GJ6507@core.inversepath.com>" ("<20150511135955.GJ6507@core.inversepath.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13419 invoked by uid 550); 19 May 2015 09:25:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13397 invoked from network); 19 May 2015 09:25:21 -0000
Message-ID: <20150519112502.211e3f39@redhat.com>
In-Reply-To: <20150511135955.GJ6507@core.inversepath.com>
References: <20150511135955.GJ6507@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 19 May 2015 11:25:02 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [oCERT-2015-006] dcraw input sanitization errors
To: oss-security@lists.openwall.com

On Mon, 11 May 2015 15:59:55 +0200
Andrea Barisani <lcars@ocert.org> wrote:

> 
> #2015-006 dcraw input sanitization errors
> 
> Description:
> 
> The dcraw photo decoder is an open source project for raw image
> parsing.
> 
> The dcraw tool, as well as several other projects re-using its code,
> suffers from an integer overflow condition which lead to a buffer
> overflow. The vulnerability concerns the 'len' variable, parsed
> without validation from opened images, used in the ljpeg_start()
> function.
> 
> A maliciously crafted raw image file can be used to trigger the
> vulnerability, causing a Denial of Service condition.
> 

Just as a heads-up: This should affect netpbm, too.
https://sourceforge.net/p/netpbm/code/HEAD/tree/advanced/converter/other/cameratopam/ljpeg.c

Although there's a check for "len" in line #37, it shouldn't trigger, as
"len" will be negative at that point.

-- 
Stefan Cornelius / Red Hat Product Security

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/
