X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Tuesday" "2" "November" "2021" "16:52:33" "-0400" "Stuart D Gathman" "stuart@gathman.org" nil "13" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       stuart@gathm Nov  2   13/752   " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28031 invoked by uid 550); 2 Nov 2021 20:59:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22119 invoked from network); 2 Nov 2021 20:57:32 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1635886358; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=Et0JTzFhcmj3O2R6I13uKmFidbGq0CjITmLKkYBpZ/M=; 
 b=O2Wlk0VLJTYer+7W2ggpc5XzSMtQsCsX784OEup2nYcZ11kCH9KsW7V2
 SSxN7Qq+ZNsCcrky1JIxVgBT6A45qzQtk5LFRZyZdhNCOLZuWfUSf5/8kW
 EJ5TyLIA4bNAB8GOJFY1QcnbZn2bXXWbYc3wzHKx39UgeUko22aFDQQNA=
Date: Tue, 2 Nov 2021 16:52:33 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
Message-ID: <cb5b46fd-8e2c-2638-c23-f557483c6fa@gathman.org>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Trojan Source Attacks

On Mon, 1 Nov 2021, Nicholas Boucher wrote:

> The first and primary technique, which we dub the Trojan Source attack, uses
> Unicode Bidirectional (Bidi) control characters embedded in comments and
> string literals to produce visually deceptive source code files. This
> technique enables an adversary to encode constructs that visually appear to
> be comments or string literals but execute as code, or vice versa. Complete
> details, as well as recommended mitigations, can be found in the attachment
> 001 Trojan Source.pdf. This vulnerability is tracked under CVE-2021-42574.

Syntax coloring thus becomes a critical security tool.  And bugs in
syntax coloring for an editor/viewer should be consider security flaws
and reported on oss-security.
