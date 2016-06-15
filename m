X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Tuesday" "14" "June" "2016" "23:31:18" "-0400" "Simon McVittie" "smcv@debian.org" "<20160615033118.GA10094@perpetual.pseudorandom.co.uk>" "14" "Re: [oss-security] CVE-2016-5317: GNOME nautilus: crash occurs when generating a thumbnail for a crafted TIFF image" nil nil nil "6" "2016061503:31:18" "[oss-security] CVE-2016-5317: GNOME nautilus: crash occurs when generating a thumbnail for a crafted TIFF image" (number mark "U       smcv@debian. Jun 14   14/540   " thread-indent "\"Re: [oss-security] CVE-2016-5317: GNOME nautilus: crash occurs when generating a thumbnail for a crafted TIFF image\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BB62D8@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BB62D8@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28336 invoked by uid 550); 15 Jun 2016 03:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28308 invoked from network); 15 Jun 2016 03:31:30 -0000
Date: Tue, 14 Jun 2016 23:31:18 -0400
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20160615033118.GA10094@perpetual.pseudorandom.co.uk>
References: <5EDB84F4B23F5B4DB6500A89258280E0BB62D8@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BB62D8@EX02.corp.qihoo.net>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] CVE-2016-5317: GNOME nautilus: crash occurs when
 generating a thumbnail for a crafted TIFF image

On Wed, 15 Jun 2016 at 02:38:54 +0000, 张开翔 wrote:
> Product: nautilus
> Affected Versions: <= GNOME nautilus 3.18.5, <=libtiff.so 4.0.6
...
> Vendor URL: https://www.gnome.org/

Is there something about this vulnerability that makes it a Nautilus
vulnerability? From the stack trace you quoted, this looks like a
generic libtiff vulnerability that would affect any user of libtiff
equally, with Nautilus' role in this vulnerability merely being a
convenient user of libtiff that's easy to point at potentially
untrusted files?

    S
