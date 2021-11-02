X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["452" "Tuesday" "2" "November" "2021" "14:51:16" "-0400" "Michael Orlitzky" "michael@orlitzky.com" nil "15" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       michael@orli Nov  2   15/452   " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25733 invoked by uid 550); 2 Nov 2021 18:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25715 invoked from network); 2 Nov 2021 18:51:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1635879077; bh=/bNpF2cRZ2OAGUlk9pCw4IicNw5ICcVfF/BeLkgJz8g=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=Q0DfnJWyVFIYXDdnfCmkUicsXMtJjQauBOOLpMw6onBZtIa6ZMnBEUQj1v/jg9gah
	 zHzvfmdo+TUARtJLwLG516HQV49yTohJwMnCS5rUR0hnB8Xpo1meKIaxVTHH0ES2pS
	 BPTQYvfnlXJVBlGW6kOOA8a6NarHPfTB5RaGnfK4=
Message-ID: <1dfb5a3c1148b0517cfcca5a971ba74fbc55b420.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Tue, 02 Nov 2021 14:51:16 -0400
In-Reply-To: <02CDFB7D-3E27-4C74-A7FA-11FE08043AC2@dwheeler.com>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
	 <D57DA3B6-A316-4E54-8DFC-AD70D0D08AC4@dwheeler.com>
	 <CAKoP-y8CEv=h4a-ckLe+_p4WJk-CwzuXVCbBXTd8HrG+TSNmTw@mail.gmail.com>
	 <02CDFB7D-3E27-4C74-A7FA-11FE08043AC2@dwheeler.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Trojan Source Attacks

On Tue, 2021-11-02 at 10:05 -0700, David A. Wheeler wrote:
> 
> Underhanded code is, I think, significantly different. Instead of being clearly hard to understand,
> It’s designed to be (1) easy to understand WRONGLY, (2) look innocent, and
> (3) do something malevolent.
> 

I'm reminded also of this attack, where the "source code" is some
command you're supposed to execute via copy/paste:

  http://thejh.net/misc/website-terminal-copy-paste




