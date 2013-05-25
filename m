X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/25/3
Message-ID: <CAHmME9o-34DVwr9XJ3kqv_nt6tWs0GLkStbCE1VjSQF8tq33Wg@mail.gmail.com>
Date: Sat, 25 May 2013 20:16:20 +0200
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: cgit@...ts.zx2c4.com
Subject: CVE Request: cgit directory traversal
Content-Type: text/plain; charset=utf-8

Hi Kurt,

As mentioned in early messages to oss-sec, I've inherited
maintainership of the cgit codebase and am gradually auditing it.
Today I found a nasty directory traversal:

http://somehost/?url=/somerepo/about/../../../../etc/passwd

This should be pretty straightforward to categorize.

Exploitation looks like:
http://data.zx2c4.com/cgit-directory-traversal.png

I've committed a fix for it here:
http://git.zx2c4.com/cgit/commit/?h=wip&id=babf94e04e74123eb658a823213c062663cdadd6

And this fix will be in the master branch and a new release will be made soon.

Cgit by default is not vulnerable to this, and the vulnerability only
exists when a user has configured cgit to use a readme file from a
filesystem filepath instead of from the git repo itself. Until a
release is made, administrators are urged to disable reading the
readme file from a filepath, if currently enabled.

Thanks,
Jason
