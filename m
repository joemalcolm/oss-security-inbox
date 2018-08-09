X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2789" "Thursday" "9" "August" "2018" "18:17:54" "+0200" "Solar Designer" "solar@openwall.com" "<20180809161754.GA4649@openwall.com>" "64" "Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" "^Date:" nil nil "8" "2018080916:17:54" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" (number mark "U       solar@openwa Aug  9   64/2789  " thread-indent "\"Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)\"\n") "<PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>" ("<CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>" "<zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>" "<20180809125120.GA2475@openwall.com>" "<PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5695 invoked by uid 550); 9 Aug 2018 16:19:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28186 invoked from network); 9 Aug 2018 16:18:05 -0000
Message-ID: <20180809161754.GA4649@openwall.com>
References: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com> <zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss> <20180809125120.GA2475@openwall.com> <PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 9 Aug 2018 18:17:54 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)
To: oss-security@lists.openwall.com

On Thu, Aug 09, 2018 at 03:34:42PM +0000, Stiepan wrote:
> Thank you for fighting censorship

Perhaps I was not clear enough.  Obviously (to me), there was no
deliberate attempt at censorship here.  I am sure the co-moderator
simply didn't realize that rejecting your message could be construed as
censorship.  I did realize that, and made the correction.  That's team
work, not fighting.

> on what is supposed to be a list for managing security issues of open software.

It is.

> The issue is that it has gone so far from its original idea,

Has it?  That's not my impression.  The oss-security list is still
similar to what it was when we started it 10 years ago.

> with the embargoes

Embargoes existed way before oss-security, and will continue to exist.
When we started oss-security (in 2008), embargoes related to Linux
distros (and more) were handled mostly on vendor-sec (IIRC, since 1998)
and they could last arbitrarily long.  In 2011, we replaced vendor-sec
with the (linux-)distros lists, which I think are better managed: we
have a specific policy on max embargo duration (now 14 days max), etc.
If CERT somehow didn't publicize this specific issue fully by now, we'd
have made it public about now per the linux-distros list policy anyway,
ignoring CERT (the sender to linux-distros accepted that responsibility).
That's an improvement (even if a minor one) compared to the situation we
had with CERT and vendor-sec at the time we just started running the
oss-security list.

> and removal of direct CVE requests,

While the acceptance of CVE requests provided an incentive for people
who are into collecting CVEs to report issues in here, it also resulted
in "noise" in the sense that oss-security was too much of a CVE request
list, unintentionally discouraging discussion on other desirable topics.
With this noise gone, it is clearer to potential senders that this list
is a place for such discussions.

> that legal action remains the only logical one,

Since you're thinking in such terms anyway, please consider that someone
could also threaten legal action against someone disclosing a security
issue without giving all vendors time to develop a fix.  There's no way
to satisfy everyone's preferences at once, and legal action is no
solution.

> for anyone not part of the "club".

Which "club"?  If you're an Open Source operating system distro, you can
now apply to join (linux-)distros under our published criteria.
Otherwise, yes, you're out of luck joining that "club".  This is
"selective disclosure", and it has drawbacks.  There's no perfect
alternative.

> As to getting some funding to run it properly

To run what properly?  Just the public list?  Previously, you suggested
we get funding to run the "club", which you're now speaking against.

Alexander
