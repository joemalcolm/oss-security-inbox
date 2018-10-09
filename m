X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["861" "Tuesday" "9" "October" "2018" "17:14:45" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "21" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018100922:14:45" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        bfriesen@sim Oct  9   21/861   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19864 invoked by uid 550); 9 Oct 2018 22:14:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19837 invoked from network); 9 Oct 2018 22:14:58 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com> <20181009153006.GF21509@takahe.colorado.edu> <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 09 Oct 2018 17:14:45 -0500 (CDT)
Date: Tue, 9 Oct 2018 17:14:45 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

On Tue, 9 Oct 2018, Tavis Ormandy wrote:
>
> I think we should encourage switching to other document formats that we
> have a better handle on securing. If you do need untrusted ps, I think
> treating it the same as shell script file you downloaded from the internet.

Due to its valuable current usages (e.g. printing and format 
conversion) and its long legacy, Postscript is still a vital format to 
support in open source software.

How can software consuming Postscript be aware of its origin unless it 
is known to be produced directly by another application?

Edge applications such as web browsers may be able to help by adding 
warning dialogs when knowingly downloading Postscript content.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
