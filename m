X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1080" "Sunday" "17" "April" "2016" "16:25:31" "+0200" "none" "ytrezq@sdf-eu.org" "<8d3bc49e3cb55d99d9fa35c648f69451@mx.sdfeu.org>" "28" "[oss-security] Re: CVE Request: cpio -- directory traversal" nil nil nil "4" "2016041714:25:31" "[oss-security] Re: CVE Request: cpio -- directory traversal" (number mark "U       ytrezq@sdf-e Apr 17   28/1080  " thread-indent "\"[oss-security] Re: CVE Request: cpio -- directory traversal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29908 invoked by uid 550); 17 Apr 2016 14:35:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24386 invoked from network); 17 Apr 2016 14:25:44 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Sun, 17 Apr 2016 16:25:31 +0200
From: none <ytrezq@sdf-eu.org>
To: oss-security@lists.openwall.com
X-Priority: 1 (Highest)
Message-ID: <8d3bc49e3cb55d99d9fa35c648f69451@mx.sdfeu.org>
X-Sender: ytrezq@sdf-eu.org
User-Agent: Roundcube Webmail/1.1.4
Subject: [oss-security] Re: CVE Request: cpio -- directory traversal

On 2015-02-02 20:48, Vitezslav Cizek wrote:
>> * Dne Friday 16. January 2015, 03:44:25 [CET] Alexander Cherepanov 
>> napsal:
>>> cpio is susceptible to a directory traversal vulnerability via 
>>> symlinks.
>> 
>> Here's a patch we use in SUSE for some time.

> Thanks for sharing!

>> It forbids to write over symlinks, similar to bsdtar.

> Nice, this is a simple and easy approach. But I wonder if it's widely
> acceptable. GNU tar follows symlinks which are not extracted from the
> archive and, in 
> http://www.openwall.com/lists/oss-security/2015/01/08/4,
> Florian Weimer said: "If [the current directory] already contains
> symbolic links, some users expect that those links are followed because
> they have used symlinks to move part of the file system tree to
> somewhere else (perhaps a large file system)."

A year later, I see this bug is still not fixed.

What about using the ɢɴᴜ tar way in that case. I mean delay the creation 
of symlinks until all fifo/device/regular files and directories are 
created ? (instead of following the oder in the archive)


