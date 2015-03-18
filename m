X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["510" "Wednesday" "18" "March" "2015" "20:13:07" "+0100" "Timo Warns" "Timo.Warns@gmail.com" "<20150318191306.GA3736@zoidberg>" "15" "Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031819:13:07" "[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        Timo.Warns@g Mar 18   15/510   " thread-indent "\"Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23819 invoked by uid 550); 18 Mar 2015 19:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23795 invoked from network); 18 Mar 2015 19:06:10 -0000
Message-ID: <20150318191306.GA3736@zoidberg>
References: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: tk@giga.or.at
Date: Wed, 18 Mar 2015 20:13:07 +0100
From: Timo Warns <Timo.Warns@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: ZIP Integer Overflow leads to
 writing past heap boundary
To: oss-security@lists.openwall.com, Emmanuel Law <emmanuel.law@gmail.com>

On 2015-03-18, Emmanuel Law wrote:
> found an integer overflow in PHP. When processing a malform zip file with
> many entires, it leads to a heap overflow.
> 
> Affected Version <= PHP 5.6.6
> Bug Report: https://bugs.php.net/bug.php?id=69253
> Patch:
> https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5

This looks like it may also affect libzip upstream
(http://hg.nih.at/libzip/file/fa78ab51417f/lib/zip_dirent.c)

Was upstream (in copy) informed about the issue?

Cheers, Timo
