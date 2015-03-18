X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["532" "Wednesday" "18" "March" "2015" "21:24:53" "+0100" "Timo Warns" "Timo.Warns@gmail.com" "<20150318202453.GA6085@zoidberg>" "15" "Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031820:24:53" "[oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        Timo.Warns@g Mar 18   15/532   " thread-indent "\"Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" "<20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5391 invoked by uid 550); 18 Mar 2015 20:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5362 invoked from network); 18 Mar 2015 20:17:55 -0000
Message-ID: <20150318202453.GA6085@zoidberg>
References: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
 <20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: emmanuel.law@gmail.com, oss-security@lists.openwall.com
Date: Wed, 18 Mar 2015 21:24:53 +0100
From: Timo Warns <Timo.Warns@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to
 writing past heap boundary
To: cve-assign@mitre.org

On 2015-03-18, cve-assign@mitre.org wrote:
> 
> > https://bugs.php.net/bug.php?id=69253
> > https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5
> 
> > PHP <= 5.6.6 has a Integer overflow vulnerability when opening a
> > ZipArchive with a large number of entries. This results in writing
> > past the heap boundary and crashing PHP.
> 
> Use CVE-2015-2331.

Can you please clarify the scope of CVE-2015-2331? Does it only cover
the vulnerability in PHP or does it also cover upstream libzip?

Thanks, Timo
