X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Wednesday" "17" "October" "2018" "08:30:43" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1810170816290.3841@freddy.simplesystems.org>" "35" "Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Date:" nil nil "10" "2018101713:30:43" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        bfriesen@sim Oct 17   35/1588  " thread-indent "\"Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<20181017061446.GM5150@brightrain.aerifal.cx>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "<20181016155722.32978ab2@jabberwock.cb.piermont.com>" "<CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>" "<20181017061446.GM5150@brightrain.aerifal.cx>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5450 invoked by uid 550); 17 Oct 2018 13:30:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5419 invoked from network); 17 Oct 2018 13:30:56 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20181017061446.GM5150@brightrain.aerifal.cx>
Message-ID: <alpine.GSO.2.20.1810170816290.3841@freddy.simplesystems.org>
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com> <20181016155722.32978ab2@jabberwock.cb.piermont.com> <CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com> <20181017061446.GM5150@brightrain.aerifal.cx>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 17 Oct 2018 08:30:43 -0500 (CDT)
Date: Wed, 17 Oct 2018 08:30:43 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: oss-security@lists.openwall.com

On Wed, 17 Oct 2018, Rich Felker wrote:
>>
>> Even with the easy to exploit stuff compiled out (which upstream do not
>> support), I haven't been bothering to get CVE's for all the memory
>> corruption or UaF I've been reporting, because nobody can keep up with
>> these operator leaks anyway.
>
> An obvious fix for UaF's would be just removing the frees. Use of gs
> as an interactive program where leaks would matter is a historical
> curiosity; the only meaningful modern use is as a converter.

Memory allocations would build to extremely large values across 
hundreds of rendered pages.  Use of Ghostscript in interactive 
programs is still surely common.  Programs using libgs will inherit 
any leaks.  These leaks and other issues should be fixed.

Keep in mind that Ghostscript is also used to render/view PDF files. 
When interactively viewing it is common to do just-in-time rendering. 
Even for bulk conversions, conversion on a page-by-page basis will 
save resources when dealing with many pages.

Alternatives do exist now for PDF due to Xpdf and the derived Poppler 
project and Poppler has become heavily used.

Ghostscript is still more competent at rendering PDF than Poppler is. 
Ghostscript is able to deal with CMYK color spaces, per-object 
colorspaces, and transparency, and it is able to render to various 
quality levels (bilevel, grayscale, RGB, RGBA, CMYK) depending on the 
output driver selected.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
