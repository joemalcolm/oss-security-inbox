X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["782" "Monday" "14" "March" "2016" "13:01:38" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1603141257140.12737@freddy.simplesystems.org>" "17" "Re: [oss-security] Re: CVE-Request - GNU Awk." "^Date:" nil nil "3" "2016031418:01:38" "[oss-security] Re: CVE-Request - GNU Awk." (number mark "        bfriesen@sim Mar 14   17/782   " thread-indent "\"Re: [oss-security] Re: CVE-Request - GNU Awk.\"\n") "<CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>" ("<20160314063228.GA12829@steve.org.uk>" "<20160314132652.4530b528@redhat.com>" "<nc6fs4$ta1$1@ger.gmane.org>" "<CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30219 invoked by uid 550); 14 Mar 2016 18:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27763 invoked from network); 14 Mar 2016 18:01:50 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1603141257140.12737@freddy.simplesystems.org>
References: <20160314063228.GA12829@steve.org.uk> <20160314132652.4530b528@redhat.com> <nc6fs4$ta1$1@ger.gmane.org> <CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 14 Mar 2016 13:01:38 -0500 (CDT)
Date: Mon, 14 Mar 2016 13:01:38 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-Request - GNU Awk.
To: oss-security <oss-security@lists.openwall.com>

On Mon, 14 Mar 2016, Kurt Seifried wrote:

> Is a SIGSEGV on it's own enough to justify a CVE? For some apps the answer
> would be yes (e.g. a single threaded network service that crashes out). For
> something like gawk I'm not so sure, it's a local utility that shouldn't

I don't see a security issue here.  It is just a bug.  In order for it 
to be a security issue, it needs to be caused by external data input 
into the program (e.g data processed by the awk script).  This would 
also apply to a network service which has a bug and crashes due to 
something other than specific external input (e.g. resource leak).

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
