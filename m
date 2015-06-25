X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2114" "Wednesday" "24" "June" "2015" "22:45:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150625024518.E36E5ABC026@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE Request: Information disclosure in MantisBT" nil nil nil "6" "2015062502:45:18" "[oss-security] Re: CVE Request: Information disclosure in MantisBT" (number mark "U       cve-assign@m Jun 24   57/2114  " thread-indent "\"[oss-security] Re: CVE Request: Information disclosure in MantisBT\"\n") "<mmfd21$39r$1@ger.gmane.org>" ("<mmfd21$39r$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17566 invoked by uid 550); 25 Jun 2015 02:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17546 invoked from network); 25 Jun 2015 02:45:30 -0000
In-Reply-To: <mmfd21$39r$1@ger.gmane.org>
Message-Id: <20150625024518.E36E5ABC026@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 24 Jun 2015 22:45:18 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Information disclosure in MantisBT
To: dregad@mantisbt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> When this feature is enabled ($g_enable_project_documentation = ON) and
> the threshold to view these files is left to its default value
> ($g_view_proj_doc_threshold = ANYBODY), any registered user in the
> system can download every such attachment, including those which are
> linked to private projects to which the user does not have access.
> 
> This can be achieved by calling the download script directly, and
> specifying the ID of the file to download, e.g.
> 
> http://example.com/mantis/file_download.php?file_id=123&type=doc
> 
> https://mantisbt.org/bugs/view.php?id=19873
> 
> http://github.com/mantisbt/mantisbt/commit/f39cf5251953b468e9d921e1cf2aca3abdb00772
> http://github.com/mantisbt/mantisbt/commit/a4be76d6e5c4939545d84712c79d3f8f4a108c4f

Use CVE-2015-5059 for the issue in which $g_view_proj_doc_threshold
had been ANYBODY but is supposed to be VIEWER.

Is there any related security problem caused by this possible
inconsistency in the code:

  define( 'ANYBODY', 0 );

  function access_get_global_level

          if( empty( $p_user_id ) && !auth_is_user_authenticated() ) {
                  return false;


  function access_get_project_level

          if( empty( $p_user_id ) && !auth_is_user_authenticated() ) {
                  return ANYBODY;

? In other words, is an unauthenticated client sometimes, but not always,
considered to have the ANYBODY access level?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVi2qwAAoJEKllVAevmvmsW7QH/1SeDa13+jKIqpyOpac5eBgc
Hnq2byG7ZzJ3vKmEkgRUbfCsvcU27f2f+6XrbnCFliulxe8X1kr3bem45rionhvt
L+2AhEUkH9a0t8kHvbske+rASAXmuaYH39FLeipF8WHt0C9QBbLbm7m5WaRSz4G6
1SaLgTI634qPviFc9ClI7/EgDfAj/Dzm+W9e5T+A+QcOyWcyZRXc1+4wqfkwq4R3
JpcC67tNIdQaMt5dBJ8UenfMbcVfmt7M7509dK+kKV4qLNhSCwrM9c06n7D0JFmt
c9R5dWILE28lE9A6JUeNolNfas6OhKN7TFJLgdchcMoSXIv1CpU+PIBgm7qJ/Bc=
=gKYK
-----END PGP SIGNATURE-----
