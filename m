X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5134" "Tuesday" "28" "November" "2017" "14:19:59" "+0100" "Bram Moolenaar" "Bram@moolenaar.net" "<201711281319.vASDJxWP010037@masaka.moolenaar.net>" "102" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Cc:" nil nil "11" "2017112813:19:59" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        Bram@moolena Nov 28  102/5134  " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>" ("<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <8kgxdPgyaEnF>
Received: (qmail 19763 invoked by uid 550); 28 Nov 2017 13:48:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29900 invoked from network); 28 Nov 2017 13:20:18 -0000
Message-Id: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
In-Reply-To: <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: Kurt Seifried <kseifrie@redhat.com>
Cc: oss-security@lists.openwall.com, Bram@moolenaar.net
Date: Tue, 28 Nov 2017 14:19:59 +0100
From: Bram Moolenaar <Bram@moolenaar.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: Scott Court <z5t1@z5t1.com>


> Here's the summary you asked for. As far as I've been able to tell,
> there are three vulnerabilities being discussed here:

Thanks.  I'll give my comments.

>     1. CVE-2017-1000382
> 
> This vulnerability was discovered by Hanno Böck. When editing a text
> file in Vim, a .swp file is created in the same directory (if you edit
> "foo", the swap file will be ".foo.swp"). Hanno pointed out that this
> could create a security vulnerability on PHP enabled webservers as follows:
> 
> If a user goes to edit a .php file in the public_html directory (say
> "foo.php"), a swap file will be created in the public_html directory
> called ".foo.php.swp". This then exposes the contents of the PHP script
> foo.php to the world. All someone has to do is go to
> "http://example.com/.foo.php.swp" and he can view the .swp file which
> contains the contents of the original foo.php file.
> 
> Hanno pointed out that this causes a problem with Wordpress sites if the
> site administrator edits the wp-config.php file in Vim: he exposes all
> of the database credentials. This is made worse if Vim crashes while he
> is editing it as then the .wp-config.php.swp file sticks around. He
> claims he has found 750 websites that are vulnerable to this.

This is a problem with the configuration of the web server.  It should
not publish files it doesn't know about.  The problem also happens for
any other file manipulation, e.g. "cp file.php file.php.orig" if you
want to make some temporary changes.  A .orig and .rej file may also
appear when applying a patch.  There are many other reasons why one
should not edit files under public_html directly, but have a separate
work space and only copy those files to public_html that belong there
(ideally with a script to run tests).

This is defenitely not a problem specific to Vim and it's not going to
change.

 
>     2. Vim .swp file group (Doesn't have a CVE ID)
> 
> This vulnerability was discovered by me. When Vim creates a .swp file,
> the .swp file is created with the owner and group set to the editor and
> editor's primary group respectively. The .swp file is the set to the
> same permissions as the original file (i.e. chmod 640). This creates a
> security vulnerability when the editor's primary group is not the same
> as the original file's group.
> 
> For example, say the root user's primary group is "users", which every
> user is a member of. If root goes to edit /etc/shadow, the
> /etc/.shadow.swp file is created with permissions 640 and user:group set
> to root:users. The original /etc/shadow file had user:group set to
> root:shadow though; this now exposes the /etc/shadow file (which mind
> you contains hashes of every user's password) to every user on the system.
> 
> Originally, I thought this was an extension of CVE-2017-1000382 so I
> didn't bother trying to get a CVE ID for it; however, upon looking at it
> for a second time, it seems that this is indeed a different
> vulnerability. It is possible to patch this vulnerability without
> patching CVE-2017-1000382.

This is a problem with the default group.  If every file that root
creates is readable by not trusted users, this will happen all the time,
for any file the root copies or creates.

Anyway, we don't want to give the swap file wider permissions than the
original file, so this was changed in patch 8.0.1263.

>     3. Vim.tiny race condition (Doesn't have a CVE ID as far as I know)
> 
> I'm not quite sure who discovered this vulnerability (I don't use or
> follow vim.tiny); however, it has been discussed on here so I will
> include my limited knowledge of it for completeness sake. This is a race
> condition in which a world writable SUID binary is temporarily created.
> This could (or course) theoretically allow an arbitrary user to write to
> that binary and execute arbitrary code as root; however, there is debate
> as to whether or not doing this is actually feasible.

I don't think this is feasible.  There was an example of a symlink
attack with several steps that are tricky but possible, with the result
of root creating a world writable config file.  Could also be used to
truncate an existing file.  This was fixed in patch 8.0.1300.

> I believe these are the three big ones; however, I may have missed
> something. There has been a lot of discussion about this family of
> vulnerabilities lately. There are definitely at least these three
> though. I'm sure if I've missed anything everyone else on this mailing
> list will be more than happy to let me know.

There was also a race condition in creating the viminfo file, which was
taken care of in 8.0.1345.

In my opinion all of these are small issues, because they are difficult
to exploit and require login access to the system in the first place.

-- 
Don't believe everything you hear or anything you say.

 /// Bram Moolenaar -- Bram@Moolenaar.net -- http://www.Moolenaar.net   \\\
///        sponsor Vim, vote for features -- http://www.Vim.org/sponsor/ \\\
\\\  an exciting new programming language -- http://www.Zimbu.org        ///
 \\\            help me help AIDS victims -- http://ICCF-Holland.org    ///
