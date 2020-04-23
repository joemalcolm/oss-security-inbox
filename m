X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["940" "Thursday" "23" "April" "2020" "12:33:34" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<326221db60085d047ec552343f0f3a5e0e14ae7e.camel@gathman.org>" "24" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Date:" nil nil "4" "2020042316:33:34" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        stuart@gathm Apr 23   24/940   " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7365 invoked by uid 550); 23 Apr 2020 16:52:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16144 invoked from network); 23 Apr 2020 16:33:47 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::38" (melissa.gathman.org); auth=pass (PLAIN sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1587659559; 
 h=message-id : subject : from : to : date : in-reply-to : 
 references : content-type : mime-version : 
 content-transfer-encoding : subject : from : date; 
 bh=pGHrDoXvrtitKHKBRv4312mFFY1ppY0WAfNpOb64h9c=; 
 b=VLZUF3n8ng9MmLlVjWjaQMsCuL/B0yMDcQ+b+TfW3/aNh1r26wlcjKqP
 3WEiUp5NJJWK51ZOH1swSz6g3ut29jwTe8vmo6opUY+FII1a7hge1Hmj7H
 aac6EoqNAUuGKD6ioKEnziQy3L7bHz4+Dka9Hgt7jECPXFIZaW0rV9XcM=
Message-ID: <326221db60085d047ec552343f0f3a5e0e14ae7e.camel@gathman.org>
In-Reply-To: <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
	 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
	 <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
	 <20200423133148.GA19214@openwall.com>
	 <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
Organization: Gathman Family
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Thu, 23 Apr 2020 12:33:34 -0400
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph
 attack
To: oss-security@lists.openwall.com

On Thu, 2020-04-23 at 17:32 +0300, PromiseLabs Pentest Research wrote:
> 
> is that it could be used to advance a social-engineer attack into 
> tricking the recipients believing that they are getting an email from
> a 
> high-level position at the company.
> 
> It's related to the from header.

This is not really job of postfix to block.  It is trivial to block
internationalized local mail in a milter (note: I maintain pymilter) -
or just refuse to create non-ascii mailboxes.  

You don't even need utf-
8 for this attack - the infamous Arial font makes homoglyphs like lBM
(which looks exactly like IBM in Arial) possible, and email localpart
is case sensitive.  So I also recommend forcing all local mailboxes to
be all lower case.  (Some businesses force to all upper case instead.) 


If anything, this is a security bug in the *font* (which the term
homoglyph implies), and the CVE should specify the problematic font or
fonts.

