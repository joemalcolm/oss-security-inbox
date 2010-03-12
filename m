X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/12/1
Message-ID: <4B99CE83.6070300@kernel.sg>
Date: Fri, 12 Mar 2010 13:17:55 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: coley@...us.mitre.org
Subject: CVE-2010-0727 kernel: gfs/gfs2 locking code DoS flaw
Content-Type: text/plain; charset=utf-8

static int
gfs_lock(struct file *file, int cmd, struct file_lock *fl)
{
..
         if ((ip->i_di.di_mode & (S_ISGID | S_IXGRP)) == S_ISGID)
                 return -ENOLCK;
..
}

This is a check for mandatory locking where the GFS/GFS2 locking code 
will skip the lock in case sgid bits are set for the file. This can be 
triggered to cause a crash on a system mounting a GFS/GFS2 filesystem.

I believe only GFS2 is part of the upstream kernel, and GFS only affects 
Red Hat Enterprise Linux.

https://bugzilla.redhat.com/CVE-2010-0727
http://lkml.org/lkml/2010/3/11/269

Thanks, Eugene
