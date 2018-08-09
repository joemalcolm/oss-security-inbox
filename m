X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["404" "Friday" "10" "August" "2018" "09:29:05" "+1000" "Dave Horsfall" "dave@horsfall.org" "<alpine.BSF.2.21.9999.1808100926020.19950@aneurin.horsfall.org>" "11" "Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" "^Date:" nil nil "8" "2018080923:29:05" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" (number mark "        dave@horsfal Aug 10   11/404   " thread-indent "\"Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)\"\n") "<zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>" ("<CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>" "<zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11853 invoked by uid 550); 10 Aug 2018 06:26:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4074 invoked from network); 9 Aug 2018 23:29:21 -0000
X-RG-Spam: Unknown
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedtjedrtdehgddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfupfevtfgpvffgnffuvfftteenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdttddttdervdenucfhrhhomhepffgrvhgvucfjohhrshhfrghllhcuoegurghvvgeshhhorhhsfhgrlhhlrdhorhhgqeenucfkphepuddutddrudeguddrudelfedrvdeffeenucfrrghrrghmpehhvghloheprghnvghurhhinhdrhhhorhhsfhgrlhhlrdhorhhgpdhinhgvthepuddutddrudeguddrudelfedrvdeffedpmhgrihhlfhhrohhmpeeouggrvhgvsehhohhrshhfrghllhdrohhrgheqpdhrtghpthhtohepoehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmqeenucevlhhushhtvghrufhiiigvpedt
X-RG-VS-CLASS: clean
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
In-Reply-To: <zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>
Message-ID: <alpine.BSF.2.21.9999.1808100926020.19950@aneurin.horsfall.org>
References: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com> <zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Date: Fri, 10 Aug 2018 09:29:05 +1000 (EST)
From: Dave Horsfall <dave@horsfall.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux TCP implementation vulnerable to Denial of
 Service (CVE 2018-5390)
To: oss-security@lists.openwall.com

On Thu, 9 Aug 2018, Stiepan wrote:

> Could you please provide some more details on the issue? About the same 
> period, our secure e-mail provider suffered an unprecedented DDoS with 
> some e-mail messages never reaching us.

Would this be the well-known TCP re-assembly bug?  Send lots of small 
packets (say out of order), and the CPU spends most of its time in glueing 
them back together.

-- Dave
