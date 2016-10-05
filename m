X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1382" "Wednesday" "5" "October" "2016" "12:24:46" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1610051214000.29692@freddy.simplesystems.org>" "35" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100517:24:46" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        bfriesen@sim Oct  5   35/1382  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<20161005184753.417dd846@pc1>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005184753.417dd846@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9601 invoked by uid 550); 5 Oct 2016 17:25:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9582 invoked from network); 5 Oct 2016 17:24:59 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20161005184753.417dd846@pc1>
Message-ID: <alpine.GSO.2.20.1610051214000.29692@freddy.simplesystems.org>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com> <20161005184753.417dd846@pc1>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-2032315143-1475688286=:29692"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 05 Oct 2016 12:24:47 -0500 (CDT)
Date: Wed, 5 Oct 2016 12:24:46 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox
 problems
To: oss-security@lists.openwall.com

---559023410-2032315143-1475688286=:29692
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 5 Oct 2016, Hanno Böck wrote:
>
> I was surprised to see evince in this list. It uses poppler for pdf and
> libspectre for postscript, so there seems to be no use of
> ghostscript (maybe in an older version).

There is only one open-sourced Postscript interpreter (Ghostscript) 
that I am aware of.

There are perhaps two open-sourced PDF interpreters available 
(Ghostscript and derivatives of 'xpdf' like 'poppler').

ImageMagick and GraphicsMagick are depending on Ghostscript.

Since Postscript is a format commonly sent to printers, many programs 
produce it, and thus it is used as an intermediate format.  The 
typical use case is for ImageMagick/GraphicsMagick to automatically 
run an external utility which converts from the format being read into 
Postscript, then Ghostscript is used to convert it to a raster format 
(e.g. PNM), and then the raster format is read by 
ImageMagick/GraphicsMagick before being output to the final format.

Disabling Ghostscript or requiring user input to proceed will cause a 
lot of breakage.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-2032315143-1475688286=:29692--
