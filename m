X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1512" "Thursday" "31" "October" "2019" "09:13:31" "+0100" "Peter van Dijk" "peter.van.dijk@powerdns.com" "<65fba71e1eb02e277f02de7549614237f977c11c.camel@powerdns.com>" "27" "Re: [oss-security] Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243" "^Date:" nil nil "10" "2019103108:13:31" "[oss-security] Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243" (number mark "        peter.van.di Oct 31   27/1512  " thread-indent "\"Re: [oss-security] Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243\"\n") "<5f3a1c2215eb23adf527755ef7b49111332b63e1.camel@powerdns.com>" ("<8e3418e156a0219b465f4d44a39992eae1461386.camel@powerdns.com>" "<5f3a1c2215eb23adf527755ef7b49111332b63e1.camel@powerdns.com>") nil nil nil nil nil nil nil "Re: [oss-security] Python-3.5.8.tar.xz does NOT contain the fix for bpo-38243" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7600 invoked by uid 550); 31 Oct 2019 13:10:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5345 invoked from network); 31 Oct 2019 08:13:43 -0000
Message-ID: <65fba71e1eb02e277f02de7549614237f977c11c.camel@powerdns.com>
In-Reply-To: <5f3a1c2215eb23adf527755ef7b49111332b63e1.camel@powerdns.com>
References: <8e3418e156a0219b465f4d44a39992eae1461386.camel@powerdns.com>
	 <5f3a1c2215eb23adf527755ef7b49111332b63e1.camel@powerdns.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Thu, 31 Oct 2019 09:13:31 +0100
From: Peter van Dijk <peter.van.dijk@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Python-3.5.8.tar.xz does NOT contain the fix for
 bpo-38243
To: oss-security@lists.openwall.com

Python 3.5.8 is supposed to contain a fix for bpo-38243, as mentioned
> at 
> https://docs.python.org/3.5/whatsnew/changelog.html#python-3-5-8-final
> 
> It turns out python.org has accidentally shipped 3.5.8 without that
> fix, if you pick tar.xz instead of .tgz. Please find attached the email
> I have sent them.
> 
> I'm reporting this to oss-security so that no downstream distributors
> accidentally ship the wrong 3.5.8. I have also reported it directly to
> FreeBSD at https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=241586 as
> they are the only distribution I could think of that still actually
> ship vanilla Python 3.5.

Reply from the Python project:

Thanks for the heads-up.  During the 3.5.8 release process, I actually generated the tarball multiple times, and although I never officially released these previous versions, somehow the CDN latched onto this one .xz file from one of these test versions.  As you note, the MD5 sum and file size on the release page were correct for the final version; also, the v3.5.8 tag in the Git repo and the GPG checksum file also match this final (correct) version.

Still, it's a messy situation.  Fedora has already updated to 3.5.8, and they got the tarball without the fix for bpo-38243.

As you suggest, the best way to ameliorate this debacle is to just release a 3.5.9.  I'll do that in the next day or so.  In the meantime I'll send a quick note to the clp newsgroups.

Kind regards,
-- 
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

