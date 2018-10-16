X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["876" "Tuesday" "16" "October" "2018" "15:57:22" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20181016155722.32978ab2@jabberwock.cb.piermont.com>" "21" "Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Cc:" nil nil "10" "2018101619:57:22" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        perry@piermo Oct 16   21/876   " thread-indent "\"Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26600 invoked by uid 550); 16 Oct 2018 19:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26582 invoked from network); 16 Oct 2018 19:57:35 -0000
Message-ID: <20181016155722.32978ab2@jabberwock.cb.piermont.com>
In-Reply-To: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Tue, 16 Oct 2018 15:57:22 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: Tavis Ormandy <taviso@google.com>

On Tue, 16 Oct 2018 11:06:14 -0700 Tavis Ormandy <taviso@google.com>
wrote:
> Side note: I'm done looking at ghostscript for now, but still
> *strongly* recommend that we deprecate untrusted postscript and
> disable ghostscript coders by default in policy.xml.

Again, given that PostScript is an archival format for a lot of
documents, wouldn't a version of ghostscript with all the ability to
do anything dangerous removed from the interpreter at compile time be
rational?

(And yes, it wouldn't be "standard" but I don't know that I
care much about that, and it would mean it would be safe to look at
30 year old PS documents that are often the only way to look at
some old academic paper. I look at such things at least a couple of
times a month. If Artifex isn't willing to do this, it's open
source, someone else should.)

Perry
-- 
Perry E. Metzger		perry@piermont.com
