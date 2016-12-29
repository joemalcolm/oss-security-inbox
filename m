X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2063" "Thursday" "29" "December" "2016" "20:29:40" "+0000" "Simon McVittie" "smcv@debian.org" "<20161229202940.ma4dsc7qrj57nghk@perpetual.pseudorandom.co.uk>" "55" "[oss-security] ikiwiki: CVE-2016-9645 (incomplete fix for CVE-2016-10026), CVE-2016-9646 (commit metadata forgery)" nil nil nil "12" "2016122920:29:40" "[oss-security] ikiwiki: CVE-2016-9645 (incomplete fix for CVE-2016-10026), CVE-2016-9646 (commit metadata forgery)" (number mark "U       smcv@debian. Dec 29   55/2063  " thread-indent "\"[oss-security] ikiwiki: CVE-2016-9645 (incomplete fix for CVE-2016-10026), CVE-2016-9646 (commit metadata forgery)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3247 invoked by uid 550); 29 Dec 2016 20:29:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3229 invoked from network); 29 Dec 2016 20:29:58 -0000
Date: Thu, 29 Dec 2016 20:29:40 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161229202940.ma4dsc7qrj57nghk@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] ikiwiki: CVE-2016-9645 (incomplete fix for CVE-2016-10026),
 CVE-2016-9646 (commit metadata forgery)

ikiwiki is a static site generator with some dynamic features,
used for wikis, blogs and other websites.

Version 3.20161229 fixes two minor vulnerabilities in earlier
ikiwiki versions:

----

CVE-2016-9645: authorization bypass

Reference: https://ikiwiki.info/security/#cve-2016-9645
Vulnerable versions: >= 3.20161219 but < 3.20161229
Fixed versions: >= 3.20161229

intrigeri discovered that on sites with the git and recentchanges
plugins and the CGI interface enabled, the revert links on the
RecentChanges page could revert changes on a page the logged-in user
cannot legitimately edit, if the change being reverted was made before
the page was renamed from a location that the logged-in user *could*
legitimately edit. CVE-2016-10026 was assigned to this vulnerability,
and it was intended to be fixed in 3.20161219.

The changes that were intended to address this in 3.20161219 were not
sufficient when ikiwiki is used with git versions before 2.8.0rc0.
CVE-2016-9645 was assigned to this incomplete fix. In version
3.20161229, the incomplete fix has been reverted and replaced with a
different solution that should work for all git versions.

----

CVE-2016-9646: commit metadata forgery

Reference: https://ikiwiki.info/security/#cve-2016-9646
Vulnerable versions: < 3.20161229
Fixed versions: >= 3.20161229

CGI::FormBuilder->field has a context-dependent API, similar to
the CGI->param API that led to Bugzilla's CVE-2014-1572. Parts of
ikiwiki incorrectly called this method in list context when a scalar
result, which could lead to two relatively minor attacks:

* In the comments plugin, an attacker who was able to post a comment
  could give it a user-specified author and author-URL even if the wiki
  configuration did not allow for that, by crafting multiple values
  to other fields.
* In the editpage plugin, an attacker who was able to edit a page
  could potentially forge commit authorship by crafting multiple values
  for the rcsinfo field.

----

Thanks to the Debian security team for allocating CVE IDs for these.

Regards,
    smcv
