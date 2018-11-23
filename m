X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1057" "Friday" "23" "November" "2018" "09:17:43" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>" "22" "[oss-security] Re: Crashes and memory safety bugs in dcraw" "^Date:" nil nil "11" "2018112317:17:43" "[oss-security] Re: Crashes and memory safety bugs in dcraw" (number mark "        itz@very.loo Nov 23   22/1057  " thread-indent "\"[oss-security] Re: Crashes and memory safety bugs in dcraw\"\n") "<20181123092217.7e4a0f84@computer>" ("<20181123092217.7e4a0f84@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5501 invoked by uid 550); 23 Nov 2018 17:32:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5469 invoked from network); 23 Nov 2018 17:32:25 -0000
Message-ID: <20181123171743.vcwfvbfds7ozhmse@matica.foolinux.mooo.com>
References: <20181123092217.7e4a0f84@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181123092217.7e4a0f84@computer>
User-Agent: NeoMutt/20180716-7-037281
Date: Fri, 23 Nov 2018 09:17:43 -0800
From: Ian Zimmerman <itz@very.loosely.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Crashes and memory safety bugs in dcraw
To: oss-security@lists.openwall.com

On 2018-11-23 09:22, Hanno Böck wrote:

> dcraw is a tool to process raw images from digital cameras.
> It easily crashes with various issues (tested version 9.28.0). This was
> very shallow testing (afl fuzzing with random inputs, not starting with
> valid images), I assume there's much more. I reported those a long time
> ago to its author, he didn't seem interested in fixing such issues.
> 
> Some applications use dcraw automatically to parse images (gthumb,
> kphotoalbum, kde thumbnailers, gwenview).

An important side note: because dcraw intentionally doesn't provide a
library, only an executable, code from it is bundled in at least some
applications that use it; thus updating the dcraw package in a distro
will not by itself be the end of this problem for the distro.  One such
application : RawTherapee

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet and on broken lists
which rewrite From, fetch the TXT record for no-use.mooo.com.
