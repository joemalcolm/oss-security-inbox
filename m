X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["485" "Friday" "11" "March" "2016" "22:22:40" "+0100" "=?UTF-8?B?TW9yaXR6IE3DvGhsZW5ob2Zm?=" "jmm@inutil.org" "<20160311212240.GA3689@pisco.westfalen.local>" "12" "Re: [oss-security] Several out of bounds reads in ProFTPD" nil nil nil "3" "2016031121:22:40" "[oss-security] Several out of bounds reads in ProFTPD" (number mark "U       jmm@inutil.o Mar 11   12/485   " thread-indent "\"Re: [oss-security] Several out of bounds reads in ProFTPD\"\n") "<20160311172515.5af76630@pc1>" ("<20160311172515.5af76630@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32616 invoked by uid 550); 11 Mar 2016 21:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32595 invoked from network); 11 Mar 2016 21:22:53 -0000
Date: Fri, 11 Mar 2016 22:22:40 +0100
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160311212240.GA3689@pisco.westfalen.local>
References: <20160311172515.5af76630@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160311172515.5af76630@pc1>
User-Agent: Mutt/1.5.24 (2015-08-30)
From: =?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>
X-SA-Exim-Connect-IP: 95.33.144.120
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Several out of bounds reads in ProFTPD

On Fri, Mar 11, 2016 at 05:25:15PM +0100, Hanno Böck wrote:
> https://blog.fuzzing-project.org/40-Several-out-of-bounds-reads-in-ProFTPD.html
> 
> The latest releases of ProFTPD 1.3.5a and 1.3.6rc2 fix several out of
> bounds read issues. I discovered these issues by running the test suite
> with Address Sanitizer enabled.

Can you elaborate on the impact? Do any of these allow a user to crash the ftpd or
can the user merely terminate  her own FTP session?

Cheers,
        Moritz
