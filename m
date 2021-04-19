X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["535" "Monday" "19" "April" "2021" "20:59:26" "+0100" "Stuart Henderson" "stu@spacehopper.org" nil "10" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       stu@spacehop Apr 19   10/535   " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28364 invoked by uid 550); 19 Apr 2021 19:59:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28346 invoked from network); 19 Apr 2021 19:59:38 -0000
Date: Mon, 19 Apr 2021 20:59:26 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <YH3hHq9VyQnz4kjY@symphytum.spacehopper.org>
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
 <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
 <fba0d965-fe1-a7af-bda3-5871ba9450d6@dereferenced.org>
 <93DB9621-4F4E-492B-94E9-EB86E5D09CE0@dwheeler.com>
 <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>
 <3eff829a-7795-2437-4aea-433849ffdd5b@archlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3eff829a-7795-2437-4aea-433849ffdd5b@archlinux.org>
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

On 2021/04/19 14:31, Eli Schwartz wrote:
> Also fping is the standard fping, but there is no standard ping so one
> would need to coordinate adding the option to a number of different
> descendant forks of 4.3BSD ping, before it could be reliably used.

Unfortunately fping isn't really standard either (e.g. flent uses it but
has a bunch of checks to make sure the installed version works as expected;
https://github.com/tohojo/flent/blob/master/flent/runners.py#L1210)
though it's less of a challenge than the many different pings.

