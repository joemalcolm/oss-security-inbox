X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["525" "Thursday" "4" "November" "2021" "13:30:46" "+0000" "Leonid Isaev (ifax)" "leonid.isaev@ifax.com" nil "20" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       leonid.isaev Nov  4   20/525   " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18150 invoked by uid 550); 4 Nov 2021 13:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30054 invoked from network); 4 Nov 2021 13:30:59 -0000
Date: Thu, 4 Nov 2021 13:30:46 +0000
From: "Leonid Isaev (ifax)" <leonid.isaev@ifax.com>
To: oss-security@lists.openwall.com
Message-ID: <20211104133046.GA2412204@orca>
Mail-Followup-To: oss-security@lists.openwall.com
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
 <CAGUWgD8z-3C+dPis2DFEkUbBDhRRvdp1Y6otJxm4cd_w23A_JA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD8z-3C+dPis2DFEkUbBDhRRvdp1Y6otJxm4cd_w23A_JA@mail.gmail.com>
User-Agent: Mutt/1.13.4 (2020-02-15)
Subject: Re: [oss-security] Trojan Source Attacks

On Thu, Nov 04, 2021 at 01:36:37PM +0200, Georgi Guninski wrote:
> Similar attack is known, search the web for "homograph attack"
> or check:  https://dev.to/logan/homographs-attack--5a1p
> 
> The basic idea is that Cyrillic M-PM-^P looks like Latin A.
> 
> Can you tell first from second:
> True   M-PM-"rue
> False  FM-PM-0lse
> Zero   ZM-PM-5ro
> google gM-PM->M-PM->gle

Yeah. And this is why when replying, my mutt(1) is configured to pipe messages
to "cat -v" before launching vi(1)...

Sincerely,
L.

-- 
Leonid Isaev
