X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Wednesday" "6" "November" "2019" "14:40:41" "+0100" "Solar Designer" "solar@openwall.com" "<20191106134041.GA29158@openwall.com>" "31" "Re: [oss-security] Contributing Back" "^Date:" nil nil "11" "2019110613:40:41" "[oss-security] Contributing Back" (number mark "        solar@openwa Nov  6   31/1509  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20191105224311.GA26059@millbarge>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "<20190715192801.GA12290@openwall.com>" "<20191105184228.GA27029@openwall.com>" "<20191105224311.GA26059@millbarge>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30052 invoked by uid 550); 6 Nov 2019 13:40:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29959 invoked from network); 6 Nov 2019 13:40:49 -0000
Message-ID: <20191106134041.GA29158@openwall.com>
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com> <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com> <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com> <20190715192801.GA12290@openwall.com> <20191105184228.GA27029@openwall.com> <20191105224311.GA26059@millbarge>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191105224311.GA26059@millbarge>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 6 Nov 2019 14:40:41 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com,
	Joe McManus <joe.mcmanus@canonical.com>

On Tue, Nov 05, 2019 at 10:43:11PM +0000, Seth Arnold wrote:
> I'm uneasy reporting "I saw no further instances of this" or "I saw no
> issues with this patch" because I am keenly aware that I cannot be
> confident in my assessments. I'm very accustomed to pointing out problems
> when I see them, so that comes easily.

Besides "I saw no issues", etc. please also describe the scope of your
review - e.g., "I grepped the version X.Y tree for [some pattern] and
there were only two hits, which I reviewed and they look correct to me"
or "I've tried applying the patch to version X.Y, building with ASan,
and running the test suite on Ubuntu 19.10, and all tests passed" or
even "I skimmed over this lengthy patch in 10 minutes and didn't see
anything obviously wrong" (not ideal, but also not misleading).  Of
course, more detail (after a summary like this) would be even better -
e.g., you could include code snippets for those two grep hits from my
first example, which might result in others noticing issues in those.

For a real-world example, here's that message Anthony sent on July 25,
which is as desired in that it makes the scope clear:

"We have packaged the 4.92.1 release and performed some basic testing and
can confirm it works.  We do not have a reproducer for this issue so I
cannot confirm if the fix is correct but can confirm that the package is
stable."

> In any event I will do better.

Thank you, Seth.  Also, thank you Anthony for ack'ing my reminder (in
another message).

Alexander
