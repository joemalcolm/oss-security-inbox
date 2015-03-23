X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["812" "Monday" "23" "March" "2015" "22:45:12" "+0100" "Thomas Klausner" "tk@giga.or.at" "<20150323214512.GB22688@danbala.tuwien.ac.at>" "25" "Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015032321:45:12" "[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        tk@giga.or.a Mar 23   25/812   " thread-indent "\"Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" "<20150318191306.GA3736@zoidberg>" "<sfid-H20150318-203137-+050.23-1@spamfilter.osbf.lua>" "<CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32419 invoked by uid 550); 23 Mar 2015 21:45:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32401 invoked from network); 23 Mar 2015 21:45:24 -0000
Message-ID: <20150323214512.GB22688@danbala.tuwien.ac.at>
References: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
 <20150318191306.GA3736@zoidberg>
 <sfid-H20150318-203137-+050.23-1@spamfilter.osbf.lua>
 <CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>
Cc: Timo Warns <Timo.Warns@gmail.com>
Date: Mon, 23 Mar 2015 22:45:12 +0100
From: Thomas Klausner <tk@giga.or.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: ZIP Integer Overflow leads to
 writing past heap boundary
To: oss-security@lists.openwall.com

On Thu, Mar 19, 2015 at 08:31:14AM +1300, Emmanuel Law wrote:
> Yup we realised that and notified libzip.
> On 19/03/2015 8:05 am, "Timo Warns" <Timo.Warns@gmail.com> wrote:
> 
> > On 2015-03-18, Emmanuel Law wrote:
> > > found an integer overflow in PHP. When processing a malform zip file with
> > > many entires, it leads to a heap overflow.
> > >
> > > Affected Version <= PHP 5.6.6
> > > Bug Report: https://bugs.php.net/bug.php?id=69253
> > > Patch:
> > >
> > https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5
> >
> > This looks like it may also affect libzip upstream
> > (http://hg.nih.at/libzip/file/fa78ab51417f/lib/zip_dirent.c)
> >
> > Was upstream (in copy) informed about the issue?

We have since fixed this:

http://hg.nih.at/libzip/rev/9f11d54f692e

Thanks!
 Thomas
