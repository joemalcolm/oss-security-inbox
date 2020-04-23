X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["494" "Thursday" "23" "April" "2020" "17:58:06" "+0200" "Claus Assmann" "ml+oss@esmtp.org" "<20200423155806.GA6911@kiel.esmtp.org>" "18" "[oss-security] Re: spoofing of local email sender via a homoglyph attack" "^Date:" nil nil "4" "2020042315:58:06" "[oss-security] Re: spoofing of local email sender via a homoglyph attack" (number mark "        ml+oss@esmtp Apr 23   18/494   " thread-indent "\"[oss-security] Re: spoofing of local email sender via a homoglyph attack\"\n") "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>") nil nil nil nil nil nil nil "[oss-security] Re: spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3408 invoked by uid 550); 23 Apr 2020 16:52:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11839 invoked from network); 23 Apr 2020 15:58:18 -0000
Message-ID: <20200423155806.GA6911@kiel.esmtp.org>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
 <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
 <20200423133148.GA19214@openwall.com>
 <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
Date: Thu, 23 Apr 2020 17:58:06 +0200
From: Claus Assmann <ml+oss@esmtp.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: spoofing of local email sender via a homoglyph attack
To: oss-security@lists.openwall.com

On Thu, Apr 23, 2020, PromiseLabs Pentest Research wrote:

> It's related to the from header.

> 220 *** OMITTED *** ESMTP Postfix
> mail from: john.doe@server.com
> 250 2.1.0 Ok

1. The correct syntax is
MAIL From:<john.doe@server.com>
See RFC 5321 et.al: no spaces, and <> around the address.

2. That's the envelope sender, not "the from header"
You can probably use
From: john.doe@server.com
in the header even without authentication (I haven't tried it; I
do not have postfix installed).

