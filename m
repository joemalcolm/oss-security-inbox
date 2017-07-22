X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2184" "Saturday" "22" "July" "2017" "14:20:20" "+0200" "=?UTF-8?B?U3RlZmFuIELDvGhsZXI=?=" "stbuehler@lighttpd.net" "<8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>" "69" "[oss-security] pagure: private repositories accessible through ssh" "^Cc:" nil nil "7" "2017072212:20:20" "[oss-security] pagure: private repositories accessible through ssh" (number mark "        stbuehler@li Jul 22   69/2184  " thread-indent "\"[oss-security] pagure: private repositories accessible through ssh\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22012 invoked by uid 550); 22 Jul 2017 13:22:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11964 invoked from network); 22 Jul 2017 12:20:34 -0000
Message-ID: <8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------5FDAF22657B6918968F6DE83"
Content-Language: en-US
Cc: Pierre-Yves Chibon <pingou@pingoured.fr>
Date: Sat, 22 Jul 2017 14:20:20 +0200
From: =?UTF-8?Q?Stefan_B=c3=bchler?= <stbuehler@lighttpd.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] pagure: private repositories accessible through ssh
To: oss-security@lists.openwall.com

--------------5FDAF22657B6918968F6DE83
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

pagure [1], a git-centered forge, supports private repositories [2]:

> PRIVATE_PROJECTS
> ~~~~~~~~~~~~~~~~
>
> This configuration key allows you to host private repositories. These
> repositories are visible only to the creator of the repository and to
> the users who are given access to the repository.  No information is
> leaked about the private repository which means redis doesn't have the
> access to the repository and even fedmsg doesn't get any
> notifications.
>
> Defaults to: ``False``

But the gitolite config, which is used to configure SSH-access, allows
"@all" users to access all repositories - private or not.

I proposed the attached patch upstream in [3].

After patching you should ensure gitolite.conf gets regenerated from
scratch.

cheers,
Stefan

[1]: https://pagure.io/pagure
[2]: https://pagure.io/pagure/blob/master/f/doc/configuration.rst
[3]: https://pagure.io/pagure/pull-request/2426

--------------5FDAF22657B6918968F6DE83
Content-Type: text/x-patch;
 name="2426-hide-private-repos-in-ssh.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="2426-hide-private-repos-in-ssh.patch"

>From 4af96a179912fc651e544c8ff90d9ddc9c7e6f48 Mon Sep 17 00:00:00 2001
From: Stefan Bühler <stbuehler@web.de>
Date: Jul 17 2017 16:53:13 +0000
Subject: hide private repos in ssh too


'@all' shouldn't have access to private repos, otherwise every user sees
all private repositories.

---

diff --git a/pagure/lib/git_auth.py b/pagure/lib/git_auth.py
index 939e053..577b668 100644
--- a/pagure/lib/git_auth.py
+++ b/pagure/lib/git_auth.py
@@ -126,7 +126,7 @@ class Gitolite2Auth(GitAuthHelper):
                 repos = ''
 
             config.append('repo %s%s' % (repos, project.fullname))
-            if repos not in ['tickets/', 'requests/']:
+            if not project.private and repos not in ['tickets/', 'requests/']:
                 config.append('  R   = @all')
             if project.committer_groups:
                 config.append('  RW+ = @%s' % ' @'.join(


--------------5FDAF22657B6918968F6DE83--
