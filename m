X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3804" "Thursday" "3" "August" "2017" "09:56:19" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20170803075619.GR25574@pali>" "94" "Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()" nil nil nil "8" "2017080307:56:19" "[oss-security] MySQL - use-after-free after mysql_stmt_close()" (number mark "U       pali.rohar@g Aug  3   94/3804  " thread-indent "\"Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()\"\n") "<20170802134032.547770e7@redhat.com>" ("<201706082349.03355@pali>" "<20170802134032.547770e7@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21960 invoked by uid 550); 3 Aug 2017 07:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21936 invoked from network); 3 Aug 2017 07:56:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=brZcouphnL6bxAS6iZPclzmK8c2Vm2pI8ekvdWo+JBA=;
        b=Z35FdwA3wuQSaxsuAv7wdoY6TPVSKEIuwGTqecYYKcLCByP/IOM9FyDSllHxMffOCB
         K85n5VGhMR/9xgNi7FwYkQh01ZuReNzX7Qe8TEY/dtkdSoTgyquYU3UNB3d1BZAmaeBB
         XVsV9hpyFlIQsppP3OIhT18Ut4znZ3Br0R53L4u8/CvIUnkouzsW2DbLD8N+QmEJ8u0A
         7Eo3CCRQ6WJu5U04s7J4nX2c3G3SblMqln0UvtuGn2ijYNxARo/j/IWro+0l6nyKneoj
         TGl8x0pqyMkDN7Pi3Jo807cae+siYj7bkkP02AnbVVgyFDSkmw/e33ejYDmbJU3ad6Fw
         efQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=brZcouphnL6bxAS6iZPclzmK8c2Vm2pI8ekvdWo+JBA=;
        b=IR6EIj7TBarrZE8eUD0CDzrwSob2bO2LHV3ojU3Tu9m7TJzjB/uJ1D668MyZNfAo3i
         ohVxFL66zuH7+M8xzZJ11Sa2FUPQgA7F4a7CJQnU+FQgEx6zx7S9eH6aBDW5ONc8Gvw0
         KtJtoYpt2LJZUfWLCoSFD3MXCcztrfO+ApM6w4oLX9RWvQpJtUhLM7To0kmckkqo9Bkf
         5+ZldVnRwnSt0EIeIo3PiigpQ0svFq5ePbiRhmLCLhGkQv5QGUH0W3O/sleUsSfkBdgv
         ouGkTic6Oq93jWbFQWel5rGKD24gnaoP5YNtZ5nVZaFOFF/FbQfj2BiMz7L1ZCtRYnbq
         7feg==
X-Gm-Message-State: AIVw110Uw3i7bEQjD39tercHYZG6XhclkFESXWJWd2HR3jGX7GEPPbcv
	1vmRnr8mJ9nDeA==
X-Received: by 10.28.151.19 with SMTP id z19mr630458wmd.161.1501746981865;
        Thu, 03 Aug 2017 00:56:21 -0700 (PDT)
Date: Thu, 3 Aug 2017 09:56:19 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Tomas Hoger <thoger@redhat.com>
Cc: oss-security@lists.openwall.com, security@mariadb.org,
	secalert_us@oracle.com, security@percona.com,
	Andrea Barisani <andrea@inversepath.com>,
	Michiel Beijen <michiel.beijen@gmail.com>,
	Alceu Rodrigues de Freitas Junior <glasswalk3r@yahoo.com.br>
Message-ID: <20170803075619.GR25574@pali>
References: <201706082349.03355@pali>
 <20170802134032.547770e7@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170802134032.547770e7@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()

On Wednesday 02 August 2017 13:40:32 Tomas Hoger wrote:
> On Thu, 8 Jun 2017 23:49:03 +0200 Pali Rohár wrote:
> 
> > MySQL applications written according to Oracle's MySQL documentation & 
> > examples for mysql_stmt_close() function call are vulnerable to use-
> > after-free defect.
> 
> ...
> 
> > Whole example of usage is written in mysql_stmt_execute() function [3]. 
> > The relevant part for mysql_stmt_close() is at the end of example:
> > 
> > /* Close the statement */
> > if (mysql_stmt_close(stmt))
> > {
> >   fprintf(stderr, " failed while closing the statement\n");
> >   fprintf(stderr, " %s\n", mysql_stmt_error(stmt));
> >   exit(0);
> > }
> > 
> > And here is a problem, use-after-free defect. Current implementation of 
> > mysql_stmt_close() function unconditionally free passed statement 
> > structure and therefore following mysql_stmt_error() call is defective 
> > to use-after-free.
> 
> ...
> 
> > Oracle team was unwilling to tell anything, provide any information how 
> > to handle such issue or what to do, therefore with suggestion from oCERT 
> > I decided to make this report public and open public discussion for 
> > other people on oss-security list how to handle this problem.
> > 
> > As Oracle fully ignored this problem and have not stated if problem is 
> > in documentation, implementation or both, I see probably 3 different 
> > solutions:
> 
> Oracle has previously updated code examples in the documentation.  They
> apparently also assigned CVE-2017-3635 via July 2017 CPU:
> 
> http://www.oracle.com/technetwork/security-advisory/cpujul2017-3236622.html#AppendixMSQL
> 
> There's the following note for the CVE:
> 
> """
> The documentation has also been updated for the correct way to use mysql_stmt_close(). Please see:
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-execute.html,
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-fetch.html,
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-close.html,
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-error.html,
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-errno.html, and
> https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-sqlstate.html
> """
> 
> The issue is listed as fixed in versions 5.5.57, 5.6.37, and 5.7.19.
> Their release notes also mention the change:
> 
> https://dev.mysql.com/doc/relnotes/mysql/5.5/en/news-5-5-57.html
> https://dev.mysql.com/doc/relnotes/mysql/5.6/en/news-5-6-37.html
> https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-19.html
> 
> """
> If the mysql_stmt_close() C API function was called, it freed memory
> that later could be accessed if mysql_stmt_error(), mysql_stmt_errno(),
> or mysql_stmt_sqlstate() was called. To obtain error information after
> a call to mysql_stmt_close(), call mysql_error(), mysql_errno(), or
> mysql_sqlstate() instead. (Bug #25988681)
> """
> 
> There is also a code change referencing the above bug:
> 
> https://github.com/mysql/mysql-server/commit/3d8134d2c9b74bc8883ffe2ef59c168361223837
> 
> which does not seem to address the use-after-free problem.

Yes, that commit do absolutely nothing.

> It seems the CVE is effectively for buggy documentation, and the
> fixed-in version numbers are not really relevant.

So again, full silence and no information from Oracle about security
related reports for MySQL. They did absolutely nothing for 2 months
since public report of this issue.

Even CVE does not contain any information for which was assigned. Do we
need such CVE at all??

They are uncommunicative and ignore reports which can classified as
security. The only think what they can do is to threaten people if they
want to start public discussion about issue. My concern about Oracle
still remains: The worst company in handling security issue.

-- 
Pali Rohár
pali.rohar@gmail.com
