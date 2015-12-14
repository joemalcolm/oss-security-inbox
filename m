X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1155" "Monday" "14" "December" "2015" "14:04:02" "-0500" "Jan Schaumann" "jschauma@netmeister.org" "<20151214190402.GZ18118@netmeister.org>" "27" "[oss-security] Chef: knife bootstrap leaks validator privkey into system logs" nil nil nil "12" "2015121419:04:02" "[oss-security] Chef: knife bootstrap leaks validator privkey into system logs" (number mark "U       jschauma@net Dec 14   27/1155  " thread-indent "\"[oss-security] Chef: knife bootstrap leaks validator privkey into system logs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9575 invoked by uid 550); 14 Dec 2015 19:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1374 invoked from network); 14 Dec 2015 19:04:14 -0000
Date: Mon, 14 Dec 2015 14:04:02 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <20151214190402.GZ18118@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Chef: knife bootstrap leaks validator privkey into system logs

Hello,

In Opscode Chef, when you 'knife bootstrap' a node, the validator.pem
private RSA key is leaked into the system logs /var/log/messages.

The reason is that 'knife bootstrap' constructs a shell command to run
on the node from a template, filling the private key in as a here-doc
(see
https://github.com/chef/chef/blob/81419cc617091461b8a78c93276e00a7276484df/lib/chef/knife/bootstrap/templates/chef-full.erb#L193).
This command is invoked via (more or less):

ssh node 'sudo sh -c full-command-goes-here'

As a result, the private key ends up on the command-line, in the process
table, and, by way of sudo command logging on most reasonable systems,
in the system logs. The logs may also be forwarded to other places
(possibly in clear text), and possible stored on other systems, making
the private validator key not quite so private any more.

This issue was reported to Opscode here:
https://github.com/chef/chef/issues/3871

Opscode has elected not to request a CVE for this issue (nor fixed it;
a work-around using so-called validatorless bootstrapping exists).  I
think it would still be useful to have a CVE identifier for this issue.

-Jan
